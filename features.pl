%%- -*-Mode: Prolog;-*--------------------------------------------------


:- use_module(library(assoc)).

%% enigma_features(+Formula,-Assoc,-Pairs)
%%
%% Compute the ENIGMA features (symbols and walks of length 2 and 3)
%% for a given formula.
%%
%% Features are hashed into numbers in [0 .. 262139]
%%
%% Speed: 86k MML formulas (includes printing) is done in about 1 minute:
%%
%%  :- tell(foo6708),time((fof(A,B,C,D,E),bag_of_walks_top(C,Res,P),write(A),write(P),nl,fail)).
%% 894,737,797 inferences, 68.100 CPU in 68.789 seconds (99% CPU, 13138587 Lips)

:- [hashtbl/prolog/nb_hashtbl].

% X must be ground!!!
cached_embed_list([],_,_,_,[]).
cached_embed_list([X|Xs],FHash,Range,Offset,[F|Fs]):-
    cached_embed(X,FHash,Range,Offset,F),
    cached_embed_list(Xs,FHash,Range,Offset,Fs).


cached_embed([],_,_,_,Pairs,Pairs):- !.
cached_embed(X,FHash,Range,Offset,Pairs):-
    ( nb_hashtbl_get(FHash,X-Offset,Pairs) -> true
    ; X = [H|T] ->
      ( nb_hashtbl_get(FHash,H-Offset,HPairs) -> true
      ; enigma_features_ground(H,Range,Offset,_,HPairs) ->
        nb_hashtbl_set(FHash,H-Offset,HPairs)
      ),
      cached_embed(T,FHash,Range,Offset,TPairs),
      merge_features(HPairs,TPairs,Pairs),
      nb_hashtbl_set(FHash,X-Offset,Pairs)
    ; enigma_features_ground(X,Range,Offset,_,Pairs),
      nb_hashtbl_set(FHash,X-Offset,Pairs)
    ).

enigma_features_ground(X,Range,Offset,Assoc,Pairs):-
    empty_assoc(Assoc),
    bag_of_walks(X,Range,Offset,Assoc,Res),
    assoc_to_list2(Res, Pairs).



merge_features_list([],Pairs,Pairs).
merge_features_list([F|Fs],Acc,Pairs):-
    merge_features(F,Acc,Acc1),
    merge_features_list(Fs,Acc1,Pairs).

merge_features(Xs,Ys,Merged):-
    merge_features(Xs,Ys,[],Merged).
merge_features([],Ys,RevAcc,Merged):-
    !,
    revapp(RevAcc,Ys,Merged).
merge_features(Xs,[],RevAcc,Merged):-
    !,
    revapp(RevAcc,Xs,Merged).
merge_features([X|Xs],[Y|Ys],RevAcc,Merged):-
    X = [Xkey,Xvalue],
    Y = [Ykey,Yvalue],
    (  Xkey = Ykey ->
           Value is Xvalue+Yvalue,
           merge_features(Xs,Ys,[[Xkey,Value]|RevAcc],Merged)
     ; Xkey < Ykey ->
           merge_features(Xs,[Y|Ys],[X|RevAcc],Merged)
     ; Xkey > Ykey ->
           merge_features([X|Xs],Ys,[Y|RevAcc],Merged)
    ).
revapp([],L,L).
revapp([A|As],Bs,L):-
    revapp(As,[A|Bs],L).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% just like library assoc_to_list/2, but returns tuples instead of K-V
assoc_to_list2(Assoc, List) :-
    assoc_to_list2(Assoc, List, []).
assoc_to_list2(t(Key,Val,_,L,R), List, Rest) :-
    assoc_to_list2(L, List, [[Key,Val]|More]),
    assoc_to_list2(R, More, Rest).
assoc_to_list2(t, List, List).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

enigma_features(X,Range,Offset,Assoc,Pairs):-
	bag_of_walks_top(X,Range,Offset,Assoc,Pairs).
	
bag_of_walks_top(X,Range,Offset,Res,Pairs) :- !,
	copy_term(X,X1),
	numbervars(X1,1000,_),
	empty_assoc(Assoc),
	bag_of_walks(X1,Range,Offset,Assoc,Res),
	assoc_to_list(Res, Pairs).

bag_of_walks([],_,_,In,In):- !.
bag_of_walks([H|T],Range,Offset,In,Out):-
    !,
	bag_of_walks(H,Range,Offset,In,S1),
	bag_of_walks(T,Range,Offset,S1,Out).
bag_of_walks(X,Range,Offset,In,Out):-
	X =.. [F|Args],
	%% possibly call term_hash on X here?
	%% - now default - comment for the triples
	term_hash(F,4,Range,F0), F1 is F0 + Offset,
    %% format("Feature: ~w -> ~w\n",[F,F1]),
	bag_insert(F1,In,In0),
	add_tuples_to_bag(F,Args,Range,Offset,In0,In1),
	bag_of_walks(Args, Range, Offset, In1, Out).

%% add_tuples_to_bag(+F,+Args,+Range,+Offset,+In,-Out)

add_tuples_to_bag(_,[],_,_,In,In):- !.
add_tuples_to_bag(F,[H|T],Range,Offset,In,Out):-
    (  H = [] ->
           Out1 = In
     ; H = [_|_] ->
           add_tuples_to_bag(F,H,Range,Offset,In,Out1)
     ; H =.. [H1|T1],    
	   X =.. [F|[H1]],
	   %% possibly call term_hash on X here?
	   %% - now default - comment for the triples
	   term_hash(X,4,Range,X0), X1 is X0 + Offset,
       %% format("Feature: ~w -> ~w\n",[X,X1]),
	   bag_insert(X1,In,Out1)
    ),
	add_triples_to_bag(F,H1,T1,Range,Offset,Out1,Out2),
	add_tuples_to_bag(F,T,Range,Offset,Out2,Out).

add_triples_to_bag(_,_,[],_,_,In,In):- !.
add_triples_to_bag(F,H1,[H|T],Range,Offset,In,Out):-
    (  H = [] ->
           Out1 = In
     ; H = [_|_] ->
           add_triples_to_bag(F,H1,H,Range,Offset,In,Out1)
     ; H =.. [H2|_],
	   X =.. [F|[H1,H2]],
	   %% possibly call term_hash on X here?
	   %% - now default - comment for the triples
	   term_hash(X,4,Range,X0), X1 is X0 + Offset,
       %% format("Feature: ~w -> ~w\n",[X,X1]),
	   bag_insert(X1,In,Out1)
    ),
	add_triples_to_bag(F,H1,T,Range,Offset,Out1,Out).

bag_insert(X,In,Out):-
	(get_assoc(X, In, V) ->
	 V1 is V + 1
	;
	 V1 is 1
	 ),
	put_assoc(X, In, V1, Out).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

top_two_symbols(TermList, TopSymbol1, TopSymbol2, TopFrequency1, TopFrequency2, TopHash1, TopHash2):-
    symbol_frequencies(TermList, Assoc),
    assoc_to_list(Assoc, Pairs),
    find_greatest_values(Pairs, xxx, xxx, 0, 0, TopSymbol1, TopSymbol2, TopFrequency1, TopFrequency2),
    term_hash(TopSymbol1, TopHash1),
    term_hash(TopSymbol2, TopHash2).

find_greatest_values([], S1, S2, F1, F2, S1, S2, F1, F2).
find_greatest_values([S-F|Pairs], AccS1, AccS2, AccF1, AccF2, S1, S2, F1, F2):-
    ( F > AccF1 -> find_greatest_values(Pairs, S, AccS1, F, AccF1, S1, S2, F1, F2)
    ; F > AccF2 -> find_greatest_values(Pairs, AccS1, S, AccF1, F, S1, S2, F1, F2)
    ; find_greatest_values(Pairs, AccS1, AccS2, AccF1, AccF2, S1, S2, F1, F2)
    ).

symbol_frequencies(TermList, Assoc):-
    empty_assoc(Assoc0),
    symbol_frequencies2_list(TermList, Assoc0, Assoc).

symbol_frequencies2(Term, Assoc0, Assoc):-
    ( var(Term) -> Assoc = Assoc0
    ; atomic(Term) -> bag_insert(Term, Assoc0, Assoc)
    ; Term =.. [H|T],
      bag_insert(H, Assoc0, Assoc1),
      symbol_frequencies2_list(T, Assoc1, Assoc)
    ).

symbol_frequencies2_list([], Assoc, Assoc).
symbol_frequencies2_list([L|Ls], Assoc0, Assoc):-
    symbol_frequencies2(L, Assoc0, Assoc1),
    symbol_frequencies2_list(Ls, Assoc1, Assoc).
