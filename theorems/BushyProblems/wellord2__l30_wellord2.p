%------------------------------------------------------------------------------
% File     : wellord2__l30_wellord2

% Syntax   : Number of formulae    :   72 (  23 unit)
%            Number of atoms       :  215 (  18 equality)
%            Maximal formula depth :   16 (   5 average)
%            Number of connectives :  157 (  14 ~  ;   2  |;  79  &)
%                                         (  20 <=>;  42 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   27 (   1 propositional; 0-3 arity)
%            Number of functors    :   11 (   1 constant; 0-2 arity)
%            Number of variables   :  117 (   3 singleton; 100 !;  17 ?)
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

fof(d2_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_union2(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            | in(D,B) ) ) ) )).

fof(d3_tarski,axiom,(
    ! [A,B] : 
      ( subset(A,B)
    <=> ! [C] : 
          ( in(C,A)
         => in(C,B) ) ) )).

fof(d4_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( B = relation_dom(A)
        <=> ! [C] : 
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(C,D),A) ) ) ) )).

fof(d4_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ( well_ordering(A)
      <=> ( reflexive(A)
          & transitive(A)
          & antisymmetric(A)
          & connected(A)
          & well_founded_relation(A) ) ) ) )).

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

fof(d5_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( B = relation_rng(A)
        <=> ! [C] : 
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(D,C),A) ) ) ) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(d6_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)) ) )).

fof(d7_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ! [C] : 
              ( ( relation(C)
                & function(C) )
             => ( relation_isomorphism(A,B,C)
              <=> ( relation_dom(C) = relation_field(A)
                  & relation_rng(C) = relation_field(B)
                  & one_to_one(C)
                  & ! [D,E] : 
                      ( in(ordered_pair(D,E),A)
                    <=> ( in(D,relation_field(A))
                        & in(E,relation_field(A))
                        & in(ordered_pair(apply(C,D),apply(C,E)),B) ) ) ) ) ) ) ) )).

fof(d9_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ( reflexive(A)
      <=> is_reflexive_in(A,relation_field(A)) ) ) )).

fof(dt_k1_funct_1,axiom,(
    $true )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ( relation(function_inverse(A))
        & function(function_inverse(A)) ) ) )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_k2_xboole_0,axiom,(
    $true )).

fof(dt_k3_relat_1,axiom,(
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

fof(l30_wellord2,conjecture,(
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

fof(redefinition_r2_wellord2,axiom,(
    ! [A,B] : 
      ( equipotent(A,B)
    <=> are_equipotent(A,B) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(reflexivity_r2_wellord2,axiom,(
    ! [A,B] : equipotent(A,A) )).

fof(s1_relat_1__e5_21__wellord2,axiom,(
    ! [A,B,C] : 
      ( ( relation(B)
        & relation(C)
        & function(C) )
     => ? [D] : 
          ( relation(D)
          & ! [E,F] : 
              ( in(ordered_pair(E,F),D)
            <=> ( in(E,A)
                & in(F,A)
                & in(ordered_pair(apply(C,E),apply(C,F)),B) ) ) ) ) )).

fof(symmetry_r2_wellord2,axiom,(
    ! [A,B] : 
      ( equipotent(A,B)
     => equipotent(B,A) ) )).

fof(t1_boole,axiom,(
    ! [A] : set_union2(A,empty_set) = A )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

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

fof(t49_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ! [C] : 
              ( ( relation(C)
                & function(C) )
             => ( relation_isomorphism(A,B,C)
               => relation_isomorphism(B,A,function_inverse(C)) ) ) ) ) )).

fof(t4_subset,axiom,(
    ! [A,B,C] : 
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) )).

fof(t54_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ! [C] : 
              ( ( relation(C)
                & function(C) )
             => ( ( well_ordering(A)
                  & relation_isomorphism(A,B,C) )
               => well_ordering(B) ) ) ) ) )).

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
