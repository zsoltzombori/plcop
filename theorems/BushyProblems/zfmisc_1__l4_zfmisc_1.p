%------------------------------------------------------------------------------
% File     : zfmisc_1__l4_zfmisc_1

% Syntax   : Number of formulae    :   15 (   8 unit)
%            Number of atoms       :   25 (   5 equality)
%            Maximal formula depth :    6 (   3 average)
%            Number of connectives :   12 (   2 ~  ;   2  |;   1  &)
%                                         (   4 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    3 (   1 constant; 0-2 arity)
%            Number of variables   :   19 (   1 singleton;  17 !;   2 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(d10_xboole_0,axiom,(
    ! [A,B] : 
      ( A = B
    <=> ( subset(A,B)
        & subset(B,A) ) ) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k4_xboole_0,axiom,(
    $true )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(l2_zfmisc_1,axiom,(
    ! [A,B] : 
      ( subset(singleton(A),B)
    <=> in(A,B) ) )).

fof(l3_zfmisc_1,axiom,(
    ! [A,B,C] : 
      ( subset(A,B)
     => ( in(C,A)
        | subset(A,set_difference(B,singleton(C))) ) ) )).

fof(l4_zfmisc_1,conjecture,(
    ! [A,B] : 
      ( subset(A,singleton(B))
    <=> ( A = empty_set
        | A = singleton(B) ) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t2_xboole_1,axiom,(
    ! [A] : subset(empty_set,A) )).

fof(t37_xboole_1,axiom,(
    ! [A,B] : 
      ( set_difference(A,B) = empty_set
    <=> subset(A,B) ) )).

fof(t3_xboole_1,axiom,(
    ! [A] : 
      ( subset(A,empty_set)
     => A = empty_set ) )).
%------------------------------------------------------------------------------
