%------------------------------------------------------------------------------
% File     : wellord1__t17_wellord1

% Syntax   : Number of formulae    :   42 (  17 unit)
%            Number of atoms       :   95 (  12 equality)
%            Maximal formula depth :   11 (   4 average)
%            Number of connectives :   59 (   6 ~  ;   1  |;  24  &)
%                                         (   8 <=>;  20 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   10 (   1 propositional; 0-2 arity)
%            Number of functors    :    9 (   1 constant; 0-2 arity)
%            Number of variables   :   68 (   1 singleton;  60 !;   8 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(cc1_funct_1,axiom,(
    ! [A] : 
      ( empty(A)
     => function(A) ) )).

fof(cc2_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & empty(A)
        & function(A) )
     => ( relation(A)
        & function(A)
        & one_to_one(A) ) ) )).

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(commutativity_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) )).

fof(d11_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B,C] : 
          ( relation(C)
         => ( C = relation_dom_restriction(A,B)
          <=> ! [D,E] : 
                ( in(ordered_pair(D,E),C)
              <=> ( in(D,B)
                  & in(ordered_pair(D,E),A) ) ) ) ) ) )).

fof(d12_relat_1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => ! [C] : 
          ( relation(C)
         => ( C = relation_rng_restriction(A,B)
          <=> ! [D,E] : 
                ( in(ordered_pair(D,E),C)
              <=> ( in(E,A)
                  & in(ordered_pair(D,E),B) ) ) ) ) ) )).

fof(d2_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ( A = B
          <=> ! [C,D] : 
                ( in(ordered_pair(C,D),A)
              <=> in(ordered_pair(C,D),B) ) ) ) ) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(d6_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : relation_restriction(A,B) = set_intersection2(A,cartesian_product2(B,B)) ) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_k2_wellord1,axiom,(
    ! [A,B] : 
      ( relation(A)
     => relation(relation_restriction(A,B)) ) )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_xboole_0,axiom,(
    $true )).

fof(dt_k4_tarski,axiom,(
    $true )).

fof(dt_k7_relat_1,axiom,(
    ! [A,B] : 
      ( relation(A)
     => relation(relation_dom_restriction(A,B)) ) )).

fof(dt_k8_relat_1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => relation(relation_rng_restriction(A,B)) ) )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc1_zfmisc_1,axiom,(
    ! [A,B] : ~ empty(ordered_pair(A,B)) )).

fof(fc4_funct_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & function(A) )
     => ( relation(relation_dom_restriction(A,B))
        & function(relation_dom_restriction(A,B)) ) ) )).

fof(fc5_funct_1,axiom,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ( relation(relation_rng_restriction(A,B))
        & function(relation_rng_restriction(A,B)) ) ) )).

fof(idempotence_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,A) = A )).

fof(rc1_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & empty(A)
      & function(A) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(rc3_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A) ) )).

fof(rc4_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) )).

fof(rc5_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_non_empty(A)
      & function(A) ) )).

fof(t106_zfmisc_1,axiom,(
    ! [A,B,C,D] : 
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) )).

fof(t16_wellord1,axiom,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(A,relation_restriction(C,B))
      <=> ( in(A,C)
          & in(A,cartesian_product2(B,B)) ) ) ) )).

fof(t17_wellord1,conjecture,(
    ! [A,B] : 
      ( relation(B)
     => relation_restriction(B,A) = relation_dom_restriction(relation_rng_restriction(A,B),A) ) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t2_boole,axiom,(
    ! [A] : set_intersection2(A,empty_set) = empty_set )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

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
