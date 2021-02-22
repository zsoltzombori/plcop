%%- -*-Mode: Prolog;-*--------------------------------------------------

:- set_prolog_stack(global, limit(100 000 000 000)).
:- set_prolog_stack(trail,  limit(100 000 000 000)).
:- set_prolog_stack(local,  limit(100 000 000 000)).

:- ensure_loaded(core/clause_stats).
:- ensure_loaded(core/embedding).
:- ensure_loaded(core/features).
:- ensure_loaded(core/guidance).
:- ensure_loaded(core/leancop_intf).
:- ensure_loaded(core/reward).
:- ensure_loaded(core/training).
:- ensure_loaded(core/ucb_score).

:- ensure_loaded(hashtbl/prolog/nb_hashtbl).
:- ensure_loaded(leancop/leancop_step).

:- ensure_loaded(utils/produce_leancop_proof).
:- ensure_loaded(utils/filenames).
:- ensure_loaded(utils/log_state).
:- ensure_loaded(utils/visualise).

:- load_foreign_library('foreign/xgb.so').
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
    Params = [
      guided(0),
      cp(2),
      sim_depth(0),
      playout_count(30),
      min_visit_count(1),
      n_dim(20),
      playout_time(30),
      leancop_settings([conj,nodef])
    ],
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
% -NodeHash: StateId -> [State,Prob,VisitCount,Value,ChildProbs]
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

% Wrapper around mc_playout with condition checking
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


% The meat of the solver
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


% get_largest_index(+unexpanded_actions, +child probabilities, -selected_action)
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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% I THINK THIS IS UNUSED!!!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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