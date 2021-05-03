test(Formula):-
    test(Formula, [binary, loopelim]).
test(Formula, Options):-
    ( member(unary, Options) -> Encoding = unary
    ; member(binary, Options) -> Encoding = binary
    ; Encoding = none
    ),
    transform(Formula, Encoding, Formula2),
    writeln(Formula2),
    execute(Formula2, [], Proof),
    findall(Step, (
                   nth1(I, Proof, Step),
                   format("~w: ~w\n", [I, Step])
                  ), _
           ).

transform(X, none, X):- !.    
transform(X, _, X):-
    var(X), !.
transform(X, Encoding, Y):-
    integer(X), !,
    transform_number(Encoding, X, Y).
transform(X, _, X):-
    atomic(X), !.
transform(X, Encoding, Y):-
    X =.. [H|Args],
    length(Args, L), length(Args2, L),
    ( H = (=) -> H2 = eq
    ; H = (+) -> H2 = plus
    ; H = (*) -> H2 = mult
    ; H2 = H
    ),
    Y =.. [H2|Args2],
    transform_list(Args, Encoding, Args2).

transform_list([], _, []).
transform_list([A|As], Encoding, [B|Bs]):-
    transform(A, Encoding, B),
    transform_list(As, Encoding, Bs).

transform_number(_, 0, o):- !.
transform_number(unary, N, s(Y)):- !,
    N1 is N-1,
    transform_number(unary, N1, Y).
transform_number(binary, N, Y):- !,
    N1 is N div 2,
    ( N mod 2 =:= 0 -> Y = bit0(Y1) ; Y = bit1(Y1) ),
    transform_number(binary, N1, Y1).


execute(true, _, []):- !.
execute((G1, G2), Path, Proof):- !,
    execute(G1, Path, Proof0),
    execute(G2, Path, Proof1),
    append(Proof0, Proof1, Proof).
execute(Goal, Path, Proof):-
    ( has_loop(Goal, Path) -> fail
    ; execute_special(Goal, Proof) -> true
    ; reduction(Goal, Path, Proof)
    ; extension(Goal, Path, Proof)
    ).


negate(neg(Goal), Goal):- !.
negate(Goal, neg(Goal)).

execute_special(Goal, []):-
    ( Goal = ground(_)
    ; Goal = var(_)
    ; Goal = nonvar(_)
    ; Goal = number(_)
    ; Goal = (_=_)
    ), !,
    call(Goal).

has_loop(Goal, Path):-
    member(G, Path), G == Goal, !.

reduction(Goal, Path, [red(Clause)]):-
    negate(Goal, NegGoal),
    member(NegGoal, Path),
    copy_term(Goal-NegGoal, Clause).

extension(Goal, Path, [ext(Clause)|Proof1]):- % extension
    clause(Goal, Body),
    copy_term(Goal-Body, Clause),
    execute(Body, [Goal|Path], Proof1).
