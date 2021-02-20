
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


:- ensure_loaded(core/features).
:- ensure_loaded(core/clause_stats).
:- ensure_loaded(core/leancop_intf).


:- dynamic mc_param/2.

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