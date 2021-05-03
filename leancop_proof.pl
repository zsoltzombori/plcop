%% File: leancop_proof.pl  -  Version: 1.2beta8  -  Date: 3 July 2015
%%
%% Purpose: Presentation of connection proof found by leanCoP
%%
%% Author:  Jens Otten
%% Web:     www.leancop.de
%%
%% Usage:   leancop_proof(M,P). % where M is a matrix and P is the
%%                              %  connection proof found by leanCoP
%%                              %  e.g. M=[[q(a)],[-p],[p, -q(X)]],
%%                              %  P=[[q(a)],[[-(q(a)),p],[[-(p)]]]]
%%
%% Copyright: (c) 2009-2015 by Jens Otten
%% License:   GNU General Public License

:- assert(proof(leantptp)). % compact, connect, leantptp, readable

portray(false___):-
    print($false).
portray(true___):-
    print($true).
portray(=(X,Y)):-
    nonvar(X), X = !(X1),
    format("~p != ~p", [X1,Y]).


%%% output of leanCoP proof

leancop_proof(Mat,MatSource,Proof) :-
    proof(compact) -> leancop_compact_proof(Proof) ;
    proof(connect) -> leancop_connect_proof(Mat,Proof) ;
    proof(readable) -> leancop_readable_proof(Mat,Proof) ;
    leancop_leantptp_proof(Mat,MatSource,Proof).

%%% print lean TPTP proof

leancop_leantptp_proof(Mat,MatSource,Proof) :-
    write('%-----------------------------------------------------'),
    nl,
    prepare_clauses(Mat,Mat1),
    calc_proof(Mat1,Proof,Proof1,ClaList),
    print_clauses_tptp(MatSource,Mat1,ClaList,ClaList1),
    prepare_proof([Proof1],ClaList1,[Proof2]),
    print_leantptp_proof(Proof2),
    write('%-----------------------------------------------------'),
    nl.

%%% print compact proof

leancop_compact_proof(Proof) :-
    write('------------------------------------------------------'),
    nl,
    write('Compact Proof:'), nl,
    write('--------------'), nl,
    write(Proof), nl,
    write('------------------------------------------------------'),
    nl.

%%% print connection proof

leancop_connect_proof(Mat,Proof) :-
    write('------------------------------------------------------'),
    nl,
    write('Proof for the following clauses:'), nl,
    prepare_clauses(Mat,Mat1),
    calc_proof(Mat1,Proof,Proof1,ClaList),
    print_clauses(Mat1,ClaList,ClaList1), !,
    prepare_proof([Proof1],ClaList1,[Proof2]),
    write('Connection Proof:'), nl,
    write('-----------------'), nl,
    print_connect_proof(Proof2),
    write('------------------------------------------------------'),
    nl.

%%% print readable proof

leancop_readable_proof(Mat,Proof) :-
    write('------------------------------------------------------'),
    nl,
    print_explanations,
    write('Proof:'), nl,
    write('------'), nl, nl,
    write('Translation into (disjunctive) clausal form:'), nl,
    print_introduction,
    prepare_clauses(Mat,Mat1),
    calc_proof(Mat1,Proof,Proof1,_),
    print_clauses(Mat1,_,_),
    print_readable_proof(Proof1), nl,
    print_ending,
    write('------------------------------------------------------'),
    nl.

%%% calculate leanCoP proof

calc_proof(Mat,[Cla|Proof],[(Cla1,Num,Sub)|Proof1],[Num|ClaL]) :-
    ((Cla=[#|Cla1];Cla=[-!|Cla1]) -> true ; Cla1=Cla),
    clause_num_sub(Cla1,[],[],Mat,1,Num,Sub),
    calc_proof(Cla1,[],[],Mat,Proof,Proof1,ClaL).

%% calc_proof(Cla,_,_,_,Proof,_,_):-
%%     writeln(cla-Cla),
%%     write("   "), writeln(proof-Proof),
%%     ( Proof = [[Cla1|Proof1]|Proof2] -> write("   "), writeln(cla1-Cla1) ),
%%     fail.

calc_proof(_,_,_,_,[],[],[]):- !.

calc_proof(Cla,Path,Lem,Mat,[[Cla1|Proof]|Proof2],Proof1,ClaL) :-
    append(Cla2,[#|Cla3],Cla1), !, append(Cla2,Cla3,Cla4),
    append(Pro1,[[[-(#)]]|Pro2],Proof), append(Pro1,Pro2,Proof3),
    calc_proof(Cla,Path,Lem,Mat,[[Cla4|Proof3]|Proof2],Proof1,ClaL).

calc_proof([Lit|Cla],Path,Lem,Mat,[[Cla1|Proof]|Proof2],Prf,ClaL) :-
    (-NegLit=Lit -> true ;-Lit=NegLit),
    Cla1 = [NegL|Cla4],
    ( NegLit==NegL, length([_|Path],I) ->
      clause_num_sub(Cla1,Path,Lem,Mat,1,Num,Sub),
      Prf=[[([NegLit|Cla4],Num,Sub)|Proof3]|Proof4],
      calc_proof(Cla4,[I:Lit|Path],Lem,Mat,Proof,Proof3,ClaL1),
      (Lem=[I:J:_|_] -> J1 is J+1 ; J1=1),
      calc_proof(Cla,Path,[I:J1:Lit|Lem],Mat,Proof2,Proof4,ClaL2)
    ; NegL = paramodulation(_Lit, _Lit2, _Dir, _LHS,_RHS, _Cla),
      length([_|Path],I) ->
      clause_num_sub(Cla1,Path,Lem,Mat,1,Num,Sub),
      Prf=[[([NegL|Cla4],Num,Sub)|Proof3]|Proof4],
      calc_proof(Cla4,[I:Lit|Path],Lem,Mat,Proof,Proof3,ClaL1),
      (Lem=[I:J:_|_] -> J1 is J+1 ; J1=1),
      calc_proof(Cla,Path,[I:J1:Lit|Lem],Mat,Proof2,Proof4,ClaL2)
    ),
    union3([Num],ClaL1,ClaL3), union3(ClaL3,ClaL2,ClaL).

%%% determine clause number and substitution

clause_num_sub([NegLit],Path,Lem,[],_,R:Num,[[],[]]) :-
    (-NegLit=Lit;-Lit=NegLit), member(Num:J:LitL,Lem), LitL==Lit ->
    R=J ; member(Num:NegL,Path), NegL==NegLit -> R=r.

clause_num_sub(ClaX,Path,Lem,[Cla1|Mat],I,Num,Sub) :-
    ( ClaX = [paramodulation(_Lit, _Lit2, _Dir, LHS, RHS, Cla0)|_] ->
      ( select(#, Cla0, Cla00) -> true ; Cla00 = Cla0 ),
      Cla = [-(LHS=RHS)|Cla00]      
    ; Cla = ClaX
    ),

    ( append(Cla2,[L|Cla3],Cla1), append([L|Cla2],Cla3,Cla4),
      instance1(Cla,Cla4) ->
      Num=I, term_variables1(Cla4,Var), copy_term(Cla4,Cla5),
      term_variables(Cla5,Var1), Cla=Cla5, Sub=[Var,Var1]
    ; 
      I1 is I+1, clause_num_sub(ClaX,Path,Lem,Mat,I1,Num,Sub)
    ).

instance1(A,B) :-
    \+ \+ (term_variables1(A,VA), unify_with_occurs_check(A,B),
           term_variables1(A,VB), VA==VB).

term_variables1(V,[V]) :- var(V), !.
term_variables1(T,[]) :- ground(T), !.
term_variables1(A,V1) :- A=..[_,B|C],
    term_variables1(B,V2), term_variables1(C,V3), union3(V2,V3,V1).

union3([],L,L).
union3([X|T],L,L1) :-
    union3(T,L,L2), (member3(X,L) -> L1=L2 ; L1=[X|L2]).

member3(X,[Y|_]) :- X==Y, !.
member3(X,[_|T]) :- member3(X,T).

%%% prepare clauses and proof

prepare_clauses([],[]).
prepare_clauses([[-(#)]|Mat],Mat1) :- !, prepare_clauses(Mat,Mat1).
prepare_clauses([Cla|Mat],Mat1) :-
    append(Cla2,[#|Cla3],Cla), append(Cla2,Cla3,Cla1), !,
    prepare_clauses([Cla1|Mat],Mat1).
prepare_clauses([Cla|Mat],[Cla|Mat1]) :- prepare_clauses(Mat,Mat1).

prepare_proof([],_,[]).
prepare_proof(Proof,ClaL,Proof1) :-
    Proof=[[(Cla,Num,Sub)|Proof2]|Proof3],
    ( Num=(_:_) -> Num1=Num ; member((Num,Num1),ClaL) ) ->
    prepare_proof(Proof2,ClaL,Proof4),
    prepare_proof(Proof3,ClaL,Proof5),
    Proof1=[[(Cla,Num1,Sub)|Proof4]|Proof5].

%%% print lean TPTP leanCoP proof

print_leantptp_proof([(Cla,Num,Sub)|Proof]) :-
    print_leantptp_proof_step([],Cla,Num,Sub),
    print_leantptp_proof(Proof,[1]).

print_leantptp_proof([],_).

print_leantptp_proof([[(Cla,Num,Sub)|Proof]|Proof2],[I|J]) :-
    print_leantptp_proof_step([I|J],Cla,Num,Sub),
    print_leantptp_proof(Proof,[1,I|J]), I1 is I+1,
    print_leantptp_proof(Proof2,[I1|J]).

print_leantptp_proof_step(I,Cla,Num,Sub) :-
    write('cnf(\''), append(I,[1],I1), print_step(I1),
    write('\',plain,'), print(Cla),
    ( Num=(R:N) -> append(_,[H|T],I1), N1 is N+1, length([H|T],N1),
      ( R=r -> write(',reduction(\''), print_step(T), write('\'') ;
               write(',lemmata(\''), print_step(T), write('\'') ) ;
      ( I=[] -> write(',start(') ; write(',extension(') ),
      print(Num)
    ),
    ( Sub=[[],_] -> write(')).')
    % ; write(',bind('), write(Sub), write('))).')
    ; write(',bind(['), write_concat(Sub, ', '), write(']))).')
    ),
    nl.

write_concat([], _).
write_concat([L|Ls], Sep):-
    print(L),
    write_concat2(Ls, Sep).
write_concat2([], _).
write_concat2([L|Ls], Sep):-
    write(Sep), print(L),
    write_concat2(Ls, Sep).

%%% print connection leanCoP proof

print_connect_proof([(Cla,Num,Sub)|Proof]) :-
    print_connect_proof_step([],Cla,Num,Sub),
    print_connect_proof(Proof,[1]).

print_connect_proof([],_).

print_connect_proof([[(Cla,Num,Sub)|Proof]|Proof2],[I|J]) :-
    print_connect_proof_step([I|J],Cla,Num,Sub),
    print_connect_proof(Proof,[1,I|J]), I1 is I+1,
    print_connect_proof(Proof2,[I1|J]).

print_connect_proof_step(I,Cla,Num,Sub) :-
    append(I,[1],I1), print_step(I1), write('  '), write(Cla),
    ( Num=(R:N) -> append(_,[H|T],I1), N1 is N+1, length([H|T],N1),
      ( R=r -> write('   (reduction:'), print_step(T) ;
               write('   (lemmata:'), print_step(T) ) ;
      write('   ('), write(Num) ), write(')  '),
    ( Sub=[[],_] -> true ; write('substitution:'), write(Sub) ), nl.

%%% print readable leanCoP proof

print_readable_proof([(Cla,Num,Sub)|Proof]) :-
    print_clause([],Cla,Num,Sub),
    print_readable_proof(Proof,[1]).

print_readable_proof([],_).

print_readable_proof([[(Cla,Num,Sub)|Proof]|Proof2],[I|J]) :-
    print_proof_step([I|J],Cla,Num,Sub),
    print_readable_proof(Proof,[1,I|J]), I1 is I+1,
    print_readable_proof(Proof2,[I1|J]).

%%% print leanCoP proof step

print_proof_step(I,[Lit|Cla],Num,Sub) :-
    print_assume(I,Lit),
    ( Num=(R:N) -> append(_,[H|T],I), length([H|T],N),
      (R=r -> print_redu(I,[H|T]) ; print_fact(I,[R|T])) ;
      print_clause(I,Cla,Num,Sub) ).

print_assume(I,Lit) :-
    print_step(I), write(' Assume '), (-NegLit=Lit;-Lit=NegLit) ->
    write(NegLit), write(' is '), write('false.'), nl.

print_clause(I,Cla,Num,Sub) :-
    print_sp(I), write(' Then clause ('), write(Num), write(')'),
    ( Sub=[[],[]] -> true ; write(' under the substitution '),
                            write(Sub), nl, print_sp(I) ),
    ( Cla=[] -> write(' is true.') ;
      write(' is false if at least one of the following is false:'),
      nl, print_sp(I), write(' '), write(Cla) ), nl.

print_redu(I,J) :-
    print_sp(I), write(' This is a contradiction to assumption '),
    print_step(J), write('.'), nl.

print_fact(I,J) :-
    print_sp(I), write(' This assumption has been refuted in '),
    print_step(J), write('.'), nl.

%%% print (tptp) clauses, print step number, print spaces

print_clauses(Mat,ClaL,ClaL1) :-
    print_clauses(Mat,1,1,ClaL,ClaL1).

print_clauses([],_,_,_,[]) :- nl.
print_clauses([Cla|Mat],I,J,ClaL,ClaL1) :-
    ( \+ member(I,ClaL) -> J1=J, ClaL1=ClaL2;
      write(' ('), write(J), write(')  '),
      write(Cla), nl, J1 is J+1, ClaL1=[(I,J)|ClaL2] ), 
    I1 is I+1, print_clauses(Mat,I1,J1,ClaL,ClaL2).

print_clauses_tptp(MatSource,Mat,ClaL,ClaL1) :-
    print_fofs_tptp(MatSource,[],1,1,ClaL,ClaL2),
    print_cnfs_tptp(Mat,1,ClaL2,ClaL1).

print_fofs_tptp([],_,_,_,_,[]) :- nl.
print_fofs_tptp([Src|MatSrc],UsedSrc,I,J,ClaL,ClaL1) :-
    ( \+ member(I,ClaL) -> J1=J, ClaL1=ClaL2, UsedSrc1=UsedSrc ;
      ( (member(Src,UsedSrc);Src\=file(_,_)) -> UsedSrc1=UsedSrc ;
        UsedSrc1=[Src|UsedSrc], Src=file(File,FofName),
        open(File,read,Stream),
        op( 400, xfx, =),
        print_fofs_read(Stream,FofName,Fml,Type),
        op( 700, xfx, =),
        format("fof(~q, ~q, ", [FofName, Type]),
        ( Fml =.. [H,':'(Vars, Formula)], (H='!';H='?') ->
          format("~q~p : ~p, ", [H, Vars, Formula])
        ; format("~p, ", [Fml])
        ),
        format("~q).\n", [Src]),        
        % format("fof(~q, ~q, ~q, ~q).\n", [FofName, Type, Fml, Src]),
        % writeq(fof(FofName,Type,Fml,Src)), write('.'), nl,
        close(Stream)
      ),
      ( Src=file(_,Src1) -> true ; Src1=Src ),
      J1 is J+1, ClaL1=[(I,J,Src1)|ClaL2]
    ),
    I1 is I+1, print_fofs_tptp(MatSrc,UsedSrc1,I1,J1,ClaL,ClaL2).

print_fofs_read(Stream,Name,Fml,Type) :-
    read(Stream,Term),
    Term=..[fof,Name,Type,Fml|_] -> true ;
    print_fofs_read(Stream,Name,Fml,Type).

print_cnfs_tptp([],_,_,[]) :- nl.
print_cnfs_tptp([Cla|Mat],I,ClaL,ClaL1) :-
    ( member((I,J,Src),ClaL) ->
      ( Src=theory(_) -> Src1=Src ; Src1=clausify(Src) ),
      format("cnf(~w, plain,~p, ~p).\n", [J, Cla, Src1]),
      % writeq(cnf(J,plain,Cla,Src1)), write('.'), nl,
      ClaL1=[(I,J)|ClaL2] ; ClaL1=ClaL2
    ),
    I1 is I+1, print_cnfs_tptp(Mat,I1,ClaL,ClaL2).

print_step([I]) :- !, write(I).
print_step([I,J|T]) :- print_step([J|T]), write('.'), write(I).

print_sp([]).
print_sp([I]) :- atom(I), !, write(' ').
print_sp([I]) :- I<1.
print_sp([I]) :- I>=1, write(' '), I1 is I/10, print_sp([I1]).
print_sp([I,J|T]) :- print_sp([J|T]), write(' '), print_sp([I]).

%%% print standard proof explanations, introduction/ending of proof

print_explanations :-
 write('Explanations for the proof presented below:'), nl,
 write('- to solve unsatisfiable problems they are negated'), nl,
 write('- equality axioms are added if required'), nl,
 write('- distinct objects axioms are added if required'), nl,
 write('- terms and variables are represented by Prolog terms'), nl,
 write('  and Prolog variables, negation is represented by -'), nl,
 write('- I^[t1,..,tn] represents the atom P_I(t1,..,tn)'), nl,
 write('  or the Skolem term f_I(t1,t2,..,tn) introduced'), nl,
 write('  during the clausal form translation'), nl,
 write('- the substitution [[X1,..,Xn],[t1,..,tn]] represents'), nl,
 write('  the assignments X1:=t1, .., Xn:=tn'), nl, nl.

print_introduction :-
 write('We prove that the given clauses are valid, i.e. for'), nl,
 write('a given substitution they evaluate to true for all'), nl,
 write('interpretations. The proof is by contradiction:'), nl,
 write('Assume there is an interpretation so that the given'), nl,
 write('clauses evaluate to false. Then in each clause there'), nl,
 write('has to be at least one literal that is false.'), nl, nl.

print_ending :-
 write('Therefore there is no interpretation that makes all'), nl,
 write('given clauses simultaneously false. Hence the given'), nl,
 write('clauses are valid.'), nl,
 write('                                             q.e.d.'), nl.
