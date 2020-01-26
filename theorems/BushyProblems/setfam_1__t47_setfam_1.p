%------------------------------------------------------------------------------
% File     : setfam_1__t47_setfam_1

% Syntax   : Number of formulae    :   46 (  16 unit)
%            Number of atoms       :  101 (  24 equality)
%            Maximal formula depth :   10 (   4 average)
%            Number of connectives :   69 (  14 ~  ;   1  |;  15  &)
%                                         (  12 <=>;  27 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   1 propositional; 0-2 arity)
%            Number of functors    :   11 (   1 constant; 0-3 arity)
%            Number of variables   :   83 (   1 singleton;  77 !;   6 ?)
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

fof(d1_setfam_1,axiom,(
    ! [A,B] : 
      ( ( A != empty_set
       => ( B = set_meet(A)
        <=> ! [C] : 
              ( in(C,B)
            <=> ! [D] : 
                  ( in(D,A)
                 => in(C,D) ) ) ) )
      & ( A = empty_set
       => ( B = set_meet(A)
        <=> B = empty_set ) ) ) )).

fof(d3_tarski,axiom,(
    ! [A,B] : 
      ( subset(A,B)
    <=> ! [C] : 
          ( in(C,A)
         => in(C,B) ) ) )).

fof(d4_subset_1,axiom,(
    ! [A] : cast_to_subset(A) = A )).

fof(d4_tarski,axiom,(
    ! [A,B] : 
      ( B = union(A)
    <=> ! [C] : 
          ( in(C,B)
        <=> ? [D] : 
              ( in(C,D)
              & in(D,A) ) ) ) )).

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

fof(d8_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ! [C] : 
          ( element(C,powerset(powerset(A)))
         => ( C = complements_of_subsets(A,B)
          <=> ! [D] : 
                ( element(D,powerset(A))
               => ( in(D,C)
                <=> in(subset_complement(A,D),B) ) ) ) ) ) )).

fof(dt_k1_setfam_1,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_subset_1,axiom,(
    ! [A] : element(cast_to_subset(A),powerset(A)) )).

fof(dt_k3_subset_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => element(subset_complement(A,B),powerset(A)) ) )).

fof(dt_k3_tarski,axiom,(
    $true )).

fof(dt_k4_xboole_0,axiom,(
    $true )).

fof(dt_k5_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => element(union_of_subsets(A,B),powerset(A)) ) )).

fof(dt_k6_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => element(meet_of_subsets(A,B),powerset(A)) ) )).

fof(dt_k6_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => element(subset_difference(A,B,C),powerset(A)) ) )).

fof(dt_k7_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => element(complements_of_subsets(A,B),powerset(powerset(A))) ) )).

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

fof(involutiveness_k7_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => complements_of_subsets(A,complements_of_subsets(A,B)) = B ) )).

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

fof(redefinition_k5_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => union_of_subsets(A,B) = union(B) ) )).

fof(redefinition_k6_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => meet_of_subsets(A,B) = set_meet(B) ) )).

fof(redefinition_k6_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_difference(A,B,C) = set_difference(B,C) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t3_boole,axiom,(
    ! [A] : set_difference(A,empty_set) = A )).

fof(t3_subset,axiom,(
    ! [A,B] : 
      ( element(A,powerset(B))
    <=> subset(A,B) ) )).

fof(t46_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ~ ( B != empty_set
          & complements_of_subsets(A,B) = empty_set ) ) )).

fof(t47_setfam_1,conjecture,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ( B != empty_set
       => subset_difference(A,cast_to_subset(A),union_of_subsets(A,B)) = meet_of_subsets(A,complements_of_subsets(A,B)) ) ) )).

fof(t4_boole,axiom,(
    ! [A] : set_difference(empty_set,A) = empty_set )).

fof(t4_subset,axiom,(
    ! [A,B,C] : 
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) )).

fof(t5_subset,axiom,(
    ! [A,B,C] : 
      ~ ( in(A,B)
        & element(B,powerset(C))
        & empty(C) ) )).

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
