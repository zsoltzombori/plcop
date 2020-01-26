%------------------------------------------------------------------------------
% File     : xboole_1__t37_xboole_1

% Syntax   : Number of formulae    :   14 (   8 unit)
%            Number of atoms       :   21 (   6 equality)
%            Maximal formula depth :    7 (   3 average)
%            Number of connectives :   12 (   5 ~  ;   0  |;   3  &)
%                                         (   2 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    2 (   1 constant; 0-2 arity)
%            Number of variables   :   17 (   1 singleton;  15 !;   2 ?)
%            Maximal term depth    :    2 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(t7_boole,axiom,(
    ! [A,B] : 
      ~ ( in(A,B)
        & empty(B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] : 
      ~ ( empty(A)
        & A != B
        & empty(B) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k4_xboole_0,axiom,(
    $true )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(t3_boole,axiom,(
    ! [A] : set_difference(A,empty_set) = A )).

fof(t4_boole,axiom,(
    ! [A] : set_difference(empty_set,A) = empty_set )).

fof(t6_boole,axiom,(
    ! [A] : 
      ( empty(A)
     => A = empty_set ) )).

fof(t37_xboole_1,conjecture,(
    ! [A,B] : 
      ( set_difference(A,B) = empty_set
    <=> subset(A,B) ) )).

fof(l32_xboole_1,axiom,(
    ! [A,B] : 
      ( set_difference(A,B) = empty_set
    <=> subset(A,B) ) )).
%------------------------------------------------------------------------------
