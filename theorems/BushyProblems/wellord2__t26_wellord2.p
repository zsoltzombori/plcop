%------------------------------------------------------------------------------
% File     : wellord2__t26_wellord2

% Syntax   : Number of formulae    :   84 (  29 unit)
%            Number of atoms       :  224 (  27 equality)
%            Maximal formula depth :   11 (   4 average)
%            Number of connectives :  157 (  17 ~  ;   2  |;  79  &)
%                                         (  14 <=>;  45 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   21 (   1 propositional; 0-2 arity)
%            Number of functors    :   14 (   1 constant; 0-2 arity)
%            Number of variables   :  131 (   4 singleton; 113 !;  18 ?)
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

fof(connectedness_r1_ordinal1,axiom,(
    ! [A,B] : 
      ( ( ordinal(A)
        & ordinal(B) )
     => ( ordinal_subset(A,B)
        | ordinal_subset(B,A) ) ) )).

fof(d1_tarski,axiom,(
    ! [A,B] : 
      ( B = singleton(A)
    <=> ! [C] : 
          ( in(C,B)
        <=> C = A ) ) )).

fof(d1_wellord2,axiom,(
    ! [A,B] : 
      ( relation(B)
     => ( B = inclusion_relation(A)
      <=> ( relation_field(B) = A
          & ! [C,D] : 
              ( ( in(C,A)
                & in(D,A) )
             => ( in(ordered_pair(C,D),B)
              <=> subset(C,D) ) ) ) ) ) )).

fof(d2_ordinal1,axiom,(
    ! [A] : 
      ( epsilon_transitive(A)
    <=> ! [B] : 
          ( in(B,A)
         => subset(B,A) ) ) )).

fof(d3_tarski,axiom,(
    ! [A,B] : 
      ( subset(A,B)
    <=> ! [C] : 
          ( in(C,A)
         => in(C,B) ) ) )).

fof(d4_wellord2,axiom,(
    ! [A,B] : 
      ( equipotent(A,B)
    <=> ? [C] : 
          ( relation(C)
          & function(C)
          & one_to_one(C)
          & relation_dom(C) = A
          & relation_rng(C) = B ) ) )).

fof(d5_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ! [B] : 
          ( B = relation_rng(A)
        <=> ! [C] : 
              ( in(C,B)
            <=> ? [D] : 
                  ( in(D,relation_dom(A))
                  & C = apply(A,D) ) ) ) ) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(d6_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)) ) )).

fof(d6_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : relation_restriction(A,B) = set_intersection2(A,cartesian_product2(B,B)) ) )).

fof(d8_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
      <=> ! [B,C] : 
            ( ( in(B,relation_dom(A))
              & in(C,relation_dom(A))
              & apply(A,B) = apply(A,C) )
           => B = C ) ) ) )).

fof(dt_k1_funct_1,axiom,(
    $true )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_wellord2,axiom,(
    ! [A] : relation(inclusion_relation(A)) )).

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

fof(l30_wellord2,axiom,(
    ! [A,B] : 
      ( relation(B)
     => ~ ( well_ordering(B)
          & equipotent(A,relation_field(B))
          & ! [C] : 
              ( relation(C)
             => ~ well_orders(C,A) ) ) ) )).

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

fof(redefinition_r1_ordinal1,axiom,(
    ! [A,B] : 
      ( ( ordinal(A)
        & ordinal(B) )
     => ( ordinal_subset(A,B)
      <=> subset(A,B) ) ) )).

fof(redefinition_r2_wellord2,axiom,(
    ! [A,B] : 
      ( equipotent(A,B)
    <=> are_equipotent(A,B) ) )).

fof(reflexivity_r1_ordinal1,axiom,(
    ! [A,B] : 
      ( ( ordinal(A)
        & ordinal(B) )
     => ordinal_subset(A,A) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(reflexivity_r2_wellord2,axiom,(
    ! [A,B] : equipotent(A,A) )).

fof(s1_xboole_0__e6_22__wellord2,axiom,(
    ! [A] : 
    ? [B] : 
    ! [C] : 
      ( in(C,B)
    <=> ( in(C,A)
        & ordinal(C) ) ) )).

fof(s3_funct_1__e16_22__wellord2,axiom,(
    ! [A] : 
    ? [B] : 
      ( relation(B)
      & function(B)
      & relation_dom(B) = A
      & ! [C] : 
          ( in(C,A)
         => apply(B,C) = singleton(C) ) ) )).

fof(symmetry_r2_wellord2,axiom,(
    ! [A,B] : 
      ( equipotent(A,B)
     => equipotent(B,A) ) )).

fof(t136_zfmisc_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( in(A,B)
      & ! [C,D] : 
          ( ( in(C,B)
            & subset(D,C) )
         => in(D,B) )
      & ! [C] : 
          ( in(C,B)
         => in(powerset(C),B) )
      & ! [C] : 
          ~ ( subset(C,B)
            & ~ are_equipotent(C,B)
            & ~ in(C,B) ) ) )).

fof(t1_boole,axiom,(
    ! [A] : set_union2(A,empty_set) = A )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t23_ordinal1,axiom,(
    ! [A,B] : 
      ( ordinal(B)
     => ( in(A,B)
       => ordinal(A) ) ) )).

fof(t25_wellord2,axiom,(
    ! [A,B] : 
      ( relation(B)
     => ( well_orders(B,A)
       => ( relation_field(relation_restriction(B,A)) = A
          & well_ordering(relation_restriction(B,A)) ) ) ) )).

fof(t26_wellord2,conjecture,(
    ! [A] : 
    ? [B] : 
      ( relation(B)
      & well_orders(B,A) ) )).

fof(t2_boole,axiom,(
    ! [A] : set_intersection2(A,empty_set) = empty_set )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t31_ordinal1,axiom,(
    ! [A] : 
      ( ! [B] : 
          ( in(B,A)
         => ( ordinal(B)
            & subset(B,A) ) )
     => ordinal(A) ) )).

fof(t32_wellord1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => ( well_ordering(B)
       => well_ordering(relation_restriction(B,A)) ) ) )).

fof(t39_wellord1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => ( ( well_ordering(B)
          & subset(A,relation_field(B)) )
       => relation_field(relation_restriction(B,A)) = A ) ) )).

fof(t3_subset,axiom,(
    ! [A,B] : 
      ( element(A,powerset(B))
    <=> subset(A,B) ) )).

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

fof(t6_zfmisc_1,axiom,(
    ! [A,B] : 
      ( subset(singleton(A),singleton(B))
     => A = B ) )).

fof(t7_boole,axiom,(
    ! [A,B] : 
      ~ ( in(A,B)
        & empty(B) ) )).

fof(t7_wellord2,axiom,(
    ! [A] : 
      ( ordinal(A)
     => well_ordering(inclusion_relation(A)) ) )).

fof(t8_boole,axiom,(
    ! [A,B] : 
      ~ ( empty(A)
        & A != B
        & empty(B) ) )).
%------------------------------------------------------------------------------
