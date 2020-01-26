%------------------------------------------------------------------------------
% File     : subset_1__t50_subset_1

% Syntax   : Number of formulae    :   23 (  11 unit)
%            Number of atoms       :   46 (   8 equality)
%            Maximal formula depth :    9 (   4 average)
%            Number of connectives :   35 (  12 ~  ;   0  |;   7  &)
%                                         (   4 <=>;  12 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    4 (   1 constant; 0-2 arity)
%            Number of variables   :   33 (   0 singleton;  28 !;   5 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(d2_subset_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
       => ( element(B,A)
        <=> in(B,A) ) )
      & ( empty(A)
       => ( element(B,A)
        <=> empty(B) ) ) ) )).

fof(d4_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_difference(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            & ~ in(D,B) ) ) ) )).

fof(d5_subset_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => subset_complement(A,B) = set_difference(A,B) ) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_subset_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => element(subset_complement(A,B),powerset(A)) ) )).

fof(dt_k4_xboole_0,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(involutiveness_k3_subset_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => subset_complement(A,subset_complement(A,B)) = B ) )).

fof(rc1_subset_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(A))
          & ~ empty(B) ) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_subset_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(A))
      & empty(B) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(t3_boole,axiom,(
    ! [A] : set_difference(A,empty_set) = A )).

fof(t4_boole,axiom,(
    ! [A] : set_difference(empty_set,A) = empty_set )).

fof(t50_subset_1,conjecture,(
    ! [A] : 
      ( A != empty_set
     => ! [B] : 
          ( element(B,powerset(A))
         => ! [C] : 
              ( element(C,A)
             => ( ~ in(C,B)
               => in(C,subset_complement(A,B)) ) ) ) ) )).

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
