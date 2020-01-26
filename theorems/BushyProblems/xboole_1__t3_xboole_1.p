%------------------------------------------------------------------------------
% File     : xboole_1__t3_xboole_1

% Syntax   : Number of formulae    :   12 (   6 unit)
%            Number of atoms       :   20 (   4 equality)
%            Maximal formula depth :    7 (   3 average)
%            Number of connectives :   13 (   5 ~  ;   0  |;   4  &)
%                                         (   1 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :   15 (   1 singleton;  13 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
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

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t2_xboole_1,axiom,(
    ! [A] : subset(empty_set,A) )).

fof(t3_xboole_1,conjecture,(
    ! [A] : 
      ( subset(A,empty_set)
     => A = empty_set ) )).

fof(t6_boole,axiom,(
    ! [A] : 
      ( empty(A)
     => A = empty_set ) )).

fof(t7_boole,axiom,(
    ! [A,B] : 
      ~ ( in(A,B)
        & empty(B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] : 
      ~ ( empty(A)
        & A != B
        & empty(B) ) )).
%------------------------------------------------------------------------------
