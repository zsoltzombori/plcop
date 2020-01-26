%------------------------------------------------------------------------------
% File     : wellord2__t25_wellord2

% Syntax   : Number of formulae    :   75 (  27 unit)
%            Number of atoms       :  205 (  19 equality)
%            Maximal formula depth :   13 (   4 average)
%            Number of connectives :  154 (  24 ~  ;   1  |;  79  &)
%                                         (  14 <=>;  36 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   24 (   1 propositional; 0-2 arity)
%            Number of functors    :   13 (   1 constant; 0-2 arity)
%            Number of variables   :  118 (   3 singleton; 105 !;  13 ?)
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

fof(cc1_ordinal1,axiom,(
    ! [A] : 
      ( ordinal(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) )).

fof(cc2_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & empty(A)
        & function(A) )
     => ( relation(A)
        & function(A)
        & one_to_one(A) ) ) )).

fof(cc2_ordinal1,axiom,(
    ! [A] : 
      ( ( epsilon_transitive(A)
        & epsilon_connected(A) )
     => ordinal(A) ) )).

fof(cc3_ordinal1,axiom,(
    ! [A] : 
      ( empty(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A) ) ) )).

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(commutativity_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,B) = set_union2(B,A) )).

fof(commutativity_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) )).

fof(d10_xboole_0,axiom,(
    ! [A,B] : 
      ( A = B
    <=> ( subset(A,B)
        & subset(B,A) ) ) )).

fof(d1_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( is_reflexive_in(A,B)
        <=> ! [C] : 
              ( in(C,B)
             => in(ordered_pair(C,C),A) ) ) ) )).

fof(d1_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B,C] : 
          ( C = fiber(A,B)
        <=> ! [D] : 
              ( in(D,C)
            <=> ( D != B
                & in(ordered_pair(D,B),A) ) ) ) ) )).

fof(d3_tarski,axiom,(
    ! [A,B] : 
      ( subset(A,B)
    <=> ! [C] : 
          ( in(C,A)
         => in(C,B) ) ) )).

fof(d3_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( is_well_founded_in(A,B)
        <=> ! [C] : 
              ~ ( subset(C,B)
                & C != empty_set
                & ! [D] : 
                    ~ ( in(D,C)
                      & disjoint(fiber(A,D),C) ) ) ) ) )).

fof(d4_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( is_antisymmetric_in(A,B)
        <=> ! [C,D] : 
              ( ( in(C,B)
                & in(D,B)
                & in(ordered_pair(C,D),A)
                & in(ordered_pair(D,C),A) )
             => C = D ) ) ) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(d5_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( well_orders(A,B)
        <=> ( is_reflexive_in(A,B)
            & is_transitive_in(A,B)
            & is_antisymmetric_in(A,B)
            & is_connected_in(A,B)
            & is_well_founded_in(A,B) ) ) ) )).

fof(d6_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)) ) )).

fof(d6_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( is_connected_in(A,B)
        <=> ! [C,D] : 
              ~ ( in(C,B)
                & in(D,B)
                & C != D
                & ~ in(ordered_pair(C,D),A)
                & ~ in(ordered_pair(D,C),A) ) ) ) )).

fof(d6_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : relation_restriction(A,B) = set_intersection2(A,cartesian_product2(B,B)) ) )).

fof(d8_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( is_transitive_in(A,B)
        <=> ! [C,D,E] : 
              ( ( in(C,B)
                & in(D,B)
                & in(E,B)
                & in(ordered_pair(C,D),A)
                & in(ordered_pair(D,E),A) )
             => in(ordered_pair(C,E),A) ) ) ) )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_wellord1,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_k2_wellord1,axiom,(
    ! [A,B] : 
      ( relation(A)
     => relation(relation_restriction(A,B)) ) )).

fof(dt_k2_xboole_0,axiom,(
    $true )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_relat_1,axiom,(
    $true )).

fof(dt_k3_xboole_0,axiom,(
    $true )).

fof(dt_k4_tarski,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc1_zfmisc_1,axiom,(
    ! [A,B] : ~ empty(ordered_pair(A,B)) )).

fof(fc2_ordinal1,axiom,
    ( relation(empty_set)
    & relation_empty_yielding(empty_set)
    & function(empty_set)
    & one_to_one(empty_set)
    & empty(empty_set)
    & epsilon_transitive(empty_set)
    & epsilon_connected(empty_set)
    & ordinal(empty_set) )).

fof(fc2_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) )).

fof(fc3_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) )).

fof(fc5_ordinal1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A)
        & transfinite_sequence(A) )
     => ( epsilon_transitive(relation_dom(A))
        & epsilon_connected(relation_dom(A))
        & ordinal(relation_dom(A)) ) ) )).

fof(fc6_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & relation_non_empty(A)
        & function(A) )
     => with_non_empty_elements(relation_rng(A)) ) )).

fof(idempotence_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,A) = A )).

fof(idempotence_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,A) = A )).

fof(rc1_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A) ) )).

fof(rc1_ordinal1,axiom,(
    ? [A] : 
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & empty(A)
      & function(A) ) )).

fof(rc2_ordinal1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A)
      & empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(rc3_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A) ) )).

fof(rc3_ordinal1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc4_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) )).

fof(rc4_ordinal1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & transfinite_sequence(A) ) )).

fof(rc5_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_non_empty(A)
      & function(A) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(symmetry_r1_xboole_0,axiom,(
    ! [A,B] : 
      ( disjoint(A,B)
     => disjoint(B,A) ) )).

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

fof(t1_boole,axiom,(
    ! [A] : set_union2(A,empty_set) = A )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t20_wellord1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => ( subset(relation_field(relation_restriction(B,A)),relation_field(B))
        & subset(relation_field(relation_restriction(B,A)),A) ) ) )).

fof(t25_wellord2,conjecture,(
    ! [A,B] : 
      ( relation(B)
     => ( well_orders(B,A)
       => ( relation_field(relation_restriction(B,A)) = A
          & well_ordering(relation_restriction(B,A)) ) ) ) )).

fof(t2_boole,axiom,(
    ! [A] : set_intersection2(A,empty_set) = empty_set )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t30_relat_1,axiom,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(ordered_pair(A,B),C)
       => ( in(A,relation_field(C))
          & in(B,relation_field(C)) ) ) ) )).

fof(t3_subset,axiom,(
    ! [A,B] : 
      ( element(A,powerset(B))
    <=> subset(A,B) ) )).

fof(t3_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ ( ~ disjoint(A,B)
          & ! [C] : 
              ~ ( in(C,A)
                & in(C,B) ) )
      & ~ ( ? [C] : 
              ( in(C,A)
              & in(C,B) )
          & disjoint(A,B) ) ) )).

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

fof(t8_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ( well_orders(A,relation_field(A))
      <=> well_ordering(A) ) ) )).
%------------------------------------------------------------------------------
