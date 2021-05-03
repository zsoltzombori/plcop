%% File: leancop_defmm.pl  -  Version: 1.2beta8  -  Date: 3 July 2015
%%
%% Purpose: Transform first-order formulae into clausal form
%%
%% Author:  Jens Otten
%% Web:     www.leancop.de
%%
%% Usage:   make_matrix(F,S,M).  % where F is a first-order formula,
%%                               % S is a list of settings, and M is
%%                               % the (definitional) clausal form
%%
%% Example: make_matrix(ex Y: (all X: ((p(Y) => p(X))) ),[],Matrix).
%%          Matrix = [[-(p(X1))], [p(1 ^ [X1])]]
%%
%% Copyright: (c) 1999-2015 by Jens Otten
%% License:   GNU General Public License


% definitions of logical connectives and quantifiers

:- op(1130, xfy, <=>). % equivalence
:- op(1110, xfy, =>).  % implication
%                      % disjunction (;)
%                      % conjunction (,)
:- op( 500, fy, ~).    % negation
:- op( 500, fy, all).  % universal quantifier
:- op( 500, fy, ex).   % existential quantifier
:- op( 500,xfy, :).


% ------------------------------------------------------------------
%  make_matrix(+Fml,+Setting,-Matrix)
%    -  transform first-order formula into set of clauses (matrix)
%
%  Fml, Matrix: first-order formula and matrix
%
%  Settings: list of settings, which can contain def, nodef and conj;
%            if it contains nodef/def, no definitional transformation
%            or a complete definitional transformation is done,
%            otherwise a definitional transformation is done for
%            the conjecture and the standard transformation is done
%            for the axioms; conjecture is marked if conj is given
%
%  Syntax of Fml: negation '~', disjunction ';', conjunction ',',
%      implication '=>', equivalence '<=>', universal/existential
%      quantifier 'all X:<Formula>'/'ex X:<Formula>' where 'X' is a
%      Prolog variable, and atomic formulae are Prolog atoms.
%
%  Example: make_matrix(ex Y:(all X:((p(Y) => p(X)))),[],Matrix).
%           Matrix = [[-(p(X1))], [p(1 ^ [X1])]]

make_matrix(Fml,Set,Matrix) :- make_matrix(Fml,Set,Matrix,_).

make_matrix(Fml,Set,Matrix,MatSource) :-
    univar(Fml,[],F3),
    ( F3=Source^(A3=>C3) -> F1=(Source^A3=>Source^C3) ; F1=F3 ),
    ( member(conj,Set), F1=(A=>C) -> F2=((A,#)=>(#,C)) ; F2=F1 ),
    ( member(nodef,Set) ->
       def_nnf(F2,NNF,1,_,nnf), dnf(NNF,DNF)
       ;
       \+member(def,Set), F2=(B=>D) ->
        def_nnf(~(B),NNF,1,J,nnf), dnf(NNF,DNF1),
        def_nnf(D,DNF2,J,_,def), DNF=(DNF2;DNF1)
        ;
        def_nnf(F2,DNF,1,_,def)
    ),
    mat(DNF,M),
    ( member(reo(I),Set) -> mreorder(M,M1,I) ; M1=M ),
    ( member(lit_reo(J), Set) -> lreorder(M1, M2, J) ; M2 = M1),
    ( \+ (member(Cla,M2), member((0^_),Cla)) ->  Matrix=M2,
      MatSource=[] ; mat_source(M2,Matrix,MatSource) ).

% ------------------------------------------------------------------
%  def_nnf(+Fml,-DEF)  -  transform formula into a definitional
%                         Skolemized negation normal form (DEF)
%  Fml, DEF: first-order formula and formula in DEF
%
%  Example: def_nnf(ex Y:(all X:((p(Y) => p(X)))),DEF,def).
%           DEF = ~ p(X1) ; p(1 ^ [X1])

def_nnf(Fml,DEF,I,I1,Set) :- def(Fml,[],NNF,DEF1,_,I,I1,Set),
                             dnf(NNF,DEF2), def(DEF1,DEF2,DEF,[]).

def([],Fml,Fml,_).
def([0^Src^D|DL],F,Fml,_) :- !, append(D,DL,L1), def(L1,F,Fml,Src).
def([(A,(B;C))|DL],F,Fml,Src) :- !, def([(A,B),(A,C)|DL],F,Fml,Src).
def([A|DL],F,Fml,[]) :- !, def(DL,(A;F),Fml,[]).
def([A|DL],F,Fml,Src) :- def(DL,(((0^Src),A);F),Fml,Src).

def(Fml,FreeV,NNF,DEF,Paths,I,I1,Set) :-
    ( Fml = ~(~A)      -> Fml1 = A;
      Fml = ~(all X:F) -> Fml1 = (ex X: ~F);
      Fml = ~(ex X:F)  -> Fml1 = (all X: ~F);
      Fml = ~((A ; B)) -> Fml1 = ((~A , ~B));
      Fml = ~((A , B)) -> Fml1 = (~A ; ~B);
      Fml = (A => B)   -> Fml1 = (~A ; B);
      Fml = ~((A => B))-> Fml1 = ((A , ~B));
      Fml = (A <=> B)  ->
      ( Set=def        -> Fml1 = ((A => B) , (B => A));
                          Fml1 = ((A , B) ; (~A , ~B)) );
      Fml = ~((A<=>B)) -> Fml1 = ((A , ~B) ; (~A , B)) ), !,
    def(Fml1,FreeV,NNF,DEF,Paths,I,I1,Set).

def((ex X:F),FreeV,NNF,DEF,Paths,I,I1,Set) :- !,
    def(F,[X|FreeV],NNF,DEF,Paths,I,I1,Set).

def((all X:Fml),FreeV,NNF,DEF,Paths,I,I1,Set) :- !,
    copy_term((X,Fml,FreeV),((I^FreeV),Fml1,FreeV)), I2 is I+1,
    def(Fml1,FreeV,NNF,DEF,Paths,I2,I1,Set).

def((A ; B),FreeV,NNF,DEF,Paths,I,I1,Set) :- !,
    def(A,FreeV,NNF1,DEF1,Paths1,I,I2,Set),
    def(B,FreeV,NNF2,DEF2,Paths2,I2,I1,Set),
    append(DEF1,DEF2,DEF), Paths is Paths1 * Paths2,
    (Paths1 > Paths2 -> NNF = (NNF2;NNF1);
                        NNF = (NNF1;NNF2)).

def((A , B),FreeV,NNF,DEF,Paths,I,I1,Set) :- !,
    def(A,FreeV,NNF3,DEF3,Paths1,I,I2,Set),
    ( NNF3=(_;_), Set=def -> append([(~I2^FreeV,NNF3)],DEF3,DEF1),
                             NNF1=I2^FreeV, I3 is I2+1 ;
                             DEF1=DEF3, NNF1=NNF3, I3 is I2 ),
    def(B,FreeV,NNF4,DEF4,Paths2,I3,I4,Set),
    ( NNF4=(_;_), Set=def -> append([(~I4^FreeV,NNF4)],DEF4,DEF2),
                             NNF2=I4^FreeV, I1 is I4+1 ;
                             DEF2=DEF4, NNF2=NNF4, I1 is I4 ),
    append(DEF1,DEF2,DEF), Paths is Paths1 + Paths2,
    (Paths1 > Paths2 -> NNF = (NNF2,NNF1);
                        NNF = (NNF1,NNF2)).

def(~(Src^F),FreeV,((0^Src),NNF),[0^Src^DEF],Paths,I,I1,Set) :- !,
    def(~(F),FreeV,NNF,DEF,Paths,I,I1,Set).

def(Src^F,FreeV,((0^Src),NNF),[0^Src^DEF],Paths,I,I1,Set) :- !,
    def(F,FreeV,NNF,DEF,Paths,I,I1,Set).

def(Lit,_,Lit,[],1,I,I,_).

% ------------------------------------------------------------------
%  dnf(+NNF,-DNF)  -  transform formula in NNF into formula in DNF
%  NNF, DNF: formulae in NNF and DNF
%
%  Example: dnf(((p;~p),(q;~q)),DNF).
%           DNF = (p, q ; p, ~ q) ; ~ p, q ; ~ p, ~ q

dnf(((A;B),C),(F1;F2)) :- !, dnf((A,C),F1), dnf((B,C),F2).
dnf((A,(B;C)),(F1;F2)) :- !, dnf((A,B),F1), dnf((A,C),F2).
dnf((A,B),F) :- !, dnf(A,A1), dnf(B,B1),
    ( (A1=(_C;_D);B1=(_C;_D)) -> dnf((A1,B1),F) ; F=(A1,B1) ).
dnf((A;B),(A1;B1)) :- !, dnf(A,A1), dnf(B,B1).
dnf(Lit,Lit).

% ------------------------------------------------------------------
%  mat(+DNF,-Matrix)  -  transform formula in DNF into matrix
%  DNF, Matrix: formula in DNF, matrix
%
%  Example: mat(((p, q ; p, ~ q) ; ~ p, q ; ~ p, ~ q),Matrix).
%           Matrix = [[p, q], [p, -(q)], [-(p), q], [-(p), -(q)]]

mat((A;B),M) :- !, mat(A,MA), mat(B,MB), append(MA,MB,M).
mat((A,B),M) :- !, (mat(A,[CA]),mat(B,[CB]) -> union2(CA,CB,M);M=[]).
mat(~Lit,[[-Lit]]) :- !.
mat(Lit,[[Lit]]).

mat_source([],[],[]).
mat_source([[-(#)]|M],[[-(#)]|M1],MS) :- !, mat_source(M,M1,MS).
mat_source([C|M],[C1|M1],[Src|MS]) :-
    append(C2,[0^Src|C3],C) -> append(C2,C3,C1), mat_source(M,M1,MS).

% ------------------------------------------------------------------
%  univar(+Fml,[],-Fml1)  -  rename variables
%  Fml, Fml1: first-order formulae
%
%  Example: univar((all X:(p(X) => (ex X:p(X)))),[],F1).
%           F1 = all Y : (p(Y) => ex Z : p(Z))

univar(X,_,X)  :- (atomic(X);var(X);X==[[]]), !.
univar(F,Q,F1) :-
    F=..[A,B|T], ( (A=ex;A=all) -> B=(X:C), delete2(Q,X,Q1),
    copy_term((X,C,Q1),(Y,D,Q1)), univar(D,[Y|Q],D1), F1=..[A,Y:D1] ;
    univar(B,Q,B1), univar(T,Q,T1), F1=..[A,B1|T1] ).

% ------------------------------------------------------------------
%  union2/member2 - union and member for lists without unification

union2([],L,[L]).
union2([X|L1],L2,M) :- member2(X,L2), !, union2(L1,L2,M).
union2([X|_],L2,M)  :- (-Xn=X;-X=Xn) -> member2(Xn,L2), !, M=[].
union2([X|L1],L2,M) :- union2(L1,[X|L2],M).

member2(X,[Y|_]) :- X==Y, !.
member2(X,[_|T]) :- member2(X,T).

% ------------------------------------------------------------------
%  delete2 - delete variable from list

delete2([],_,[]).
delete2([X|T],Y,T1) :- X==Y, !, delete2(T,Y,T1).
delete2([X|T],Y,[X|T1]) :- delete2(T,Y,T1).

% ------------------------------------------------------------------
%  mreorder - reorder clauses

mreorder(M,M,0) :- !.
mreorder(M,M1,I) :-
    length(M,L), K is L//3, mreorder1(M,A,D,K), mreorder1(D,B,C,K),
    mreorder2(C,A,B,M2), I1 is I-1, mreorder(M2,M1,I1).

mreorder1(M,[],M,0) :- !.
mreorder1([C|M],[C|M1],M2,I) :- I1 is I-1, mreorder1(M,M1,M2,I1).

mreorder2(C,[],[],C).
mreorder2([A|A1],[B|B1],[C|C1],[A,B,C|M1]) :- mreorder2(A1,B1,C1,M1).

% ------------------------------------------------------------------
%  lreorder - reorder literals

lreorder([], [], _).
lreorder([A|As], [B|Bs], I):-
    mreorder(A, B, I),
    lreorder(As, Bs, I).
