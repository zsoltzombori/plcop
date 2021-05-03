
%%- -*-Mode: Prolog;-*--------------------------------------------------

:- set_prolog_flag(stack_limit, 30 000 000 000).
:- set_prolog_stack(global, limit(10 000 000 000)).
:- set_prolog_stack(trail,  limit(10 000 000 000)).
:- set_prolog_stack(local,  limit(10 000 000 000)).

:- load_foreign_library('foreign/xgb.so').
:- use_module(hashtbl/prolog/nb_hashtbl, [empty_nb_hashtbl/1,
                                          empty_nb_hashtbl/2,
                                          nb_hashtbl_get/3,
                                          nb_hashtbl_set/3,
                                          nb_hashtbl_to_list/2
                                         ]).

:- [features].
:- [leancop_step].
:- [produce_leancop_proof].
:- [montecarlo_aux].
:- use_module(library(http/json)).
:- [embed].

:- dynamic mc_param/2.
:- dynamic xgb_handle/2.
:- dynamic proof_found/1.
:- dynamic proof_written/1.
:- dynamic clause_stream/1.
:- dynamic proof_file/1.

:- set_random(seed(111)).

%% State=state(tableau(Goal,Path,Lem,Todos,Subst,Proof), Actions, Result)

:- dynamic rootnode/1.
rootnode(0).

mc_run:-
    % File= 'theorems/peano1plus2.p',
    % File= 'theorems/pelletier21.p',
    File= 'theorems/a.p',
    % File= "theorems/BushyProblems/finset_1__t18_finset_1.p",
    Params = [guided(0),cp(2),sim_depth(0),playout_count(30),min_visit_count(1),n_dim(20),playout_time(30), leancop_settings([conj,nodef])],
    ValueDir = "results/stage0/train_value",
    PolicyDir = "results/stage0/train_policy",
    ClauseDir = "results/stage0/clause",
    ProofDir = "results/stage0/proofs",
    mc_run(File,Params,ValueDir,PolicyDir,ClauseDir,ProofDir,_Time).

mc_run(File,Params,ValueDir,PolicyDir,ClauseDir,ProofDir,ExecutionTime):-
    statistics(runtime, [TimeSinceStart | [_TimeSinceLastCall]]),
    retractall(mc_param(_,_)),
    findall(P,(
                member(P,Params),
                P=..[Name,Val],
                asserta(mc_param(Name,Val))            
            ), _
           ),
    ( mc_param(proof_format, ProofFormat) -> assert(proof(ProofFormat))),

    b_setval(file, File),   %TODO super ugly
    get_full_path(ClauseDir, File, ClauseFile),
    get_full_path(ProofDir, File, ProofFile),
    open(ClauseFile, write, ClauseStream),
    asserta(clause_stream(ClauseStream)),
    asserta(proof_file(ProofFile)),
            
    ( mc_param(guided,2) ->     % load c interface to xgboost
      mc_param(n_features, N_features),
      xgb:set_max_fea(N_features),
      mc_param(value_modelfile,ValueModelFile),
      xgb:predictor(ValueModelFile,ValueHandle),
      assert(xgb_handle(value,ValueHandle)),
      mc_param(policy_modelfile,PolicyModelFile),
      xgb:predictor(PolicyModelFile,PolicyHandle),
      assert(xgb_handle(policy,PolicyHandle))
    ; true
    ),

    
    mc_param(playout_count,PlayoutCount),
    mc_init(File,ChildHash,ParentHash,NodeHash,FHash), !,
    op( 700, xfx, =), 

    %% impose time limit on mc playout
    mc_param(playout_time,Time),
    mc_playout_times(PlayoutCount,ChildHash,ParentHash,NodeHash,FHash,Time),

    flag(nodecount, NC, NC),
    format("Created ~d nodes\n", [NC]), !,

    flag(inference_cnt, IC, IC),
    format("Performed ~d inferences\n", [IC]),

    close(ClauseStream),

    collect_training_data(NodeHash, ChildHash, ParentHash, FHash, File, ValueDir, PolicyDir),
    
    %% show proof in the current root
    %% rootnode(CurrentRoot), !,
    %% vis_proof(CurrentRoot,NodeHash),

    flag(entropy_cnt, Entropy_cnt, Entropy_cnt),
    flag(entropy_sum, Entropy_sum, Entropy_sum),
    flag(entropyN_sum, EntropyN_sum, EntropyN_sum),
    ( Entropy_cnt = 0 -> true
    ; Entropy_avg is Entropy_sum / Entropy_cnt,
      EntropyN_avg is EntropyN_sum / Entropy_cnt,
      format("Average entropy: ~w [~w]\n", [Entropy_avg, Entropy_cnt]),
      format("Average normalised entropy: ~w [~w]\n", [EntropyN_avg, Entropy_cnt])
    ),
    
    statistics(runtime, [NewTimeSinceStart | [_ExecutionTime]]),
    ExecutionTime is NewTimeSinceStart - TimeSinceStart,

    ET is ExecutionTime / 1000,
    format("Execution time: ~w sec\n", [ET]), !.



% +File: input problem file
% -ChildHash: [StateId,ActionId] -> StateId
% -ParentHash: StateId -> StateId
%% -NodeHash: StateId -> [State,Prob,VisitCount,Value,ChildProbs]
mc_init(File,ChildHash,ParentHash,NodeHash,FHash):-
    empty_nb_hashtbl(ChildHash, 200000),
    empty_nb_hashtbl(ParentHash, 200000),
    empty_nb_hashtbl(NodeHash, 200000),
    empty_nb_hashtbl(FHash),

    mc_param(leancop_settings,Settings),
    logic_init(File,Settings,StartState0),
    get_value_policy_state(StartState0, FHash, StartState, Value, ChildProbs),

    nb_hashtbl_set(NodeHash, 0, [StartState, 1, 1, Value, ChildProbs]),
    nb_hashtbl_set(ChildHash, 0, []),
    flag(nodecount, _, 1),

    mc_check_proof_found(0, StartState, ParentHash).


mc_playout_times(0,_,_,_,_,_):- !.
mc_playout_times(N,_,_,_,_,Time):-
    Time < 0, !,
    format("Timeout with ~d playouts remaining\n", [N]).
mc_playout_times(N,_,_,_,_,_):-
    flag(inference_cnt, IC, IC),
    mc_param(inference_limit, IL),
    IC >= IL, !,
    format("Inference limit reached with ~d playouts remaining\n", [N]).
mc_playout_times(N,ChildHash,ParentHash,NodeHash,FHash,Time):-
    statistics(runtime, [_ | [_]]),

    ( proof_found(_) -> FoundBefore=1 ; FoundBefore=0 ),
    mc_playout(ChildHash,ParentHash,NodeHash,FHash),
    
    ( (N rem 500) =:= 0 ->
      flag(inference_cnt, IC, IC),
      format("~w playouts remaining, ~w sec remaining, after ~w inferences.\n",[N, Time, IC]),
      flag(tree_depth, D, D), format("Max tree depth: ~w\n", [D])
    ; true
    ),
    N1 is N-1,

    ( FoundBefore=0, proof_found(_) ->
      mc_param(playout_count,TotalPlayouts),
      Steps is TotalPlayouts - N,
      format("\nFIRST PROOF FOUND AFTER ~w STEPS\n\n", [Steps])
    ; true
    ),

    
    ( mc_param(bigstep_frequency,BF), (N1 rem BF) =:= 0 ->
      rootnode(CurrentRoot), !,
      ( mc_find_bigstep(CurrentRoot,ChildHash,NodeHash,NextRoot) ->
        format("Moving root from ~d to ~d\n",[CurrentRoot,NextRoot]),
        asserta(rootnode(NextRoot))
      ; mc_param(return_to_root, 1) ->
        format("Unable to move root from ~d, returning to the beginning\n",[CurrentRoot]), asserta(rootnode(0))
      ; format("Unable to move root from ~d\n",[CurrentRoot])
      )
    ; true
    ),
    
    statistics(runtime, [_ | [ExecutionTime]]),
    Time2 is Time - ExecutionTime/1000,
    mc_playout_times(N1,ChildHash,ParentHash,NodeHash,FHash,Time2).

mc_playout(ChildHash,ParentHash,NodeHash,FHash):-

    %% vis_mc(NodeHash,ChildHash),
    
    rootnode(StartId), !,
    mc_find_unexpanded(StartId,ChildHash,NodeHash,ExpandId,UnexpandedActionIds, 0, Steps),
    flag(inference_cnt, X, X+Steps+1), % increase inference count to mimic rlcop inference count
    flag(tree_depth, D, max(D,Steps)),

    nb_hashtbl_get(NodeHash,ExpandId,[State,_,_,_,ChildProbs]),
    State=state(_,_,Result),

    ( mc_param(max_mcts_depth, MaxDepth), MaxDepth > 0, Steps > MaxDepth -> Reward = 0 % depth limit on mcts, pretend that selected node is a failed node
    ; Result ==  1 -> Reward = 1
    ; Result == -1 -> Reward = 0
    ; get_largest_index(UnexpandedActionIds, ChildProbs, ActionIndex),
      mc_expand_node(ExpandId,ChildHash,ParentHash,NodeHash,FHash,ActionIndex,Reward)    
    ),
    mc_backpropagate(ExpandId,Reward,ParentHash,NodeHash).



get_largest_index([I|Is], Probs, Selected):-
    nth0(I,Probs,P),
    get_largest_index(Is, Probs, I, P, Selected).
get_largest_index([], _, Selected, _, Selected).
get_largest_index([I|Is], Probs, AccI, AccP, Selected):-
    nth0(I, Probs, P),
    ( P > AccP -> get_largest_index(Is, Probs, I, P, Selected)
    ; get_largest_index(Is, Probs, AccI, AccP, Selected)
    ).


mc_backpropagate(Id,Reward,ParentHash,NodeHash):-
    nb_hashtbl_get(NodeHash,Id,[State,Prob,VCount,Value,ChildProbs]),
    VCount1 is VCount + 1,
    Value1 is Value + Reward,
    nb_hashtbl_set(NodeHash,Id,[State,Prob,VCount1,Value1,ChildProbs]),
    ( nb_hashtbl_get(ParentHash, Id, ParentId) -> mc_backpropagate(ParentId,Reward,ParentHash,NodeHash)
     ; true
    ).


mc_expand_node(ParentId,ChildHash,ParentHash,NodeHash,FHash,ActionIndex,ChildValue):-
    nb_hashtbl_get(NodeHash,ParentId,[ParentState,_,_,_,ChildProbs]),
    copy_term(ParentState,ParentState2),
    logic_step(ParentState2,ActionIndex,ChildState0),
    get_value_policy_state(ChildState0, FHash, ChildState, ChildValue, ChildChildProbs),
    nth0(ActionIndex, ChildProbs, ChildProb),
    flag(nodecount, ChildId, ChildId+1),

    nb_hashtbl_get(ChildHash, ParentId, Children),
    nb_hashtbl_set(ChildHash, ParentId, [ActionIndex-ChildId|Children]),
    nb_hashtbl_set(ChildHash, ChildId, []),
    nb_hashtbl_set(ParentHash,ChildId,ParentId),
    nb_hashtbl_set(NodeHash,ChildId,[ChildState, ChildProb, 1, ChildValue, ChildChildProbs]),

    %% if we found a proof, display it
    mc_check_proof_found(ChildId, ChildState, ParentHash).

mc_check_proof_found(Id, State, ParentHash):-
    State = state(Tableau, _, 1), \+ proof_found(Id), !,

    assert(proof_found(Id)),      
    tab_comp(proof, Tableau, Proof),
    reverse(Proof,ProofRev),
    proof_file(ProofFile),
      
    writeln("SUCCESS"),
    print_my_proof(ProofRev, orig),
      
    produce_leancop_proof(ProofRev, ProofFile, ProofResult),

    ( ProofResult = 1 ->
      ( ( mc_param(save_all_proofs, 1) ; \+ proof_written(Id) ) ->
        once(clause_stream(ClauseStream)),
        proof_clauses(ProofRev, ClauseStream)
      ; true
      ),
      assert(proof_written(Id))
    ; true
    ),

    %% ensure that nodes leading to this proof are considered bigstep nodes (we will extract training data from them)
    mc_backpropagate_bigstep(Id, ParentHash).
mc_check_proof_found(_, _, _).
    

mc_backpropagate_bigstep(Id,ParentHash):-
    ( rootnode(Id) -> true ; assertz(rootnode(Id)) ),
    ( nb_hashtbl_get(ParentHash, Id, ParentId) -> mc_backpropagate_bigstep(ParentId,ParentHash)
    ; true
    ).




% +State: current state
% -Value: value found at the end of simulation
%% mc_simulate(State,FHash,Value):-
%%     guidance_get_value(State,FHash,Value).
%% mc_param(sim_depth,SimDepth),
%% findall(V, mc_simulate(SimDepth,State,FHash,V), [Value]).
% mc_simulate(Depth,State,FHash,Value):-
%     State = state(_,_,_,Actions,_,_,_),
%     (  (Actions == [] ; Depth == 0) -> guidance_get_value(State,FHash,Value)
%     ; guidance_select_action(State,FHash,ActionIndex),
%        logic_step(State,ActionIndex,NextState),
%        Depth1 is Depth-1,
%        mc_simulate(Depth1,NextState,FHash,Value)
%     ).
    
                                          
% takes state id Id, finds a node Id2 according to UCT that has unexpanded actions Unexpanded
% +Id: current node id
% -Id2: next node id to expand
% -Steps: number of steps down the tree until a leaf was selected
mc_find_unexpanded(Id,ChildHash,NodeHash,Id2,UnexpandedActionIds, Acc, Steps):-
    nb_hashtbl_get(ChildHash, Id, ChildPairs),
    nb_hashtbl_get(NodeHash,Id,[State,_,VisitCount,_,_]),
    action_count(State,ActionCount),
    length(ChildPairs,L),
    (  ActionCount == 0 -> Id2=Id, UnexpandedActionIds=[], Steps = Acc
    ;  mc_param(po_search,1) ->
       ( L < ActionCount -> Id2=Id, missing_actions(ActionCount, ChildPairs, UnexpandedActionIds), Steps=Acc
       ; mc_po_select_child(Id,ChildHash,NodeHash,1, SelectedId),
         Acc1 is Acc + 1,
         mc_find_unexpanded(SelectedId,ChildHash,NodeHash,Id2,UnexpandedActionIds, Acc1, Steps)
       )
    ;  mc_ucb_select_child(VisitCount,ChildPairs,NodeHash,SelectedId,UCBScore),
       ( L < ActionCount,
         mc_ucb_score_unexplored(VisitCount, ActionCount,UCBUnexploredScore),
         %% format(" Unexplored UCB: ~w\n", [UCBUnexploredScore]),
         UCBUnexploredScore > UCBScore ->
         Id2=Id, missing_actions(ActionCount,ChildPairs,UnexpandedActionIds), Steps=Acc
       ; Acc1 is Acc + 1,
         mc_find_unexpanded(SelectedId,ChildHash,NodeHash,Id2,UnexpandedActionIds, Acc1, Steps)
       ), !
    ;  Id2=Id, missing_actions(ActionCount,ChildPairs,UnexpandedActionIds), Steps=Acc
    ).

%% find the id of the child with the largest ucb_score
mc_find_bigstep(Id, ChildHash, NodeHash, Id2):-
    mc_param(po_step,1), !,
    mc_po_select_child(Id, ChildHash, NodeHash, 0, Id2).

mc_find_bigstep(Id,ChildHash,NodeHash,Id2):-
    nb_hashtbl_get(ChildHash, Id, ChildPairs),
    ChildPairs = [_|_],
    nb_hashtbl_get(NodeHash,Id,[_,_,VisitCount,_,_]),
    % vis_children(ChildPairs, NodeHash),
    mc_ucb_select_child(VisitCount,ChildPairs,NodeHash,Id2, _Score).



%% +VisitCount
%% +ExpandedIdPairs: ActionId-StateId pair list
%% +NodeHash
%% -SelectedId: StateId from ExpandedIdPairs having the highest ucb score
%% -SelectedScore: the largest ucb score
mc_ucb_select_child(VisitCount,ExpandedIdPairs,NodeHash,SelectedId,SelectedScore):-
    mc_ucb_select_child(ExpandedIdPairs, VisitCount, NodeHash, -1, -1000, SelectedId,SelectedScore).
mc_ucb_select_child([], _, _, SelectedId, SelectedScore, SelectedId, SelectedScore).
mc_ucb_select_child([_-ChildId|RestPairs], VisitCount, NodeHash, AccId, AccScore, SelectedId, SelectedScore):-
    nb_hashtbl_get(NodeHash,ChildId,[_,ChildProb,ChildVisitCount,ChildValue,_]),
    mc_ucb_score(VisitCount,ChildProb,ChildVisitCount,ChildValue,ChildScore),

    (  ChildScore > AccScore -> mc_ucb_select_child(RestPairs, VisitCount, NodeHash, ChildId, ChildScore, SelectedId, SelectedScore)
    ;  ChildScore = AccScore ->
       ( random(2) =:= 0 -> mc_ucb_select_child(RestPairs, VisitCount, NodeHash, ChildId, ChildScore, SelectedId, SelectedScore)
       ; mc_ucb_select_child(RestPairs, VisitCount, NodeHash, AccId, AccScore, SelectedId, SelectedScore)
       )
    ; mc_ucb_select_child(RestPairs, VisitCount, NodeHash, AccId, AccScore, SelectedId, SelectedScore)
    ).

mc_po_select_child(Id, ChildHash, NodeHash, IsProb, SelectedId):-
    nb_hashtbl_get(ChildHash, Id, ChildPairs),
    nb_hashtbl_get(NodeHash,Id,[State,_,VisitCount,_,ChildProbs]),
    action_count(State, ActionCount),
    mc_child_values(ChildPairs, ActionCount, NodeHash, ChildValues),
    mc_param(cp,Cp),
    mc_param(alpha_max_error,MaxError),
    p_bar(ActionCount, VisitCount, Cp, MaxError, ChildProbs, ChildValues, Probs),
    ( IsProb = 0 -> argmax(Probs, Index)                    
    ; random_index(Probs, Index)
    ),
    member(Index-SelectedId,ChildPairs), !.



%% % select_largest_score(+Scores,-SelectedId,-SelectedScore)
%% % +Score: StateId-Score pair list
%% % -SelectedId: StateId with the largest Score, as well as the Score
%% % fails if Scores is empty
%% mc_select_largest_score([Id-Score|Scores],SelectedId,SelectedScore):-
%%     mc_select_largest_score(Scores,Id,Score,SelectedId,SelectedScore).
%% mc_select_largest_score([],AccId,AccScore,AccId, AccScore).
%% mc_select_largest_score([Id-Score|Scores],AccId,AccScore,SelectedId, SelectedScore):-
%%     (  Score > AccScore -> mc_select_largest_score(Scores,Id,Score,SelectedId,SelectedScore)
%%     ;  Score = AccScore ->
%%        ( random(2) =:= 0 -> mc_select_largest_score(Scores,Id,Score,SelectedId,SelectedScore)
%%        ; mc_select_largest_score(Scores,AccId,AccScore,SelectedId,SelectedScore)
%%        )
%%      ; mc_select_largest_score(Scores,AccId,AccScore,SelectedId,SelectedScore)
%%     ).
                         
% +AC: ActionCount
% +Actions: already explored ActionId-ChildId pairs
% -Missing: list of ActionId
missing_actions(AC,Actions,Missing):-
    AC1 is AC-1,
    findall(M, (
                between(0,AC1,M),
                \+member(M-_,Actions)
            ), Missing
           ).

% upper confidence bounds for trees
% mc_ucb_score(+ParentVisitCount,+ChildProb,+VisitCount,+Value,-Score)
mc_ucb_score(ParentVisitCount, ChildProb, VisitCount, Value, Score):-
    mc_param(cp, Cp),
    Score is Value / VisitCount + Cp * ChildProb * sqrt(log(ParentVisitCount-1)/VisitCount).

mc_ucb_score_unexplored(1, _ActionCount, 10000):- !.
mc_ucb_score_unexplored(_, 0, 0):- !.
mc_ucb_score_unexplored(ParentVisitCount, ActionCount, Score):-
    mc_param(cp,Cp),
    Score is Cp / ActionCount * sqrt(log(ParentVisitCount-1)).



% mc_select_most_visited(+ChildPairs,+NodeHash,-TopPair).
% +ChildPairs is a list of ActionId-ChildId
% -TopPairs is a list containing a single member of ChildPairs with the highest visit count.
% If ChildPairs is empty, ToPairs is []
mc_select_most_visited([],_,[]).
mc_select_most_visited([ActionId-ChildId|ChildPairs],NodeHash,TopPairs):-
    nb_hashtbl_get(NodeHash,ChildId,[_,_,VC,_,_]),
    mc_select_most_visited(ChildPairs,NodeHash,ActionId-ChildId,VC,TopPairs).

mc_select_most_visited([],_,Top,_,[Top]).
mc_select_most_visited([ActionId-ChildId|ChildPairs],NodeHash,TopPairAcc,TopVCAcc,TopPairs):-
    nb_hashtbl_get(NodeHash,ChildId,[_,_,VC,_,_]),
    (  VC > TopVCAcc -> mc_select_most_visited(ChildPairs,NodeHash,ActionId-ChildId,VC,TopPairs)
     ; mc_select_most_visited(ChildPairs,NodeHash,TopPairAcc,TopVCAcc,TopPairs)
    ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

collect_training_data(NodeHash, ChildHash, ParentHash, FHash, File, ValueDir, PolicyDir):-    
    once(mc_param(output_format, OutputFormat)),
    ( sub_string(OutputFormat, _, _, _, "gnn") ->
      mc_training_data(NodeHash, ChildHash, ParentHash, gnn, ValueG, PolicyG),
      writeln("GNN training data collected"),
      save_training_data(File, FHash, ValueDir, PolicyDir, ValueG, PolicyG, gnn),
      writeln("GNN Training data saved")
    ; true
    ),
    ( sub_string(OutputFormat, _, _, _, "svmlight") ->
      mc_training_data(NodeHash, ChildHash, ParentHash, svmlight, ValueS, PolicyS),
      writeln("SVMlight training data collected"),
      save_training_data(File, FHash, ValueDir, PolicyDir, ValueS, PolicyS,svmlight),
      writeln("SVMlight Training data saved")
    ; true
    ).
    
    %% TODO sub_string(OuputFormat, _, _, _, "string")) ->

% Policy: [state,action,{#child_visit_count/#parent_visit_count}] triples
% Value: [state, {value/visit_count}] pairs
mc_training_data(NodeHash, ChildHash, ParentHash, OutputFormat, Value, Policy):-
    mc_collect_training_nodes(NodeHash, ChildHash, ParentHash, BigstepNodesValue, BigstepNodesPolicy),
    length(BigstepNodesValue, BsVLen),
    format("Bigstep Nodes for value: ~d, ~w\n",[BsVLen,BigstepNodesValue]),
    length(BigstepNodesValue, BsPLen),
    format("Bigstep Nodes for policy: ~d, ~w\n",[BsPLen,BigstepNodesPolicy]),
      
    ( OutputFormat = gnn ->
      mc_training_data_gnn(BigstepNodesPolicy, NodeHash, ChildHash, Policy),
      mc_training_data_gnn(BigstepNodesValue, NodeHash, ChildHash, Value)
    ; mc_training_data(BigstepNodesPolicy, NodeHash, ChildHash, [], [], _Value, Policy),
      mc_training_data(BigstepNodesValue, NodeHash, ChildHash, [], [], Value, _Policy)        
    ).

mc_collect_training_nodes(NodeHash, ChildHash, ParentHash, BigstepNodesValue, BigstepNodesPolicy):-
    findall(Id, (
                rootnode(Id),
                nb_hashtbl_get(NodeHash,Id,[State,_,_,_,_]),
                action_count(State, AC), AC > 0
            ), BigstepNodes),
    sort(BigstepNodes, BigstepNodesPolicy),
    ( mc_param(value_from_bigstep_neighbours, 1), proof_found(_) ->
      extend_nodes_with_siblings(BigstepNodesPolicy, ChildHash, ParentHash, BigstepNodesExt),
      findall(Id, (
                  member(Id, BigstepNodesExt),
                  nb_hashtbl_get(NodeHash,Id,[State,_,_,_,_]),
                  action_count(State, AC), AC > 0
              ), BigstepNodesExt2),
      sort(BigstepNodesExt2, BigstepNodesValue)
    ; BigstepNodesValue = BigstepNodesPolicy
    ).




mc_training_data_gnn([], _NodeHash, _ChildHash, []).
mc_training_data_gnn([Id|Ids], NodeHash, ChildHash, [D|Data]):-
    nb_hashtbl_get(NodeHash,Id,[State,_,VC,_Val,_ChildProbs]),
    
    Discount = 0.99,
    SuccValue = 1,
    FailValue = 0,
    NoValue = 0,
    training_collect_value(Id, NodeHash, ChildHash, Discount, SuccValue, FailValue, NoValue, Val),

    nb_hashtbl_get(ChildHash, Id, ChildPairs),
    State = state(_, Actions, _),
    findall(Frequency, (
                nth0(ActionId, Actions, _),
                ( member(ActionId-ChildId, ChildPairs) ->
                  nb_hashtbl_get(NodeHash,ChildId,[_,_,VC_child,_,_]),
                  Frequency is VC_child / (VC-1)
                ; Frequency = 0
                )
            ), Freqs
           ),

    state2gnnInput(State, GnnInput),
    python_gnn_prepare(GnnInput, Val, Freqs, D),
    mc_training_data_gnn(Ids, NodeHash, ChildHash, Data).


extend_nodes_with_siblings([], _ChildHash, _ParentHash, []).
extend_nodes_with_siblings([Id|Ids], ChildHash, ParentHash, ExtendedIds):-
    ( nb_hashtbl_get(ParentHash, Id, ParentId) ->
      nb_hashtbl_get(ChildHash, ParentId, ChildPairs),
      findall(NewId, member(_-NewId, ChildPairs), ExtendedIds1),
      append(ExtendedIds1, ExtendedIds2, ExtendedIds)
    ; ExtendedIds = [Id|ExtendedIds2]
    ),
    extend_nodes_with_siblings(Ids, ChildHash, ParentHash, ExtendedIds2).


mc_training_data([], _NodeHash, _ChildHash, Value, Policy, Value, Policy).
mc_training_data([Id|Ids], NodeHash, ChildHash, ValueAcc, PolicyAcc, Value, Policy):-
    nb_hashtbl_get(NodeHash,Id,[State,_,VC,_Val,ChildProbs]),

    %% value data
    %% AvgVal is Val / VC,
    Discount = 0.99,
    SuccValue = 1,
    FailValue = 0,
    NoValue = 0,
    training_collect_value(Id, NodeHash, ChildHash, Discount, SuccValue, FailValue, NoValue, Val0),
    ( Val0 =:= 1 -> Val1 = 3
    ; Val0 =:= 0 -> Val1 = -3
    ; Val1 is min(3,max(-3, log(Val0 / (1-Val0))))
    ),
    ValueAcc1 = [[State,Val1]|ValueAcc],

    %% policy data
    nb_hashtbl_get(ChildHash, Id, ChildPairs),
    action_count(State, ActionCount),
    ( mc_param(po_train,1) ->
      training_collect_policy_po(State, ActionCount, ChildPairs, VC, ChildProbs, NodeHash, CurrPolicy)
    ; training_collect_policy(ActionCount, ChildPairs, State, ActionCount, VC, NodeHash, [], CurrPolicy)
    ),
    append(PolicyAcc,CurrPolicy,PolicyAcc1),
    mc_training_data(Ids, NodeHash, ChildHash, ValueAcc1, PolicyAcc1, Value, Policy).


training_collect_policy(0, _, _, _, _, _, Acc, Acc):- !.
training_collect_policy(ActionId0, ChildPairs, State, ActionCount, VC, NodeHash, Acc, Policy):-
    ActionId is ActionId0 - 1,
    ( member(ActionId-ChildId, ChildPairs) ->
      nb_hashtbl_get(NodeHash,ChildId,[_,_,VC_child,_,_]),
      Frequency is VC_child / (VC-1) * ActionCount,
      LogFrequency is max(-6, log(Frequency)),
      Acc1 = [[State, ActionId, LogFrequency]|Acc]
    ; Acc1 = [[State, ActionId, -6]|Acc] % Training data from never visited branches as well
    %% ; Acc1 = Acc % No training data on this branch
    ),
    training_collect_policy(ActionId, ChildPairs, State, ActionCount, VC, NodeHash, Acc1, Policy).

training_collect_policy_po(State, ActionCount, ChildPairs, VisitCount, ChildProbs, NodeHash, Policy):-
    mc_child_values(ChildPairs, ActionCount, NodeHash, ChildValues),
    mc_param(cp,Cp),
    mc_param(alpha_max_error,MaxError),
    p_bar(ActionCount, VisitCount, Cp, MaxError, ChildProbs, ChildValues, Probs),
    findall([State, ActionId, LogFrequency], (
                member(ActionId-_ChildId, ChildPairs),
                nth0(ActionId, Probs, TargetProb),
                Frequency is TargetProb * ActionCount,
                LogFrequency is max(-6, log(Frequency))
            ), Policy
           ).
                



training_collect_value(Id, NodeHash, ChildHash, Discount, SuccValue, FailValue, NoValue, Value):-
    nb_hashtbl_get(NodeHash,Id,[State,_,_,_,_]),
    State=state(_,_, Result),
    (  Result ==  1 -> Value = SuccValue
    ; Result == -1 -> Value = FailValue
    ;  SuccValue1 is SuccValue * Discount,
       FailValue1 is FailValue * Discount,
       NoValue1 is NoValue *  Discount,
       nb_hashtbl_get(ChildHash, Id, ChildPairs),
       findall(ChildValue, (
                            member(_ActionId-ChildId, ChildPairs),
                            training_collect_value(ChildId, NodeHash, ChildHash, Discount, SuccValue1, FailValue1, NoValue1, ChildValue)
                           ), ChildValues
              ),
       ( max_list(ChildValues, Value) -> true
       ; Value = NoValue
       )
    ).
       
              

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guidance_value_policy(state(_,_,1), _FHash, 1, []):- !.
guidance_value_policy(state(_,_,-1), _FHash, 0, []):- !.
guidance_value_policy(State, _FHash, Value, Probs):-
    mc_param(guided, 0), !,
    default_value(State, Value),
    default_policy(State, Probs).
guidance_value_policy(State, FHash, ValueX, ProbsX):-
    mc_param(model_type, xgboost), !,
    logic_embed(State, FHash, both, EmbStateP, EmbStateV, EmbActions),
    ( mc_param(guided, 1) ->
      mc_param(temperature,Temp),
      python_xgboost_predict(EmbStateV, EmbActions, Temp, V0, P0),
      atom_number(V0, V),
      atom_to_num_list(P0, Probs)
    ; c_xgboost_value(EmbStateV, V),
      c_xgboost_policy(EmbStateP, EmbActions, Probs)
    ),
    goals_length(State, GoalsLength),
    Value0 is 1 / (1 + exp(-V)),
    Value is (Value0 ** 0.5) ** GoalsLength,

    ( mc_param(guidedValue, 0) -> default_value(State, ValueX)
    ; ValueX = Value
    ),
    ( mc_param(guidedPolicy, 0) -> default_policy(State, ProbsX)
    ; ProbsX = Probs
    ).
      
    % format("Value from xgboost: ~w\n", [Value]),
    % format("Probs from xgboost: ~w\n", [Probs]).
guidance_value_policy(State, FHash, Value, Probs):-
    mc_param(model_type, nn), !,
    logic_embed(State, FHash, both, EmbStateP, EmbStateV, EmbActions),
    mc_param(temperature,Temp),
    python_nn_predict(EmbStateV, EmbStateP, EmbActions, Temp, V0, P0),
    atom_number(V0, V),
    atom_to_num_list(P0, Probs),
    goals_length(State, GoalsLength),
    Value0 is 1 / (1 + exp(-V)),
    Value is (Value0 ** 0.5) ** GoalsLength.
    % format("Value from nn: ~w\n", [Value]),
    % format("Probs from nn: ~w\n", [Probs]).
guidance_value_policy(State, _FHash, ValueX, ProbsX):-
    mc_param(model_type, gnn), !,
    state2gnnInput(State, GnnInput),
    once(python_gnn_predict(GnnInput, Value0, Probs0)),
    atom_number(Value0, Value),
    atom_to_num_list(Probs0, Probs),

    ( mc_param(guidedValue, 0) -> default_value(State, ValueX)
    ; ValueX = Value
    ),
    ( mc_param(guidedPolicy, 0) -> default_policy(State, ProbsX)
    ; ProbsX = Probs
    ).


guidance_value_policy_with_swap(state(_,_,1), 0, 1, []):- !.
guidance_value_policy_with_swap(state(_,_,-1), 0, 0, []):- !.
guidance_value_policy_with_swap(State, SwapIndex, Value, Probs):-
    mc_param(guided, 0), !,
    State=state(Tableau, Actions, _Result),
    length(Actions, AC0),
    tab_comp(todos, Tableau, Todos),
    findall(AC, (
                member([G,P,_], Todos),
                valid_actions_filter(G, P, As),
                length(As, AC)
            ), ACs
           ),
    % writeln("Action counts for each goal:"-[AC0|ACs]),
    min_list(ACs, 1, 0, AC0, SwapIndex, _MinValue),
    ( SwapIndex > 0 -> Value=undef, Probs=undef
    ; default_value(State, Value), default_policy(State, Probs)
    ).
guidance_value_policy_with_swap(State, SwapIndex, Value, Probs):-
    mc_param(model_type, gnn), !,
    state2gnnInput_with_swap(State, GnnInputs),
    once(python_gnn_predict_with_swap(GnnInputs, SwapIndex, Value0, Probs0)),
    atom_number(Value0, Value),
    atom_to_num_list(Probs0, Probs).


atom_to_num_list(Atom, List):-
    atom_string(Atom, String),
    split_string(String, ",", "", SubStrings),
    findall(L, (
                member(S, SubStrings),
                number_string(L, S)
            ), List
           ).

min_list([], _, AccIndex, AccValue, AccIndex, AccValue).
min_list([V|Vs], Index, AccIndex, AccValue, MinIndex, MinValue):-
    Index1 is Index + 1,
    ( V < AccValue -> min_list(Vs, Index1, Index, V, MinIndex, MinValue)
    ; min_list(Vs, Index1, AccIndex, AccValue, MinIndex, MinValue)
    ).


%% let reward st tree =
%% match tree.kind with
%% | Won -> 1. | Lost -> 0.
%% | _ ->
%% let logistic v =  1. /. (1. +. exp (0. -. v)) in
%% if !predict_value then ((logistic (Xgb.predict value (state_features st))) ** !value_factor)  ** (float (goals_length st) ** !length_factor)
%% else logistic (3.7 *. exp (-0.05 *. (float (goals_size st))) -. 2.5);;

%% length_factor = 1, value_base = 0.5, value_factor = 0.5

c_xgboost_value(EmbStateV, V):-
    xgb_handle(value,Handle), !,
    xgb:xpredict(Handle,EmbStateV,V).

% taken from RLCoP paper
default_value(State,Value):-
    goals_size(State, S),
    % Value is 0.95 ** S.
    V is 3.7 * exp(-0.05 * S) - 2.5,
    Value is 1 / (1 + exp(-V)).

default_policy(State, Probs):-
    action_count(State,AC),
    Prob is 1 / AC,
    findall(Prob, between(1,AC,_), Probs).


% assumes ext actions come before para actions
% assumes there are no red actions
actions2Clauses(Actions, Lit, Clauses, Mask, Permutation):-
    all_clauses(ExtClauses),
    append(ExtClauses, ExtAllClauseLiterals),
    findall(M, (
                nth0(N, ExtAllClauseLiterals, _),
                ( member(ext(_, _, _, _, _, N), Actions) -> M = 1 ; M=0 )
            ), ExtMask
           ),
    findall(P, (
                member(ext(_, _, _, _, _, Counter), Actions),
                length(Prefix, Counter),
                append(Prefix, _, ExtMask),
                sum_list(Prefix, P)
            ), ExtPermutation
           ),
    
    actions2Clauses_para(Actions, Lit, ParaClauses0, ParaMask),
    once(term2list(ParaClauses0, ParaClauses)),
    length(ExtPermutation, ExtCount),
    length(ParaClauses, ParaCount),
    AC is ExtCount + ParaCount - 1,
    findall(P, between(ExtCount, AC, P), ParaPermutation),

    append(ExtClauses, ParaClauses, Clauses),
    append(ExtMask, ParaMask, Mask),
    append(ExtPermutation, ParaPermutation, Permutation).

actions2Clauses_para([], _, [], []).
actions2Clauses_para([para(Pos, LHS, RHS, Cla1, Dir, _, _)|Actions], Lit0, [Clause|Clauses], Mask):-
    !,
    copy_term(Lit0, Lit),
    position(Lit, Pos, Term),
    ( Dir = l2r -> LHS = Term, RHS = To
    ; LHS = To, RHS = Term
    ),
    replace_term_in_pos(Lit, Pos, To, Lit1),
    neg_lit(Lit, NegLit),
    Clause = [NegLit, Lit1|Cla1],

    findall(0, member(_, [Lit1|Cla1]), MaskZeros),
    append([1|MaskZeros], MaskRest, Mask),

    actions2Clauses_para(Actions, Lit0, Clauses, MaskRest).
actions2Clauses_para([_|Actions], Lit0, Clauses, Mask):-
    actions2Clauses_para(Actions, Lit0, Clauses, Mask).

state2gnnInput(State, GnnInput):-
    State=state(Tableau, Actions, _Result),
    tab_comp(goal, Tableau, Goal),
    tab_comp(path, Tableau, Path),
    tab_comp(todos, Tableau, Todos),
    goals_list(Todos, [Goal], AllGoals), append(AllGoals, AllGoals1),
    goal2gnnInput(Actions, Goal, Path, AllGoals1, GnnInput).
    

state2gnnInput_with_swap(State, GnnInputList):-
    State=state(Tableau, _Actions, _Result),
    tab_comp(goal, Tableau, Goal),
    tab_comp(path, Tableau, Path),
    tab_comp(todos, Tableau, Todos),
    goals_list(Todos, [Goal], AllGoals), append(AllGoals, AllGoals1),
    state2gnnInput_with_swap2([[Goal, Path, []]|Todos], AllGoals1, GnnInputList).

state2gnnInput_with_swap2([], _, []).
state2gnnInput_with_swap2([[Goal, Path, Lem]|Todos], AllGoals, GnnInputList):-
    ( Goal = [] -> state2gnnInput_with_swap2(Todos, AllGoals, GnnInputList)
    ; Goal = [CurrLit|Goal1] ->
      valid_actions_filter([CurrLit], Path, Actions),
      goal2gnnInput(Actions, Goal, Path, AllGoals, GnnInput),
      GnnInputList = [GnnInput|GnnInputList1],
      state2gnnInput_with_swap2([[Goal1, Path, Lem]|Todos], AllGoals, GnnInputList1)
    ).

goal2gnnInput(Actions, Goal, Path, AllGoals, GnnInput):-
    Goal = [CurrLit|_],
    actions2Clauses(Actions, CurrLit, Clauses, Mask, Perm),
    once(term2list(CurrLit, CurrLit1)),
    once(term2list(AllGoals,AllGoals1)),
    once(term2list(Path,Path1)),
    GnnInput = [CurrLit1, Path1, AllGoals1, Clauses, Mask, Perm].

      


c_xgboost_policy(EmbStateP, EmbActions, Probs):-
    xgb_handle(policy,Handle), % c
    mc_param(temperature,Temp),
    findall(ExpScore, (
                member(Action,EmbActions),
                append(EmbStateP,Action,GuidanceInput),
                xgb:xpredict(Handle,GuidanceInput,Score),
                ExpScore is exp(Score/Temp)
            ), ExpScores
           ),
    sum_list(ExpScores,ExpScoresSum),
    findall(Prob, (
                member(E,ExpScores),
                Prob is E / ExpScoresSum
            ), Probs
           ).
            

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% calls leancop_step.pl
logic_init(File,Settings,NextState):-
    % set_flag(logic_steps,0),
    init_pure(File,Settings,NextState).
logic_step(State,ActionIndex,NextState):-
    step_pure(ActionIndex,State,NextState,_), !.
    % flag(logic_steps,Steps,Steps+1),
    % (  NextState=state([success],_Path,_Lem,_Actions,_Todos,_Proof,_Result) ->
    %        format("Found proof in ~d steps\n", [Steps])
    %  ; true
    % ).

                             

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

get_value_policy_state(State0, FHash, State, Value, Probs):-
    ( mc_param(swap,1) -> % select the current open literal
      guidance_value_policy_with_swap(State0, SwapIndex, Value0, Probs0),
      ( SwapIndex > 0 ->
        action_count(State0, AC),
        ActionIndex is AC + SwapIndex,
        logic_step(State0, ActionIndex, State),
        guidance_value_policy(State, FHash, Value, Probs)
      ; State = State0, Value = Value0, Probs = Probs0
      )
    ; State = State0,
      guidance_value_policy(State, FHash, Value, Probs)
    ),

    ( Probs = [_|_] ->
      entropy(Probs, Entropy),
      entropyN(Probs,EntropyN),
      flag(entropy_cnt, X, X+1),
      flag(entropy_sum, Y, Y+Entropy),
      flag(entropyN_sum, Z, Z+EntropyN)
    ; true
    ).

entropyN([], 1):- !.
entropyN([_], 1):- !.
entropyN(Probs, Entropy):-
    length(Probs, Len),
    entropy(Probs, Entropy0),
    Entropy is Entropy0 / log(Len).

entropy(Probs, Entropy):-
    entropy(Probs, 0, Entropy).
entropy([], Entropy, Entropy).
entropy([P|Probs], Acc, Entropy):-
    Acc1 is Acc -P * log(P),
    entropy(Probs, Acc1, Entropy).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% action_count(+State,-ActionCount).
action_count(state(_, Actions, _), AC):-
    length(Actions,AC).

    
vis_hash(Name,Hash):-
    nb_hashtbl_to_list(Hash,List),
    writeln(Name),
    print_list(List,"   ").

print_list([],_).
print_list([L|Ls],Prefix):-
    format('~w ~w\n',[Prefix,L]),
    print_list(Ls,Prefix).

vis_children(ChildPairs, NodeHash):-
    findall(Index-Id, (
                       member(Index-Id,ChildPairs),
                       nb_hashtbl_get(NodeHash,Id,[State, ChildProb, _VC, _Value, _ChildProbs]),
                       State=state(Tableau, _, _),
                       tab_comp(goal, Tableau, Goal),
                       format("~d-~d (~w) goal ~w\n", [Index, Id, ChildProb, Goal])
                      ), _
           ).



vis_proof(Id, NodeHash):-
    nb_hashtbl_get(NodeHash,Id,[State, _, _VC, _Value, _]),
    State=state(Tableau, _, _),
    tab_comp(proof, Tableau, Proof),

    %% writeln("Knowledge base"),
    %% print_kb(),
    format("\nProof attempt leading to node ~d:\n",[Id]),
    reverse(Proof,ProofRev),
    print_my_proof(ProofRev, orig).


vis_mc(NodeHash,ChildHash):-
    writeln("------------------"),
    Id=0,
    vis_mc(Id,"",NodeHash,ChildHash),
    writeln("------------------").
vis_mc(Id,Indent,NodeHash,ChildHash):-
    nb_hashtbl_get(NodeHash, Id, [State, Prob, VC, Value, ChildProbs]),
    format("~w~w: prob (~f), visit (~d), value(~f), childProbs(~w)\n",[Indent,Id,Prob,VC,Value, ChildProbs]),

    action_count(State,ActionCount),
    mc_ucb_score_unexplored(VC, ActionCount,UCBUnexploredScore),
    format("~wUnexplored score ~f\n", [Indent, UCBUnexploredScore]),


    string_concat(Indent," ", Indent2),
    nb_hashtbl_get(ChildHash, Id, ChildPairs),
    findall(ChildId, (
                      member(ActionId-ChildId, ChildPairs),
                      nb_hashtbl_get(NodeHash, ChildId, [_ChildState, ChildProb, ChildVC, ChildValue, _]),
                      mc_ucb_score(VC, ChildProb, ChildVC, ChildValue, ChildScore),
                      format("~wAction ~d, score: ~f \n", [Indent2, ActionId, ChildScore]),

                      vis_mc(ChildId,Indent2,NodeHash,ChildHash)
                     ), _ChildIds
           ).


% visualize one branch of an MC tree
vis_path_states(Path,NodeHash,ChildHash):-
    format("\n\nShowing MC tree along path ~w\n",[Path]),
    Id=0,
    vis_path_states(Path,Id,NodeHash,ChildHash).
vis_path_states([],Id,NodeHash,_ChildHash):-
    nb_hashtbl_get(NodeHash,Id,[State,_,VC,Value,_]),
    format("Node ~w, visit ~d, value ~f\n", [Id,VC,Value]),
    vis_state(State).
vis_path_states([Action|Path],Id,NodeHash,ChildHash):-
    nb_hashtbl_get(NodeHash,Id,[State,_,VC,Value,_]),
    format("Node ~w, visit ~d, value ~f, action ~d\n", [Id,VC,Value,Action]),
    vis_state(State),
    nb_hashtbl_get(ChildHash,Id, Children),
    ( member(Action-ChildId, Children) ->
      vis_path_states(Path,ChildId,NodeHash,ChildHash)
    ; format("Stopping here~n"),
      nb_hashtbl_get(ChildHash, Id, As),
      writeln(As)
    ).

vis_state(State):-
    State=state(Tableau, Actions, Result),
    tab_comp(goal, Tableau, Goal),
    tab_comp(path, Tableau, Path),
    tab_comp(lem, Tableau, Lem),
    tab_comp(todos, Tableau, Todos),
    format("   Goal ~w\n",[Goal]),
    format("   Path ~w\n",[Path]),
    format("   Lem ~w\n",[Lem]),
    format("   Actions ~w\n",[Actions]),
    format("   Todos ~w\n",[Todos]),
    format("   Result ~w\n",[Result]).


get_partial_path(Dir,InFile,OutFile):-
    split_string(InFile, "/", "/", FileParts),
    last(FileParts,FileName),
    format(atom(OutFile), "~w/~w", [Dir, FileName]).

get_full_path(Dir,InFile,OutFile):-
    format(atom(OutFile), "~w/~w", [Dir, InFile]),
    split_string(OutFile, "/", "", FileParts),
    append(DirParts, [_], FileParts), !,
    atomics_to_string(DirParts, "/", Dir2),
    make_directory_path(Dir2).
get_full_path(Dir,InFile,Format,OutFile):-
    format(atom(OutFile), "~w/~w/~w", [Dir,Format, InFile]),
    split_string(OutFile, "/", "", FileParts),
    append(DirParts, [_], FileParts), !,
    atomics_to_string(DirParts, "/", Dir2),
    make_directory_path(Dir2).


save_training_data(File, FHash, ValueDir, PolicyDir, Value, Policy, Format):-
    get_time(T), T2 is round(T), set_random(seed(T2)),

    ( ( mc_param(save_all_value, SaveProbV), random(RandV), RandV < SaveProbV
      ; proof_found(_)
      ) -> 
      get_full_path(ValueDir,File,Format,ValueFile),
      open(ValueFile, write, VStream),

      ( Format = svmlight ->
        write_svmlight_list(Value, FHash, VStream)
      ; Format = string ->
        write_string_list(Value, VStream)
      ; Format = gnn ->
        findall(_, (
                    member(Line, Value),
                    format(VStream, Line, [])
                ), _)
      ),
      close(VStream),
      writeln("Value data saved")
    ; true
    ),
    
    ( ( mc_param(save_all_policy, SaveProbP), random(RandP), RandP < SaveProbP
      ; proof_found(_)
      ) -> 
      get_full_path(PolicyDir,File,Format,PolicyFile),
      
      ( Format = svmlight -> 
        open(PolicyFile,write,PStream),
        write_svmlight_list(Policy, FHash, PStream),
        close(PStream)
      ; Format = string ->
        open(PolicyFile,write,PStream),
        write_string_list(Policy, PStream),
        close(PStream)
      ; Format = gnn ->
        ( mc_param(gnn_separate_value_policy, 1) ->
          open(PolicyFile,write,PStream),
          findall(_, (
                      member(Line, Policy),
                      format(PStream, Line, [])
                  ), _),
          close(PStream)
        ; true
        )
      ),
      writeln("Policy data saved")
    ; true
    ).


      

write_svmlight_list([], _, _).
write_svmlight_list([L|Ls], FHash, Stream):-
    write_svmlight(L, FHash, Stream),
    write_svmlight_list(Ls, FHash, Stream).

write_svmlight([State, Target], FHash, Stream):-
    !,
    logic_embed(State, FHash, state_only, _EmbStateP, EmbStateV, _EmbActions),
    
    format(Stream,"~w ",[Target]),
    (  member([Key,Value], EmbStateV),
       format(Stream, "~d:~1f ", [Key, Value]),
       fail
    ; true
    ),
    writeln(Stream,"").

write_svmlight([State, ActionId, Target], FHash, Stream):-
    logic_embed(State, FHash, both, EmbStateP, _EmbStateV, EmbActions),
    nth0(ActionId, EmbActions, EmbAction),
    append(EmbStateP, EmbAction, EmbState2),
    
    format(Stream,"~w ",[Target]),
    (  member([Key,Value], EmbState2),
       format(Stream, "~d:~1f ", [Key, Value]),
       fail
    ; true
    ),
    writeln(Stream,"").


write_string_list([], _).
write_string_list([L|Ls], Stream):-
    write_string(L, Stream),
    write_string_list(Ls, Stream).

write_string(Data, Stream):-
    Data = [State| Rest],
    State=state(Tableau, Actions, _Result),
    tab_comp(goal, Tableau, Goal),
    tab_comp(path, Tableau, Path),
    tab_comp(lem, Tableau, Lem),
    tab_comp(todos, Tableau, Todos),
    term_string(Goal, GoalS),
    term_string(Path, PathS),
    term_string(Lem, LemS),
    term_string(Todos, TodosS),
    
    format(Stream, "goal(~w).\n",[GoalS]),
    format(Stream, "path(~w).\n",[PathS]),
    format(Stream, "lem(~w).\n",[LemS]),
    format(Stream, "todos(~w).\n",[TodosS]),

    ( Rest = [ActionId, Target] ->
      nth0(ActionId, Actions, Action),
      term_string(Action, ActionS),
      format(Stream, "action(~w).\n",[ActionS])
    ; Rest = [Target]
    ),
    
    format(Stream, "target(~w).\n\n",[Target]).


argmin([L|Ls], Min):-
    argmin(Ls,1,L,0,Min).
argmin([], _, _, Min, Min).
argmin([L|Ls], Index, AccValue, AccIndex, Min):-
    Index1 is Index + 1,
    ( L < AccValue -> argmin(Ls, Index1, L, Index, Min)
    ; argmin(Ls, Index1, AccValue, AccIndex, Min)
    ).

argmax([L|Ls], Min):-
    argmax(Ls,1,L,0,Min).
argmax([], _, _, Min, Min).
argmax([L|Ls], Index, AccValue, AccIndex, Min):-
    Index1 is Index + 1,
    ( L > AccValue -> argmax(Ls, Index1, L, Index, Min)
    ; argmax(Ls, Index1, AccValue, AccIndex, Min)
    ).

random_index(Probs, Index):-
    random(R),
    random_index(Probs, 0, 0, R, Index).
random_index([_], Index, _, _, Index):- !.
random_index([P|Probs], AccIndex, AccProb, R, Index):-
    AccProb2 is AccProb + P,
    ( R < AccProb2 -> Index = AccIndex
    ; AccIndex2 is AccIndex + 1,
      random_index(Probs, AccIndex2, AccProb2, R, Index)
    ).

mc_child_values(ChildPairs, ActionCount, NodeHash, ChildValues):-
    AC1 is ActionCount-1,
    findall(V, (
                between(0, AC1, N),
                ( member(N-IdChild,ChildPairs) ->
                  nb_hashtbl_get(NodeHash, IdChild, [_State,_Prob,VC,V0,_CPs]),
                  V is V0 / VC
                ; V=0
                )
            ), ChildValues
           ).

portray(nb_hashtbl(_, _)):-write(hashtbl).
