%% Basic functions for accessing different statistics about cluses.


collapse_vars(X):-
    ( var(X) -> X=var
    ; atomic(X) -> true
    ; X = [_|_] -> maplist(collapse_vars, X)
    ; X =.. [_|Args], maplist(collapse_vars, Args)
    ).

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