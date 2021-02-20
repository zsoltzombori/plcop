:- ensure_loaded(core/ucb_score).
:- ensure_loaded(hashtbl/prolog/nb_hashtbl).
:- ensure_loaded(leancop/leancop_step).


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