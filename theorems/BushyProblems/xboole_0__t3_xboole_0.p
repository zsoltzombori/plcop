%------------------------------------------------------------------------------
% File     : xboole_0__t3_xboole_0

% Syntax   : Number of formulae    :   13 (   7 unit)
%            Number of atoms       :   25 (   5 equality)
%            Maximal formula depth :    9 (   4 average)
%            Number of connectives :   19 (   7 ~  ;   0  |;   6  &)
%                                         (   4 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    2 (   1 constant; 0-2 arity)
%            Number of variables   :   22 (   1 singleton;  19 !;   3 ?)
%            Maximal term depth    :    2 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(commutativity_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) )).

fof(d1_xboole_0,axiom,(
    ! [A] : 
      ( A = empty_set
    <=> ! [B] : ~ in(B,A) ) )).

fof(d3_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_intersection2(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            & in(D,B) ) ) ) )).

fof(d7_xboole_0,axiom,(
    ! [A,B] : 
      ( disjoint(A,B)
    <=> set_intersection2(A,B) = empty_set ) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k3_xboole_0,axiom,(
    $true )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(idempotence_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,A) = A )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(symmetry_r1_xboole_0,axiom,(
    ! [A,B] : 
      ( disjoint(A,B)
     => disjoint(B,A) ) )).

fof(t3_xboole_0,conjecture,(
    ! [A,B] : 
      ( ~ ( ~ disjoint(A,B)
          & ! [C] : 
              ~ ( in(C,A)
                & in(C,B) ) )
      & ~ ( ? [C] : 
              ( in(C,A)
              & in(C,B) )
          & disjoint(A,B) ) ) )).
%------------------------------------------------------------------------------
