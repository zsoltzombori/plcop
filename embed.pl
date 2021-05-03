:- [leancop_step].

goals_length(State, L):-
    goals_list(State, Goals),
    length(Goals, L).

goals_size(State, S):-
    goals_list(State, Goals),
    maplist(term_size, Goals, Sizes),
    sumlist(Sizes, S).



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
logic_embed(StateOrig,FHash,EmbType, EmbStateP,EmbStateV,EmbActions):-
    copy_term(StateOrig, State),

    State=state(Tableau, Actions, _Result),
    mc_param(n_dim,FDim),

    tab_comp(goal, Tableau, Goal),
    tab_comp(path, Tableau, Path),
    tab_comp(todos, Tableau, Todos),
    tab_comp(lem, Tableau, Lem),

    ( mc_param(collapse_vars,1) -> collapse_vars([Goal, Path, Lem, Todos, Actions])
    ; numbervars([Goal, Path, Lem, Todos], 1000, _VarCount),
      numbervars_list(Actions, 1000)
    ),


    cached_embed(Goal,FHash,FDim,0,EGoal),
    cached_embed(Path,FHash,FDim,FDim,EPath),    
    goals_list(Todos, [Goal], AllGoals),
    cached_embed(AllGoals,FHash,FDim,0,EAllGoals),

    
    
    
    Offset1 is 2*FDim,
    PFeatures1 = [EGoal, EPath],
    VFeatures1 = [EAllGoals, EPath],

    
    ( mc_param(lemma_features,1) ->
      cached_embed(Lem, FHash, FDim, Offset1, ELem),
      Offset_todos is Offset1 + FDim,
      cached_embed(Todos, FHash, FDim, Offset_todos, ETodos),
      Offset2 is Offset_todos + FDim,
      append(PFeatures1, [ELem, ETodos], PFeatures2),
      append(VFeatures1, [ELem, ETodos], VFeatures2)
    ; Offset2 = Offset1,
      PFeatures2 = PFeatures1,
      VFeatures2 = VFeatures1
    ),

    ( mc_param(subst_features,1) ->
      tab_comp(subst, Tableau, Subst),
      subst2preds(Subst, SubstPreds),
      cached_embed(substitution(SubstPreds), FHash, FDim, Offset2, ESubstPreds),
      Offset3 is Offset2 + FDim,
      append(PFeatures2, [ESubstPreds], PFeatures3),
      append(VFeatures2, [ESubstPreds], VFeatures3)
    ; Offset3 = Offset2,
      PFeatures3 = PFeatures2,
      VFeatures3 = VFeatures2
    ),

    merge_features_list(PFeatures3, [], EmbStateP0),
    merge_features_list(VFeatures3, [], EmbStateV0),
    
    length(Path, PathLen),
    length(AllGoals, NumGoals),
    goalStats(AllGoals, GoalsSymbolSize, MaxGoalSize, MaxGoalDepth, TopSymbol1,  TopSymbol2, TopFrequency1, TopFrequency2),

    varStats(AllGoals, NumVar, NumVarOcc, NumVarOneOcc, NumVarMoreOcc, MostOcc, LeastOcc),

    I1 = Offset3,
    I2 is I1 + 1,
    I3 is I1 + 2,
    I4 is I1 + 3,
    I5 is I1 + 4,
    I6 is I1 + 5,
    I7 is I1 + 6,
    I8 is I1 + 7,
    I9 is I1 + 8,
    I10 is I1 + 9,
    I11 is I1 + 10,
    I12 is I1 + 11,
    I13 is I1 + 12,
    I14 is I1 + 13,
    I15 is I1 + 14,
    I16 is I1 + 15,
    action_count_total(State, ACT),
    
    GlobalFeatures = [
        [I1, NumGoals],
		[I2, GoalsSymbolSize],
		[I3, MaxGoalSize],
		[I4, MaxGoalDepth],
		[I5, PathLen],
		[I6, TopSymbol1],
		[I7, TopSymbol2],
		[I8, TopFrequency1],
		[I9, TopFrequency2],
        [I10, ACT],
        [I11, NumVar],
        [I12, NumVarOcc],
        [I13, NumVarOneOcc],
        [I14, NumVarMoreOcc],
        [I15, MostOcc],
        [I16, LeastOcc]
    ],
    append(EmbStateP0, GlobalFeatures, EmbStateP),
    append(EmbStateV0, GlobalFeatures, EmbStateV),

    ( EmbType = both ->
      Offset = I16,
      cached_embed_list(Actions, FHash, FDim, Offset, EmbActions)
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

% goals is ground (numbervars has been called on it)
varStats(Goals, NumVar, NumVarOcc, NumVarOneOcc, NumVarMoreOcc, MostOcc, LeastOcc):-
    ground(Goals),
    count_var_occ(Goals, [], VarOccList),
    countVars(VarOccList, 0, 0, 0, 0, 0, 10000, NumVar, NumVarOcc, NumVarOneOcc, NumVarMoreOcc, MostOcc, LeastOcc).

count_var_occ(X, Acc, Acc):-
    atomic(X), !.
count_var_occ([X|Xs], Acc, Result):-
    !,
    count_var_occ(X, Acc, Acc2),
    count_var_occ(Xs, Acc2, Result).
count_var_occ('$VAR'(N), Acc, Result):-
    !,
    add_var(Acc, N, Result).
count_var_occ(X, Acc, Result):-
    X =.. [_|Args],
    count_var_occ(Args, Acc, Result).

add_var([], N, [N-1]).
add_var([N-C|Rest], N, [N-C2|Rest]):-
    !,
    C2 is C + 1.
add_var([X|Rest], N, [X|Rest2]):-
    add_var(Rest, N, Rest2).

countVars([], NumVar, NumVarOcc, NumVarOneOcc, NumVarMoreOcc, MostOcc, LeastOcc, NumVar, NumVarOcc, NumVarOneOcc, NumVarMoreOcc, MostOcc, LeastOcc).
countVars([_V-C|Rest], Acc1, Acc2, Acc3, Acc4, Acc5, Acc6, NumVar, NumVarOcc, NumVarOneOcc, NumVarMoreOcc, MostOcc, LeastOcc):-
    Acc11 is Acc1 + 1,
    Acc21 is Acc2 + C,
    ( C = 1 -> Acc31 is Acc3 + 1, Acc41 = Acc4
    ; Acc31 = Acc3, Acc41 is Acc4 + 1
    ),
    Acc51 is max(Acc5, C),
    Acc61 is min(Acc6, C),
    countVars(Rest, Acc11, Acc21, Acc31, Acc41, Acc51, Acc61, NumVar, NumVarOcc, NumVarOneOcc, NumVarMoreOcc, MostOcc, LeastOcc).


collapse_vars(X):-
    ( var(X) -> X=var
    ; atomic(X) -> true
    ; X = [_|_] -> maplist(collapse_vars, X)
    ; X =.. [_|Args], maplist(collapse_vars, Args)
    ).

goals_list(state(Tableau, _, _), Goals):-
    tab_comp(goal, Tableau, Goal),
    tab_comp(todos, Tableau, Todos),
    goals_list(Todos, [Goal], GoalsList),
    append(GoalsList, Goals).
goals_list([], Goals, Goals).
goals_list([T|Ts], Acc, Goals):-
    T = [Goal,_Path,_Lem],
    goals_list(Ts, [Goal|Acc], Goals).


term_size(Term, Size):-
    ( var(Term) -> Size = 1
    ; Term =.. ['$VAR'|_] -> Size = 1
    ; atomic(Term) -> Size = 1
    ; Term =.. [_|Tail],
      term_size_list(Tail, 1, Size)
    ).
term_size_list([], Acc, Acc).
term_size_list([T|Ts], Acc, Size):-
    term_size(T,Size1),
    Acc1 is Size1 + Acc,
    term_size_list(Ts, Acc1, Size).

term_depth(Term, 0):-
    \+ compound(Term), !.
term_depth(Term, 0):-
    Term =.. ['$VAR'|_], !.
term_depth(Term, Depth):-
    compound(Term),
    Term =.. [_|Tail],
    maplist(term_depth, Tail, Depths),
    max_list(Depths, Max),
    Depth is Max + 1.

action_count_total(state(Tableau, Actions, _), AC):-
    length(Actions, AC0),
    tab_comp(todos, Tableau, Todos),
    action_count_total(Todos, AC0, AC).
action_count_total([], AC, AC).
action_count_total([T|Ts], Acc, AC):-
    T = [Goal, Path, _Lem],
    valid_actions_filter(Goal, Path, Actions),
    length(Actions, AC0),
    Acc1 is Acc + AC0,
    action_count_total(Ts, Acc1, AC).

numbervars_list([],_).
numbervars_list([A|As], From):-
    numbervars(A, From, _),
    numbervars_list(As, From).
