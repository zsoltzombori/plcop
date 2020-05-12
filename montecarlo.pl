%%- -*-Mode: Prolog;-*--------------------------------------------------

:- set_prolog_stack(global, limit(100 000 000 000)).
:- set_prolog_stack(trail,  limit(100 000 000 000)).
:- set_prolog_stack(local,  limit(100 000 000 000)).

:- load_foreign_library('foreign/xgb.so').
:- [hashtbl/prolog/nb_hashtbl].
:- [features].
:- [leancop_step].
:- [produce_leancop_proof].
:- use_module(library(http/json)).

:- dynamic mc_param/2.
:- dynamic xgb_handle/2.
:- dynamic proof_found/1.
:- dynamic clause_stream/1.
:- dynamic proof_file/1.

:- set_random(seed(111)).

%% State=state(Goal,Path,Lem,Actions,Todos,Proof,Result)

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

    b_setval(file, File),   %TODO super ugly
    get_clause_file(ClauseDir, File, ClauseFile),
    get_clause_file(ProofDir, File, ProofFile),
    open(ClauseFile, write, ClauseStream),
    asserta(clause_stream(ClauseStream)),
    asserta(proof_file(ProofFile)),
            
    ( mc_param(guided,2) ->     % load c interface to xgboost
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


    % collect training data
    mc_training_data(NodeHash, ChildHash, Value, Policy),
    writeln("Training data collected"),
    save_training_data(File, FHash, ValueDir, PolicyDir, Value, Policy),
    writeln("Training data saved"),

    %% show proof in the current root
    %% rootnode(CurrentRoot), !,
    %% vis_proof(CurrentRoot,NodeHash),
    
    statistics(runtime, [NewTimeSinceStart | [_ExecutionTime]]),
    ExecutionTime is NewTimeSinceStart - TimeSinceStart,

    ET is ExecutionTime / 1000,
    format("Execution time: ~w sec\n", [ET]).



% +File: input problem file
% -ChildHash: [StateId,ActionId] -> StateId
% -ParentHash: StateId -> StateId
%% -NodeHash: StateId -> [State,Prob,VisitCount,Value,ChildProbs]
mc_init(File,ChildHash,ParentHash,NodeHash,FHash):-
    empty_nb_hashtbl(ChildHash),
    empty_nb_hashtbl(ParentHash),
    empty_nb_hashtbl(NodeHash),
    empty_nb_hashtbl(FHash),

    mc_param(leancop_settings,Settings),
    logic_init(File,Settings,StartState),
    guidance_get_value(StartState, FHash, Value),
    % mc_simulate(StartState,FHash,Value),
    guidance_action_probs(StartState,FHash,ChildProbs),

    nb_hashtbl_set(NodeHash, 0, [StartState, 1, 1, Value, ChildProbs]),
    flag(nodecount, _, 1).

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
    
    ( (N rem 5000) =:= 0 -> format("~w playouts remaining\n",[N]) ; true ),
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
    mc_find_unexpanded(StartId,ChildHash,NodeHash,ExpandId,UnexpandedActionIds),
    nb_hashtbl_get(NodeHash,ExpandId,[State,_,_,_,ChildProbs]),
    State=state(_,_,_,_,_,_,Result),
    (  Result ==  1 -> Reward = 1
     ; Result == -1 -> Reward = 0
    %% ; guidance_select_action(State,FHash,UnexpandedActionIds,ActionIndex),
    ;  get_largest_index(UnexpandedActionIds, ChildProbs, ActionIndex),
       flag(inference_cnt, X, X+1), % increase inference count
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
    logic_step(ParentState2,ActionIndex,ChildState),
    guidance_get_value(ChildState, FHash, ChildValue),
    % copy_term(ChildState,ChildState2),
    % mc_simulate(ChildState2,FHash,ChildValue),
    nth0(ActionIndex, ChildProbs, ChildProb),
    flag(nodecount, ChildId, ChildId+1),

    nb_hashtbl_set(ChildHash,ParentId-ActionIndex,ChildId),
    nb_hashtbl_set(ParentHash,ChildId,ParentId),
    guidance_action_probs(ChildState,FHash,ChildChildProbs),   
    nb_hashtbl_set(NodeHash,ChildId,[ChildState, ChildProb, 1, ChildValue, ChildChildProbs]),

    %% if we found a proof, display it
    ( ChildState = state(_,_,_,_,_,Proof,1), \+ proof_found(ChildId) ->

      reverse(Proof,ProofRev),
      writeln("SUCCESS"),
      print_my_proof(ProofRev, orig),
      proof_file(ProofFile),
      produce_leancop_proof(ProofRev, ProofFile),

      ( ( mc_param(save_all_proofs, 1) ; \+ proof_found(_) ) ->
        clause_stream(ClauseStream),
        proof_clauses(ProofRev, ClauseStream)
      ; true
      ),

      %% ensure that nodes leading to this proof are considered bigstep nodes (we will extract training data from them)
      mc_backpropagate_bigstep(ChildId, ParentHash),
      
      assert(proof_found(ChildId))
    ; true
    ).

mc_backpropagate_bigstep(Id,ParentHash):-
    ( rootnode(Id) -> true ; assertz(rootnode(Id)) ),
    ( nb_hashtbl_get(ParentHash, Id, ParentId) -> mc_backpropagate_bigstep(ParentId,ParentHash)
    ; true
    ).




% +State: current state
% -Value: value found at the end of simulation
mc_simulate(State,FHash,Value):-
    guidance_get_value(State,FHash,Value).
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
mc_find_unexpanded(Id,ChildHash,NodeHash,Id2,UnexpandedActionIds):-
    mc_child_list(Id,NodeHash,ChildHash,ChildPairs),
    nb_hashtbl_get(NodeHash,Id,[State,_,VisitCount,_,_]),
    action_count(State,ActionCount),
    length(ChildPairs,L),
    (  ActionCount == 0 -> Id2=Id, UnexpandedActionIds=[]
    ;  mc_ucb_select_child(VisitCount,ChildPairs,NodeHash,SelectedId,UCBScore),
       ( L < ActionCount,
         mc_ucb_score_unexplored(VisitCount, ActionCount,UCBUnexploredScore),
         UCBUnexploredScore > UCBScore ->
         Id2=Id, missing_actions(ActionCount,ChildPairs,UnexpandedActionIds)
       ;
         flag(inference_cnt, X, X+1), % increase inference count to mimic rlcop inference count
         mc_find_unexpanded(SelectedId,ChildHash,NodeHash,Id2,UnexpandedActionIds)
       ), !
    ;  Id2=Id, missing_actions(ActionCount,ChildPairs,UnexpandedActionIds)
    ).

%% find the id of the child with the largest ucb_score
mc_find_bigstep(Id,ChildHash,NodeHash,Id2):-
    mc_child_list(Id,NodeHash,ChildHash,ChildPairs),
    nb_hashtbl_get(NodeHash,Id,[_,_,VisitCount,_,_]),
    % vis_children(ChildPairs, NodeHash),
    mc_ucb_select_child(VisitCount,ChildPairs,NodeHash,Id2, _Score).

%% +VisitCount
%% +ExpandedIdPairs: ActionId-StateId pair list
%% +NodeHash
%% -SelectedId: StateId from ExpandedIdPairs having the highest ucb score
%% -SelectedScore: the largest ucb score
mc_ucb_select_child(VisitCount,ExpandedIdPairs,NodeHash,SelectedId,SelectedScore):-
    findall(ChildId-ChildScore, (
                member(_-ChildId,ExpandedIdPairs),
                nb_hashtbl_get(NodeHash,ChildId,[_,ChildProb,ChildVisitCount,ChildValue,_]),
                mc_ucb_score(VisitCount,ChildProb,ChildVisitCount,ChildValue,ChildScore)
            ), Scores
           ),
    mc_select_largest_score(Scores,SelectedId,SelectedScore).


% select_largest_score(+Scores,-SelectedId,-SelectedScore)
% +Score: StateId-Score pair list
% -SelectedId: StateId with the largest Score, as well as the Score
% fails if Scores is empty
mc_select_largest_score([Id-Score|Scores],SelectedId,SelectedScore):-
    mc_select_largest_score(Scores,Id,Score,SelectedId,SelectedScore).
mc_select_largest_score([],AccId,AccScore,AccId, AccScore).
mc_select_largest_score([Id-Score|Scores],AccId,AccScore,SelectedId, SelectedScore):-
    (  Score > AccScore -> mc_select_largest_score(Scores,Id,Score,SelectedId,SelectedScore)
    ;  Score = AccScore ->
       ( random(2) =:= 0 -> mc_select_largest_score(Scores,Id,Score,SelectedId,SelectedScore)
       ; mc_select_largest_score(Scores,AccId,AccScore,SelectedId,SelectedScore)
       )
     ; mc_select_largest_score(Scores,AccId,AccScore,SelectedId,SelectedScore)
    ).
                         
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

% mc_child_list(+Id,+NodeHash,+ChildHash,-ChildPairs).
% ChildPairs is ActionId-ChildId pair list
mc_child_list(Id,NodeHash,ChildHash,ChildPairs):-
    nb_hashtbl_get(NodeHash,Id,[State,_,_,_,_]),
    action_count(State,AC),
    AC1 is AC-1,
    findall(ActionId-ChildId, (
                between(0,AC1,ActionId),
                nb_hashtbl_get(ChildHash,Id-ActionId,ChildId)
            ), ChildPairs
           ).


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
    
% Policy: [state,action,{#child_visit_count/#parent_visit_count}] triples
% Value: [state, {value/visit_count}] pairs
mc_training_data(NodeHash, ChildHash, Value, Policy):-
    
    findall(Id, rootnode(Id), BigstepNodes),
    sort(BigstepNodes, BigstepNodes2),
    length(BigstepNodes2,L),
    format("Bigstep Nodes: ~d, ~w\n",[L,BigstepNodes2]),
    mc_training_data(BigstepNodes2, NodeHash, ChildHash, [], [], Value, Policy).

mc_training_data([], _NodeHash, _ChildHash, Value, Policy, Value, Policy).
mc_training_data([Id|Ids], NodeHash, ChildHash, ValueAcc, PolicyAcc, Value, Policy):-
    nb_hashtbl_get(NodeHash,Id,[State,_,VC,_Val,_]),

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
    action_count(State, ActionCount),
    ActionCount1 is ActionCount - 1,
    mc_child_list(Id, NodeHash, ChildHash, ChildPairs),
    training_collect_policy(ActionCount1, ChildPairs, State, ActionCount, VC, NodeHash, [], CurrPolicy),
    append(CurrPolicy,PolicyAcc,PolicyAcc1),
    
    mc_training_data(Ids, NodeHash, ChildHash, ValueAcc1, PolicyAcc1, Value, Policy).


training_collect_policy(-1, _, _, _, _, _, Acc, Acc).
training_collect_policy(ActionId, ChildPairs, State, ActionCount, VC, NodeHash, Acc, Policy):-
    ( member(ActionId-ChildId, ChildPairs) ->
      nb_hashtbl_get(NodeHash,ChildId,[_,_,VC_child,_,_]),
      Frequency is VC_child / (VC-1) * ActionCount,
      LogFrequency is max(-6, log(Frequency)),
      Acc1 = [[State, ActionId, LogFrequency]|Acc]
    ; Acc1 = Acc % [[State, ActionId, -6]|Acc] % TODO no training data on this branch
    ),
    ActionId1 is ActionId - 1,
    training_collect_policy(ActionId1, ChildPairs, State, ActionCount, VC, NodeHash, Acc1, Policy).


training_collect_value(Id, NodeHash, ChildHash, Discount, SuccValue, FailValue, NoValue, Value):-
    nb_hashtbl_get(NodeHash,Id,[State,_,_,_,_]),
    State=state(_,_,_,_,_,_,Result),
    (  Result ==  1 -> Value = SuccValue
    ; Result == -1 -> Value = FailValue
    ;  SuccValue1 is SuccValue * Discount,
       FailValue1 is FailValue * Discount,
       NoValue1 is NoValue *  Discount,
       mc_child_list(Id, NodeHash, ChildHash, ChildPairs),
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

%% let reward st tree =
%% match tree.kind with
%% | Won -> 1. | Lost -> 0.
%% | _ ->
%% let logistic v =  1. /. (1. +. exp (0. -. v)) in
%% if !predict_value then ((logistic (Xgb.predict value (state_features st))) ** !value_factor)  ** (float (goals_length st) ** !length_factor)
%% else logistic (3.7 *. exp (-0.05 *. (float (goals_size st))) -. 2.5);;

%% length_factor = 1, value_base = 0.5, value_factor = 0.5

%% guidance_get_value(+State,-Value).
% value is just 1/number of open literals if no guidance is provided
guidance_get_value(State,FHash,Value):-
    State=state(_Goal,_Path,_Lem,_Actions,_Todos,_Proof,Result),
    (  Result == 1 -> Value = 1
     ; Result == -1 -> Value = 0
     ; mc_param(guided,1) ->
       logic_embed(State, FHash, state_only, _EmbStateP, EmbStateV,_),
       python_value(EmbStateV,Value2),
       Value is Value2 / 1e10
    ; mc_param(guided,2) ->
       logic_embed(State, FHash, state_only, _EmbStateP, EmbStateV,_),
       xgb_handle(value,Handle), !,
       xgb:xpredict(Handle,EmbStateV,V),
       % Value is V
       Value0 is 1 / (1 + exp(-V)),
       goals_length(State, GoalsLength),
       Value is (Value0 ** 0.5) ** GoalsLength       
    ; guidance_default_value(State,Value)
    ).

% taken from RLCoP paper
guidance_default_value(State,Value):-
    goals_size(State, S),
    %% Value is 0.95 ** S.
    V is 3.7 * exp(-0.05 * S) - 2.5,
    Value is 1 / (1 + exp(-V)).

goals_length(State, L):-
    goals_list(State, Goals),
    length(Goals, L).


goals_size(State, S):-
    goals_list(State, Goals),
    maplist(term_size, Goals, Sizes),
    sumlist(Sizes, S).


goals_list(State, Goals):-
    State=state(Goal,_Path,_Lem,_Actions,Todos,_Proof,_Result),
    goals_list(Todos, [Goal], GoalsList),
    append(GoalsList, Goals).
goals_list([], Goals, Goals).
goals_list([T|Ts], Acc, Goals):-
    T = [Goal,_Path,_Lem],
    goals_list(Ts, [Goal|Acc], Goals).


term_size(Term, Size):-
    ( var(Term) -> Size = 1
    ; atomic(Term) -> Size = 1
    ; Term =.. [_|Tail],
      maplist(term_size, Tail, Sizes),
      sumlist(Sizes, Size0),
      Size is Size0 + 1
    ).


term_depth(Term, 0):-
    \+ compound(Term), !.
term_depth(Term, Depth):-
    compound(Term),
    Term =.. [_|Tail],
    maplist(term_depth, Tail, Depths),
    max_list(Depths, Max),
    Depth is Max + 1.



% guidance_select_action(+State, -ActionIndex)
% random selection if no guidance is given
% guidance_select_action(State,FHash,ActionIndex):-
%     action_count(State,AC),
%     AC1 is AC-1,
%     numlist(0,AC1,ValidIds),
%     guidance_select_action(State,FHash,ValidIds,ActionIndex).
    
% guidance_select_action(State,FHash,ValidIds,ActionIndex):-
%     mc_param(guided,G), G>0, !,
%     logic_embed(State,FHash,EmbState,EmbActions),
%     findall(Tuple, (
%                     member(Action,EmbActions),
%                     append(EmbState,Action,Tuple)
%                    ), GuidanceInput
%            ),
%     ( G = 1 -> python_policy(GuidanceInput,ValidIds,ActionIndex)
%     ; G = 2 -> c_policy(GuidanceInput,ValidIds,ActionIndex)
%     ).
% guidance_select_action(_State,_FHash,ValidIds,ActionIndex):-
%     random_member(ActionIndex,ValidIds).



guidance_action_probs(State,_FHash,Probs):-
    mc_param(guided,0), !, % no guidance
    action_count(State,AC),
    ( AC = 0 ->  Probs = []
    ; Prob is 1/AC,
      findall(Prob, between(1,AC,_), Probs)
    ).
guidance_action_probs(State,FHash,Probs):-
    mc_param(guided,2), !,      % c guidance
    xgb_handle(policy,Handle), !,

    logic_embed(State, FHash, both, EmbStateP, _EmbStateV, EmbActions),
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
%% c interface to xgboost

% % c_policy(+InputList,+ValidIds,-ActionIndex)
% c_policy(InputList,ValidIds,ActionIndex):-
%     xgb_handle(policy,Handle), !,
%     c_policy_list(ValidIds,InputList,Handle,Probs),
%     Probs = [H|Tail],
%     H = (Id0-Prob0),
%     get_largest_index(Tail,Id0,Prob0,ActionIndex).

% c_policy_list([],_,_,[]).
% c_policy_list([Id|Ids],InputList,Handle,[Id-Prob|Probs]):-
%     nth0(Id,InputList,Input),
%     xgb:xpredict(Handle,Input,Prob),
%     c_policy_list(Ids,InputList,Handle,Probs).

% get_largest_index([],ActionIndex,_,ActionIndex).
% get_largest_index([Id-Prob|Tail], IdAcc, ProbAcc, ActionIndex):-
%     ( Prob > ProbAcc -> get_largest_index(Tail, Id, Prob, ActionIndex)
%     ; get_largest_index(Tail, IdAcc, ProbAcc, ActionIndex)
%     ).
    
            

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







%% We do: number of goals, total symbol size of all goals, maximum goal size, maximum goal depth, length of the active path, number of current variable instantiations, and the two most common symbols and their frequencies. Some of the we added after observing that the learning can lead it astray - e.g. I vividly remember why we added the last two after watching deeper and deeper repetitions of the same rule.

%% Exact code:
%% (* 10 artificial features *)
%% let global_features maxf st =
%%   let goals_length = goals_length st in
%%   let goals_size = goals_size st in
%%   let goals_max = fold_goals (fun sf l -> max sf (lit_size (fst st.sub) 0 l)) 0 st in
%%   let path_len = List.length st.path in
%%   let sub_len = snd st.sub in
%%   let max_depth = fold_goals (fun sf l -> max sf (lit_depth (fst st.sub) l)) 0 st in
%%   let ((mk1, mv1), (mk2, mv2)) = most_common (fold_goals (update_freq_lit (fst st.sub)) Im.empty st) in
%%   [(maxf+1,goals_length); (maxf+2,goals_size); (maxf+3,goals_max); (maxf+4,path_len); (maxf+5, sub_len); (maxf+6, max_depth); (maxf+7, mk1); (maxf
%% +8, mv1); (maxf+9, mk2); (maxf+10, mv2)];;

%% EmbType in [both, state_only]
logic_embed(State,FHash,EmbType, EmbStateP,EmbStateV,EmbActions):-
    State=state(Goal,Path,Lem,Actions,Todos,_Proof,_Result),
    goals_list(State, AllGoals),
    copy_term([AllGoals,Goal,Path,Lem,Actions,Todos],[AllGoals1,Goal1,Path1,Lem1,Actions1,Todos1]),
    % copy_term([AllGoals,Path,Lem,Actions,Todos],[Goal1,Path1,Lem1,Actions1,Todos1]),

    ( mc_param(collapse_vars,1) ->
      collapse_vars([AllGoals1,Goal1,Path1,Lem1,Actions1,Todos1])
    ; numbervars([AllGoals1,Goal1,Path1,Lem1,Actions1,Todos1],1000,_VarCount0)
    ),

    mc_param(n_dim,FDim),
    FDim2 is 2*FDim,
    FDim3 is 3*FDim,
    FDim4 is 4*FDim,
    cached_embed(AllGoals1,FHash,FDim,0,EAllGoals),
    cached_embed(Goal1,FHash,FDim,0,EGoal),
    cached_embed(Path1,FHash,FDim,FDim,EPath),
    cached_embed(Lem1,FHash,FDim,FDim2,ELem),
    cached_embed(Todos1,FHash,FDim,FDim3,ETodos),

    ( mc_param(lemma_features,1) ->
      merge_features_list([EGoal,EPath,ELem,ETodos],[],EmbStateP0),
      merge_features_list([EAllGoals,EPath,ELem,ETodos],[],EmbStateV0),
      I1 is FDim4
    ; merge_features_list([EGoal,EPath],[],EmbStateP0),
      merge_features_list([EAllGoals,EPath],[],EmbStateV0),
      I1 is FDim2
    ),

    % VarCount is VarCount0 - 1000,
    length(Path, PathLen),
    length(AllGoals, NumGoals),
    goalStats(AllGoals, GoalsSymbolSize, MaxGoalSize, MaxGoalDepth, TopSymbol1,  TopSymbol2, TopFrequency1, TopFrequency2),
    
    I2 is I1 + 1,
    I3 is I1 + 2,
    I4 is I1 + 3,
    I5 is I1 + 4,
    I6 is I1 + 5,
    I7 is I1 + 6,
    I8 is I1 + 7,
    I9 is I1 + 8,
    GlobalFeatures = [[I1, NumGoals],
		      [I2, GoalsSymbolSize],
		      [I3, MaxGoalSize],
		      [I4, MaxGoalDepth],
		      [I5, PathLen],
		      [I6, TopSymbol1],
		      [I7, TopSymbol2],
		      [I8, TopFrequency1],
		      [I9, TopFrequency2]],
    append(EmbStateP0, GlobalFeatures, EmbStateP),
    append(EmbStateV0, GlobalFeatures, EmbStateV),

    ( EmbType = both ->
      Offset = I9,
      cached_embed_list(Actions1, FHash, FDim, Offset, EmbActions)
    %% length(Actions, ALen), 
    %% logic_embed_successors(0, ALen, State, FHash, EmbActions)
    ; true
    ).

logic_embed_successors(I,I,_,_,[]):- !.
logic_embed_successors(I, ALen, State, FHash, [E|EmbActions]):-
    I < ALen,
    copy_term(State, State2),
    logic_step(State2,I,ChildState),
    logic_embed(ChildState,FHash,state_only,_,E,_),
    I1 is I+1,
    logic_embed_successors(I1, ALen, State, FHash, EmbActions).
    



%% number of variable instantiations is not available for us
goalStats(Goals, GoalsSymbolSize, MaxGoalSize, MaxGoalDepth, TopSymbol1,  TopSymbol2, TopFrequency1, TopFrequency2):-
    maplist(term_size, Goals, GoalSizes),
    maplist(term_depth, Goals, GoalDepths),
    sumlist(GoalSizes, GoalsSymbolSize),
    max_list(GoalSizes, MaxGoalSize),
    max_list(GoalDepths, MaxGoalDepth),
    top_two_symbols(Goals, _, _, TopFrequency1, TopFrequency2, TopSymbol1, TopSymbol2).

    
%% goalStats(Todos, Pos, Neg, Size):-
%%     goalStats(Todos, [], [], 0, Pos, Neg, Size).
%% goalStats([], AccPos, AccNeg, Size, Pos, Neg, Size):-
%%     length(AccPos, Pos),
%%     length(AccNeg, Neg).
%% goalStats([[Goal, _, _]|Todos], AccPos, AccNeg, AccSize, Pos, Neg, Size):-
%%     term_size_list(Goal, AccSize, AccSize2),
%%     appendpos(Goal, AccPos, AccPos2),
%%     appendneg(Goal,AccNeg, AccNeg2),
%%     goalStats(Todos, AccPos2, AccNeg2, AccSize2, Pos, Neg, Size).

%% appendpos([],L,L).
%% appendpos([G|Gs], Acc, L):-
%%     ( G= -_ -> appendpos(Gs, Acc, L)
%%     ; contains(Acc,G) -> appendpos(Gs, Acc, L)
%%     ; appendpos(Gs, [G|Acc], L)
%%     ).
%% appendneg([],L,L).
%% appendneg([G|Gs], Acc, L):-
%%     ( \+ G= -_ -> appendneg(Gs, Acc, L)
%%     ; contains(Acc,G) -> appendneg(Gs, Acc, L)
%%     ; appendneg(Gs, [G|Acc], L)
%%     ).

%% contains([X|Xs],G):-
%%     ( G == X -> true
%%     ; contains(Xs, G)
%%     ).

collapse_vars(X):-
    ( var(X) -> X=var
    ; atomic(X) -> true
    ; X = [_|_] -> maplist(collapse_vars, X)
    ; X =.. [_|Args], maplist(collapse_vars, Args)
    ).
                             

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% action_count(+State,-ActionCount).
action_count(state(_Goal,_Path,_Lem,Actions,_Todos,_Proof,_Result),AC):-
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
                       State=state(Goal,_Path,_Lem,_Actions,_Todos,_Proof,_Result),
                       format("~d-~d (~w) goal ~w\n", [Index, Id, ChildProb, Goal])
                      ), _
           ).



vis_proof(Id, NodeHash):-
    nb_hashtbl_get(NodeHash,Id,[State, _, _VC, _Value, _]),
    State=state(_Goal,_Path,_Lem,_Actions,_Todos,Proof,_Result),

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
    mc_child_list(Id, NodeHash, ChildHash, ChildPairs),    
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
    ( nb_hashtbl_get(ChildHash,Id-Action,ChildId) ->
          vis_path_states(Path,ChildId,NodeHash,ChildHash)
     ; format("Stopping here~n"),
       findall(A, nb_hashtbl_get(ChildHash,Id-A,_), As),
       writeln(As)
    ).

vis_state(State):-
    State=state(Goal,Path,Lem,Actions,Todos,_Proof,Result),
    format("   Goal ~w\n",[Goal]),
    format("   Path ~w\n",[Path]),
    format("   Lem ~w\n",[Lem]),
    format("   Actions ~w\n",[Actions]),
    format("   Todos ~w\n",[Todos]),
    format("   Result ~w\n",[Result]).

get_output_file(Dir,InFile,OutFile):-
    get_time(T), stamp_date_time(T, date(Y,Mo, D, H, Min, Sec, _, _, _), 'UTC'),
    Sec2 is round(Sec),
    format(atom(TimeString), "~d_~d_~d_~d_~d_~d", [Y, Mo, D, H, Min, Sec2]),

    split_string(InFile, "/", "/", FileParts),
    last(FileParts,FileName),
    split_string(FileName,".", ".",[Name|_]),

    format(atom(OutFile), "~w/~w_~w.json", [Dir, Name, TimeString]).

get_clause_file(Dir,InFile,OutFile):-
    split_string(InFile, "/", "/", FileParts),
    last(FileParts,FileName),
    split_string(FileName,".", ".",[Name|_]),

    format(atom(OutFile), "~w/~w.txt", [Dir, Name]).


save_training_data(File, FHash, ValueDir, PolicyDir, Value, Policy):-
    get_time(T), T2 is round(T), set_random(seed(T2)),
    
    ( ( mc_param(save_all_value, SaveProbV), random(RandV), RandV < SaveProbV
      ; proof_found(_)
      ) -> 
      get_output_file(ValueDir,File,ValueFile),
      open(ValueFile, write, VStream),
      ( mc_param(output_format, svmlight) -> 
        write_svmlight_list(Value, FHash, VStream)
      ; mc_param(output_format, string) ->
        write_string_list(Value, VStream)
      ),
      close(VStream),
      writeln("Value data saved")
    ; true
    ),
    
    ( ( mc_param(save_all_policy, SaveProbP), random(RandP), RandP < SaveProbP
      ; proof_found(_)
      ) -> 
      get_output_file(PolicyDir,File,PolicyFile),
      open(PolicyFile,write,PStream),
      ( mc_param(output_format, svmlight) ->
        write_svmlight_list(Policy, FHash, PStream)
      ; mc_param(output_format, string) ->
        write_string_list(Policy, PStream)
      ),
      close(PStream),
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
    State=state(Goal, Path, Lem, Actions, Todos, _Proof, _Result),
    term_string(Goal, GoalS),
    term_string(Path, PathS),
    term_string(Lem, LemS),
    term_string(Todos, TodosS),
    
    format(Stream, "GOAL ~w\n",[GoalS]),
    format(Stream, "PATH ~w\n",[PathS]),
    format(Stream, "LEM ~w\n",[LemS]),
    format(Stream, "TODOS ~w\n",[TodosS]),

    ( Rest = [ActionId, Target] ->
      nth0(ActionId, Actions, Action),
      term_string(Action, ActionS),
      format(Stream, "ACTION ~w\n",[ActionS])
    ; Rest = [Target]
    ),
    
    format(Stream, "TARGET ~w\n\n",[Target]).

