%------------------------------------------------------------------------------
% File     : xboole_1__t60_xboole_1

% Syntax   : Number of formulae    :   14 (   6 unit)
%            Number of atoms       :   25 (   4 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   20 (   9 ~  ;   0  |;   6  &)
%                                         (   2 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   1 propositional; 0-2 arity)
%            Number of functors    :    1 (   1 constant; 0-0 arity)
%            Number of variables   :   21 (   2 singleton;  19 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(antisymmetry_r2_xboole_0,axiom,(
    ! [A,B] : 
      ( proper_subset(A,B)
     => ~ proper_subset(B,A) ) )).

fof(d10_xboole_0,axiom,(
    ! [A,B] : 
      ( A = B
    <=> ( subset(A,B)
        & subset(B,A) ) ) )).

fof(d8_xboole_0,axiom,(
    ! [A,B] : 
      ( proper_subset(A,B)
    <=> ( subset(A,B)
        & A != B ) ) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(irreflexivity_r2_xboole_0,axiom,(
    ! [A,B] : ~ proper_subset(A,A) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t60_xboole_1,conjecture,(
    ! [A,B] : 
      ~ ( subset(A,B)
        & proper_subset(B,A) ) )).

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
