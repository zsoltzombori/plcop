%% File: leancop21_swi.pl  -  Version: 2.1  -  Date: 30 Aug 2008
%%
%%         "Make everything as simple as possible, but not simpler."
%%                                                 [Albert Einstein]
%%
%% Purpose: leanCoP: A Lean Connection Prover for Classical Logic
%%
%% Author:  Jens Otten
%% Web:     www.leancop.de
%%
%% Usage: prove(M,P).    % where M is a set of clauses and P is
%%                       %  the returned connection proof
%%                       %  e.g. M=[[q(a)],[-p],[p,-q(X)]]
%%                       %  and  P=[[q(a)],[[-(q(a)),p],[[-(p)]]]]
%%        prove(F,P).    % where F is a first-order formula and
%%                       %  P is the returned connection proof
%%                       %  e.g. F=((p,all X:(p=>q(X)))=>all Y:q(Y))
%%                       %  and  P=[[q(a)],[[-(q(a)),p],[[-(p)]]]]
%%        prove2(F,S,P). % where F is a formula, S is a subset of
%%                       %  [nodef,def,conj,reo(I),scut,cut,comp(J)]
%%                       %  (with numbers I,J) defining attributes
%%                       %  and P is the returned connection proof
%%
%% Copyright: (c) 1999-2008 by Jens Otten
%% License:   GNU General Public License


:- [def_mm].  % load program for clausal form translation
:- dynamic(pathlim/0), dynamic(lit/4).
:- dynamic(option/1).

%%% prove matrix M / formula F

prove2(F,Proof) :- prove2(F,[cut,comp(7)],Proof).

prove2(F,Set,Proof) :-
    (F=[_|_] -> M=F ; make_matrix(F,M,Set)),
    retractall(lit(_,_,_,_)), (member([-(#)],M) -> S=conj ; S=pos),
    assert_clauses(M,S),
    retractall(option(_)),
    findall(_, ( member(Se,Set), assert(option(Se)) ), _ ),
    prove(1,Proof).
    
prove(PathLim,Proof) :-
    \+option(scut) -> prove([-(#)],[],PathLim,[],[Proof]) ;
    lit(#,_,C,_) -> prove(C,[-(#)],PathLim,[],Proof1),
    Proof=[C|Proof1].
prove(PathLim,Proof) :-
    option(comp(Limit)), PathLim=Limit ->
        prove(1,Proof)
    ; (option(comp(_));retract(pathlim)) ->
          PathLim1 is PathLim+1, prove(PathLim1,Proof).

%%% leanCoP core prover

prove([],_,_,_,[]).

prove([Lit|Cla],Path,PathLim,Lem,Proof) :-
    Proof=[[[NegLit|Cla1]|Proof1]|Proof2],
    \+ (member(LitC,[Lit|Cla]), member(LitP,Path), LitC==LitP),
    (-NegLit=Lit;-Lit=NegLit) ->
        ( member(LitL,Lem), Lit==LitL, Cla1=[], Proof1=[]
         ;

         % collect all candidates for reduction and extension
         valid_actions(Lit,NegLit,Path,Actions),
         
         ( option(guidance) ->
               maplist(extract_features,Actions,AFeatures),
               extract_features(Lit, GFeatures),
               extract_features(Path, PFeatures),
               guidance(GFeatures,PFeatures,AFeatures,Ordering),
               reorder(Ordering,Actions,Reordered)
          ; Reordered = Actions
         ),
         
         writeln(Actions),
         writeln(Reordered),

         % TODO this cannot handle paramodulation steps
         ( member(red(NegLit), Reordered),
           Cla1=[], Proof1=[]
          ; member(ext(NegLit,Cla1,Grnd1),Reordered),
            ( Grnd1=g -> true
             ; length(Path,K),
               K<PathLim -> true
             ; \+ pathlim -> assert(pathlim), fail
            ),
           prove(Cla1,[Lit|Path],PathLim,Lem,Proof1)
         )
        ),
        ( option(cut) -> ! ; true ),
        prove(Cla,Path,PathLim,[Lit|Lem],Proof2).

valid_actions2([],_,[]).
valid_actions2([Lit|_],Path,Actions):-
    (-NegLit=Lit;-Lit=NegLit), !,
    valid_actions(Lit, NegLit,Path,Actions).

% valid_actions(+Lit, +NegLit,+Path,-Actions)
% Actions is all non-deterministic (reduction and extension and paramodulation) steps
valid_actions(Lit, NegLit,Path,Actions):-
    select_unifiable(Path,NegLit,Reductions),
    select_unifiable_contras(NegLit,Extensions),
    select_paramodulation(Lit,Paramodulations),
    append([Reductions,Extensions,Paramodulations],Actions).

%%% write clauses into Prolog's database
assert_clauses([],_).
assert_clauses([C|M],Set) :-
    (Set\=conj, \+member(-_,C) -> C1=[#|C] ; C1=C),
    (ground(C) -> G=g ; G=n), assert_clauses2(C1,[],G),
    assert_clauses(M,Set).

assert_clauses2([],_,_).
assert_clauses2([L|C],C1,G) :-
    assert_renvar([L],[L2]), append(C1,C,C2), append(C1,[L],C3),
    assert(lit(L2,L,C2,G)), assert_clauses2(C,C3,G).

assert_renvar([],[]).
assert_renvar([F|FunL],[F1|FunL1]) :-
    ( var(F) -> true ; F=..[Fu|Arg], assert_renvar(Arg,Arg1),
      F1=..[Fu|Arg1] ), assert_renvar(FunL,FunL1).



% select_unifiable_reds(List, E, Res):
% Res is a subsequence of List wrapped in red/1 such that elements of Res are all unifiable with E
select_unifiable([],_,[]).
select_unifiable([L|List], E, Res):-
    ( \+(unify_with_occurs_check(L, E)) -> Res=Res2
     ;Res=[red(L)|Res2]
    ),
    select_unifiable(List,E,Res2).

select_unifiable_contras(E, Contras):-
    findall( ext(NegL,Cla1,Grnd1), (
                 lit(E,NegL,Cla1,Grnd1),
                 \+(\+(unify_with_occurs_check(E,NegL)))
             ), Contras
           ).

select_paramodulation(Lit, Paramodulations):-
    findall(para(Pos, LHS, RHS, Cla1, Dir), (
                                             lit(-(_=_), -(LHS=RHS), Cla1, _Grnd1),
                                             \+ LHS == RHS,
                                             position(Lit, Pos, Term),
                                             nonvar(Term),
                                             ( \+(\+(unify_with_occurs_check(Term,LHS))), From=LHS, To=RHS, Dir=l2r
                                             ; \+(\+(unify_with_occurs_check(Term,RHS))), From=RHS, To=LHS, Dir=r2l
                                             ),
                                             nonvar(From),
                                             %% make sure no variables are introduced due to the rewrite
                                             copy_term([From,To], [From2,To2]),
                                             numbervars(From2, 0, _),
                                             ground(To2)
                                            ), Paramodulations
           ).

position(X, [], X).
position(S^Args, [], S^Args):- !.
position(X, [P|Pos], Term):-
    nonvar(X),
    \+ atomic(X),
    X =.. [_|Args],
    nth0(P, Args, Arg),
    position(Arg, Pos, Term).

replace_term_in_pos(_, [], To, To):- !.
replace_term_in_pos(X, [P|Pos], To, Y):-
    nonvar(X),
    \+ atomic(X),
    X =.. [H|Args],
    length(ArgsBefore, P),
    append(ArgsBefore, [Arg|ArgsAfter], Args),
    replace_term_in_pos(Arg, Pos, To, Arg2),
    append(ArgsBefore, [Arg2|ArgsAfter], Args2),
    Y =.. [H|Args2].
                

% reorder(Ordering,Actions,Reordered),
% Ordering contains indices for sorting Actions into Reordered
reorder([],_,[]).
reorder([O|Os],Actions,[A|Rs]):-
    nth0(O,Actions,A),
    reorder(Os,Actions,Rs).

extract_features(exp(NegL,Cla,_Grnd),Features):-
    !,
    extract_features(expansionXXX([NegL|Cla]),Features).
extract_features(red(NegLit),Features):-
    !,
    extract_features(reductionXXX(NegLit),Features).
extract_features(Exp,Features):-
    collect_symbols(Exp,Features1),
    findall(H, (
                member(F,Features1),
                term_hash(F,H)
            ), Features
           ).

collect_symbols(X,[]):- var(X), !.
collect_symbols([],[]):- !.
collect_symbols(X,[X]):- atomic(X), !.
collect_symbols([L|Ls],Features):-
    !,
    maplist(collect_symbols,[L|Ls],FeatureList),
    append(FeatureList,Features1),
    sort(Features1,Features).
collect_symbols(X,Features):-
    X=..[H|Tail],
    collect_symbols(Tail,Features2),
    sort([H|Features2],Features).
                        
                   
                        

%%% collect nonvar symbols from term
% taken from malecop_distro1311
%% collect_symbols_top(Xs,Ps,Ls):-
%%         maplist(collect_predicate_symbols,Xs,Qs,LRs),
%%         sort(Qs,Ps),
%%         append(LRs,Rs),
%% 	maplist(collect_symbols,Rs,L1),!,
%% 	append(L1,L2),
%% 	flatten(L2,L3),
%% 	sort(L3,Ls).

%% collect_predicate_symbols(-X,P,As) :- X=..[P|As].
%% collect_predicate_symbols(X,P,As)  :- X=..[P|As].

%% collect_predicate_symbols([],[]).

%% collect_symbols(X,[]):- var(X),!.
%% collect_symbols(X,[X]):- atomic(X),!.
%% collect_symbols(X1,T2):-
%% 	X1 =.. [H1|T1],
%% 	maplist(collect_symbols,T1,T3),
%% 	append(T3,T4),
%% 	flatten(T4,T5),
%% 	sort([H1|T5],T2).
