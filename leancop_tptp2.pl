%% File: leancop_tptp2.pl  -  Version: 1.2beta8  -  Date: 3 July 2015
%%
%% Purpose: 1. Translate formula from TPTP into leanCoP syntax
%%          2. Add equality axioms to the given formula
%%          3. Add axioms to support "distinct objects"
%%
%% Author:  Jens Otten
%% Web:     www.leancop.de
%%
%% Usage: leancop_tptp2(X,F). % where X is a problem file in TPTP
%%                            %  syntax and F the translated formula
%%        leancop_equal(F,G). % where F is a formula and G the
%%                            %  formula with added equality axioms
%%
%% Copyright: (c) 2008-2015 by Jens Otten
%% License:   GNU General Public License


distinct(off). %% switch on/off support for "distinct objects"


% definitions of logical connectives and quantifiers

% leanCoP syntax
:- op(1130, xfy, <=>). % equivalence
:- op(1110, xfy, =>).  % implication
%                      % disjunction (;)
%                      % conjunction (,)
:- op( 500, fy, ~).    % negation
:- op( 500, fy, all).  % universal quantifier
:- op( 500, fy, ex).   % existential quantifier
:- op( 500,xfy, :).

% TPTP syntax
:- op(1130, xfy, <~>).  % negated equivalence
:- op(1110, xfy, <=).   % implication
:- op(1100, xfy, '|').  % disjunction
:- op(1100, xfy, '~|'). % negated disjunction
:- op(1000, xfy, &).    % conjunction
:- op(1000, xfy, ~&).   % negated conjunction
:- op( 500, fy, !).     % universal quantifier
:- op( 500, fy, ?).     % existential quantifier
:- op( 400, xfx, =).    % equality
:- op( 300, xf, !).     % negated equality (for !=)
:- op( 299, fx, $).     % for $true/$false

% TPTP syntax to leanCoP syntax mapping

op_tptp2((A<=>B),(A1<=>B1),   [A,B],[A1,B1]).
op_tptp2((A<~>B),~((A1<=>B1)),[A,B],[A1,B1]).
op_tptp2((A=>B),(A1=>B1),     [A,B],[A1,B1]).
op_tptp2((A<=B),(B1=>A1),     [A,B],[A1,B1]).
op_tptp2((A|B),(A1;B1),       [A,B],[A1,B1]).
op_tptp2((A'~|'B),~((A1;B1)), [A,B],[A1,B1]).
op_tptp2((A&B),(A1,B1),       [A,B],[A1,B1]).
op_tptp2((A~&B),~((A1,B1)),   [A,B],[A1,B1]).
op_tptp2(~A,~A1,[A],[A1]).
op_tptp2((! [V]:A),(all V:A1),     [A],[A1]).
op_tptp2((! [V|Vars]:A),(all V:A1),[! Vars:A],[A1]).
op_tptp2((? [V]:A),(ex V:A1),      [A],[A1]).
op_tptp2((? [V|Vars]:A),(ex V:A1), [? Vars:A],[A1]).
op_tptp2($true,(true___=>true___),      [],[]).
op_tptp2($false,(false___ , ~ false___),[],[]).
op_tptp2(A=B,~(A1=B),[],[]) :- \+var(A), A=(A1!).
op_tptp2(P,P,[],[]).


%%% translate into leanCoP syntax

leancop_tptp2_source(File,F) :- leancop_tptp2(File,'',[_],F,_).

leancop_tptp2_source(File,F1,Source) :-
    leancop_tptp2_source(File,F), tptp_source(F,F1,Source).

leancop_tptp2(File,F) :- leancop_tptp2_source(File,F,_).

leancop_tptp2(File,AxPath,AxNames,F,Con) :-
    open(File,read,Stream),
    ( fof2cop(Stream,AxPath,AxNames,A,Con,File)
      -> close(Stream) ; close(Stream), fail ),
    ( Con=[] -> F=A ; A=[] -> F=Con ; F=(A=>Con) ).

fof2cop(Stream,AxPath,AxNames,F,Con,FileName) :-
    read(Stream,Term),
    ( Term=end_of_file -> F=[], Con=[]
    ; ( Term=..[Language,Name,Type,Fml|_], (Language = fof; Language=cnf) ->
        ( \+member(Name,AxNames) -> F3=[], Con=Con1
        ; fml2cop([Fml],[Fml1]), F2=(file(FileName,Name)^Fml1),
          ( Type=conjecture -> F3=[], Con=F2 ; F3=F2, Con=Con1 ) )
      ; ( Term=include(File,AxNames2) ; Term=include(File), AxNames2=[_] ) ->
        name(AxPath,AL), name(File,FL), append(AL,FL,AxL),
        name(AxFile,AxL), Con=Con1,
        ( exists(File) -> leancop_tptp2(File,'',AxNames2,F3,_) ;
          leancop_tptp2(AxFile,'',AxNames2,F3,_) )
      ),
      fof2cop(Stream,AxPath,AxNames,F1,Con1,FileName),
      ( F3=[] -> F=F1 ; F1=[] -> F=F3 ; F=(F3,F1) )
    ).

fml2cop([],[]).
fml2cop([F|Fml],[F1|Fml1]) :-
    op_tptp2(F,F1,FL,FL1) -> fml2cop(FL,FL1), fml2cop(Fml,Fml1).

tptp_source((A=>C),(A1=>C1),(SourceA=>SourceC)) :-
    tptp_source(A,A1,SourceA), tptp_source(C,C1,SourceC).
tptp_source((A,B),(A1,B1),(SourceA,SourceB)) :-
    tptp_source(A,A1,SourceA), tptp_source(B,B1,SourceB).
tptp_source((Source^F),F,Source).

%%% add equality axioms and distinct objects axioms

leancop_equal(F,F1) :-
    ( F=(A=>C) -> F2=((!)^A=>(!)^C) ; F2=((!)^F) ),
    leancop_equal_source(F2,F1,_).

leancop_equal_source(F,F1,Source) :-
    leancop_equal_source(F,F2), tptp_source(F2,F1,Source).

leancop_equal_source(F,F1) :-
    collect_predfunc([F],PL,FL,_,DLc,check),
    ( DLc\=[],distinct(on) ->
      collect_predfunc([F],_,_,CL,DL,union) ; DL=[] ),
    ( append(PL2,[(=,2)|PL3],PL), append(PL2,PL3,PL1) ;
      DLc\=[], PL1=PL ) -> basic_equal_axioms(F0),
    subst_pred_axioms(PL1,F2), (F2=[] -> F3=F0 ; F3=(F0,F2)),
    subst_func_axioms(FL,F4), (F4=[] -> F5=F3 ; F5=(F3,F4)),
    distinct_o_axioms(DL,CL,F6), (F6=[] -> F7=F5 ; F7=(F5,F6)),
    ( F=(A=>C) -> F1=((F7,A)=>C) ; F1=(F7=>F) ) ; F1=F.

basic_equal_axioms(F) :-
    Source=theory(equality),
    F=(Source^( all X:(X=X) ),
       Source^( all X:all Y:((X=Y)=>(Y=X)) ),
       Source^( all X:all Y:all Z:(((X=Y),(Y=Z))=>(X=Z)) )).

% generate substitution axioms

subst_pred_axioms([],[]).
subst_pred_axioms([(P,I)|PL],F) :-
    subst_axiom(A,B,C,D,E,I), subst_pred_axioms(PL,F1), P1=..[P|C],
    P2=..[P|D], E=(B,P1=>P2), Source=theory(equality),
    ( F1=[] -> F=(Source^A) ; F=((Source^A),F1) ).

subst_func_axioms([],[]).
subst_func_axioms([(P,I)|FL],F) :-
    subst_axiom(A,B,C,D,E,I), subst_func_axioms(FL,F1), P1=..[P|C],
    P2=..[P|D], E=(B=>(P1=P2)), Source=theory(equality),
    ( F1=[] -> F=(Source^A) ; F=((Source^A),F1) ).

subst_axiom((all X:all Y:E),(X=Y),[X],[Y],E,1):- !.
subst_axiom(A,B,[X|C],[Y|D],E,I) :-
    I>1, I1 is I-1, subst_axiom(A1,B1,C,D,E,I1),
    A=(all X:all Y:A1), B=((X=Y),B1).

% generate distinct objects axioms

distinct_o_axioms([],_,[]).
distinct_o_axioms([D|DL],CL,F) :-
    append(DL,CL,CL1), distinct_axioms(D,CL1,F1),
    distinct_o_axioms(DL,CL,F2),
    ( F1=[] -> F=F2 ; F2=[] -> F=F1 ; F=(F1,F2) ).

distinct_axioms(_,[],[]).
distinct_axioms(D,[C|CL],F) :-
    distinct_axioms(D,CL,F1), A=(~((D=C))), Source=theory(dist_obj),
    ( F1=[] -> F=(Source^A) ; F=((Source^A),F1) ).

% collect predicate/function/constant/distinct symbols

collect_predfunc([],[],[],[],[],_).
collect_predfunc([F|Fml],PL,FL,CL,DL,J) :-
    ( ( F=..[Op|F1], member(Op,['<=>','=>',';',',','~']) ;
        (F=..[all,_:F2] ; F=..[ex,_:F2] ; F=(_^F2)), F1=[F2] )
      -> collect_predfunc(F1,PL1,FL1,CL1,DL1,J) ;
         F=..[P|Arg], length(Arg,I), I>0
         ->  PL1=[(P,I)], collect_func(Arg,FL1,CL1,DL1,J) ;
             PL1=[], FL1=[], CL1=[], DL1=[] ),
    collect_predfunc(Fml,PL2,FL2,CL2,DL2,J), unionS(PL1,PL2,PL),
    unionS(FL1,FL2,FL), union(CL1,CL2,CL,J), union(DL1,DL2,DL,J).

collect_func([],[],[],[],_).
collect_func([F|FunL],FL,CL,DL,J) :-
    ( \+var(F), F=..[F1|Arg], F1\='.', length(Arg,I), I>0
      -> collect_func(Arg,Fl,CL1,DL1,J), unionS([(F1,I)],Fl,FL1) ;
         var(F)  -> FL1=[], CL1=[],  DL1=[] ;
         atom(F) -> FL1=[], CL1=[F], DL1=[] ;
                    FL1=[], CL1=[],  DL1=[F] ),
    collect_func(FunL,FL2,CL2,DL2,J),
    unionS(FL1,FL2,FL), union(CL1,CL2,CL,J), union(DL1,DL2,DL,J).

union(A,B,C,union) :- unionS(A,B,C).
union(A,B,C,check) :-
    A=[A1], \+atom(A1) -> C=A ; B=[B1], \+atom(B1) -> C=B ; C=[].

unionS([],L,L) :- !.
unionS(L,[],L) :- !.
unionS([H1|L1],[H2|L2],L3) :-
    H1@<H2 -> unionS(L1,[H2|L2],L4), L3=[H1|L4] ;
    H1@>H2 -> unionS(L2,[H1|L1],L4), L3=[H2|L4] ;
              unionS(L1,L2,L4), L3=[H1|L4].

