%------------------------------------------------------------------------------
% File     : tmap_1__t91_tmap_1

% Syntax   : Number of formulae    :   97 (  22 unit)
%            Number of atoms       :  323 (  18 equality)
%            Maximal formula depth :   11 (   5 average)
%            Number of connectives :  272 (  46 ~  ;   1  |; 151  &)
%                                         (   2 <=>;  72 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   36 (   1 propositional; 0-3 arity)
%            Number of functors    :   14 (   1 constant; 0-4 arity)
%            Number of variables   :  169 (   1 singleton; 132 !;  37 ?)
%            Maximal term depth    :    4 (   1 average)
%------------------------------------------------------------------------------
fof(abstractness_v1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( strict_top_str(A)
       => A = top_str_of(the_carrier(A),the_topology(A)) ) ) )).

fof(abstractness_v1_struct_0,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ( strict_one_sorted(A)
       => A = one_sorted_str_of(the_carrier(A)) ) ) )).

fof(abstractness_v2_struct_0,axiom,(
    ! [A] : 
      ( zero_str(A)
     => ( strict_zero_str(A)
       => A = zero_str_of(the_carrier(A),the_zero(A)) ) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(cc1_funct_2,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
     => ( ( function(C)
          & v1_partfun1(C,A,B) )
       => ( function(C)
          & quasi_total(C,A,B) ) ) ) )).

fof(cc1_partfun1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & symmetric(A)
        & transitive(A) )
     => ( relation(A)
        & reflexive(A) ) ) )).

fof(cc1_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => topological_space(B) ) ) )).

fof(cc1_relset_1,axiom,(
    ! [A,B,C] : 
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) )).

fof(cc2_funct_2,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
     => ( ( function(C)
          & quasi_total(C,A,B)
          & bijective(C,A,B) )
       => ( function(C)
          & one_to_one(C)
          & quasi_total(C,A,B)
          & onto(C,A,B) ) ) ) )).

fof(cc3_funct_2,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
     => ( ( function(C)
          & one_to_one(C)
          & quasi_total(C,A,B)
          & onto(C,A,B) )
       => ( function(C)
          & quasi_total(C,A,B)
          & bijective(C,A,B) ) ) ) )).

fof(cc4_funct_2,axiom,(
    ! [A,B] : 
      ( relation_of2(B,A,A)
     => ( ( function(B)
          & v1_partfun1(B,A,A)
          & reflexive(B)
          & quasi_total(B,A,A) )
       => ( function(B)
          & one_to_one(B)
          & quasi_total(B,A,A)
          & onto(B,A,A)
          & bijective(B,A,A) ) ) ) )).

fof(cc5_funct_2,axiom,(
    ! [A,B] : 
      ( ~ empty(B)
     => ! [C] : 
          ( relation_of2(C,A,B)
         => ( ( function(C)
              & quasi_total(C,A,B) )
           => ( function(C)
              & v1_partfun1(C,A,B)
              & quasi_total(C,A,B) ) ) ) ) )).

fof(cc6_funct_2,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ! [C] : 
          ( relation_of2(C,A,B)
         => ( ( function(C)
              & quasi_total(C,A,B) )
           => ( function(C)
              & ~ empty(C)
              & v1_partfun1(C,A,B)
              & quasi_total(C,A,B) ) ) ) ) )).

fof(d11_grcat_1,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => identity_on_carrier(A) = identity_as_relation_of(the_carrier(A)) ) )).

fof(dt_g1_pre_topc,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ( strict_top_str(top_str_of(A,B))
        & top_str(top_str_of(A,B)) ) ) )).

fof(dt_g1_struct_0,axiom,(
    ! [A] : 
      ( strict_one_sorted(one_sorted_str_of(A))
      & one_sorted_str(one_sorted_str_of(A)) ) )).

fof(dt_g2_struct_0,axiom,(
    ! [A,B] : 
      ( element(B,A)
     => ( strict_zero_str(zero_str_of(A,B))
        & zero_str(zero_str_of(A,B)) ) ) )).

fof(dt_k1_funct_1,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k6_partfun1,axiom,(
    ! [A] : 
      ( v1_partfun1(identity_as_relation_of(A),A,A)
      & relation_of2_as_subset(identity_as_relation_of(A),A,A) ) )).

fof(dt_k6_relat_1,axiom,(
    ! [A] : relation(identity_relation(A)) )).

fof(dt_k7_grcat_1,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ( function(identity_on_carrier(A))
        & quasi_total(identity_on_carrier(A),the_carrier(A),the_carrier(A))
        & relation_of2_as_subset(identity_on_carrier(A),the_carrier(A),the_carrier(A)) ) ) )).

fof(dt_k8_funct_2,axiom,(
    ! [A,B,C,D] : 
      ( ( ~ empty(A)
        & function(C)
        & quasi_total(C,A,B)
        & relation_of2(C,A,B)
        & element(D,A) )
     => element(apply_as_element(A,B,C,D),B) ) )).

fof(dt_l1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => one_sorted_str(A) ) )).

fof(dt_l1_struct_0,axiom,(
    $true )).

fof(dt_l2_struct_0,axiom,(
    ! [A] : 
      ( zero_str(A)
     => one_sorted_str(A) ) )).

fof(dt_m1_borsuk_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_borsuk_1(B,A)
         => ( ~ empty(B)
            & m1_eqrel_1(B,the_carrier(A)) ) ) ) )).

fof(dt_m1_eqrel_1,axiom,(
    ! [A,B] : 
      ( m1_eqrel_1(B,A)
     => element(B,powerset(powerset(A))) ) )).

fof(dt_m1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => top_str(B) ) ) )).

fof(dt_m1_relset_1,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(dt_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) )).

fof(dt_u1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => element(the_topology(A),powerset(powerset(the_carrier(A)))) ) )).

fof(dt_u1_struct_0,axiom,(
    $true )).

fof(dt_u2_struct_0,axiom,(
    ! [A] : 
      ( zero_str(A)
     => element(the_zero(A),the_carrier(A)) ) )).

fof(existence_l1_pre_topc,axiom,(
    ? [A] : top_str(A) )).

fof(existence_l1_struct_0,axiom,(
    ? [A] : one_sorted_str(A) )).

fof(existence_l2_struct_0,axiom,(
    ? [A] : zero_str(A) )).

fof(existence_m1_borsuk_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : m1_borsuk_1(B,A) ) )).

fof(existence_m1_eqrel_1,axiom,(
    ! [A] : 
    ? [B] : m1_eqrel_1(B,A) )).

fof(existence_m1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ? [B] : m1_pre_topc(B,A) ) )).

fof(existence_m1_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2(C,A,B) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(existence_m2_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2_as_subset(C,A,B) )).

fof(fc1_struct_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(the_carrier(A)) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc2_complsp1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & element(B,powerset(powerset(A))) )
     => ( ~ empty_carrier(top_str_of(A,B))
        & strict_top_str(top_str_of(A,B)) ) ) )).

fof(fc2_partfun1,axiom,(
    ! [A] : 
      ( relation(identity_relation(A))
      & function(identity_relation(A))
      & reflexive(identity_relation(A))
      & symmetric(identity_relation(A))
      & antisymmetric(identity_relation(A))
      & transitive(identity_relation(A)) ) )).

fof(fc4_subset_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ~ empty(cartesian_product2(A,B)) ) )).

fof(free_g1_pre_topc,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ! [C,D] : 
          ( top_str_of(A,B) = top_str_of(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(free_g1_struct_0,axiom,(
    ! [A,B] : 
      ( one_sorted_str_of(A) = one_sorted_str_of(B)
     => A = B ) )).

fof(free_g2_struct_0,axiom,(
    ! [A,B] : 
      ( element(B,A)
     => ! [C,D] : 
          ( zero_str_of(A,B) = zero_str_of(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(rc1_borsuk_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( m1_eqrel_1(B,A)
          & ~ empty(B)
          & with_non_empty_elements(B) ) ) )).

fof(rc1_funct_2,axiom,(
    ! [A,B] : 
    ? [C] : 
      ( relation_of2(C,A,B)
      & relation(C)
      & function(C)
      & quasi_total(C,A,B) ) )).

fof(rc1_partfun1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A)
      & empty(A) ) )).

fof(rc1_pre_topc,axiom,(
    ? [A] : 
      ( top_str(A)
      & strict_top_str(A) ) )).

fof(rc1_struct_0,axiom,(
    ? [A] : 
      ( one_sorted_str(A)
      & strict_one_sorted(A) ) )).

fof(rc1_subset_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(A))
          & ~ empty(B) ) ) )).

fof(rc1_tsep_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & strict_top_str(B)
          & topological_space(B)
          & v1_tsep_1(B,A) ) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_borsuk_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A)
        & ~ empty_carrier(B)
        & topological_space(B)
        & top_str(B) )
     => ? [C] : 
          ( relation_of2(C,the_carrier(A),the_carrier(B))
          & ~ empty(C)
          & relation(C)
          & function(C)
          & quasi_total(C,the_carrier(A),the_carrier(B))
          & v5_pre_topc(C,A,B)
          & v1_partfun1(C,the_carrier(A),the_carrier(B)) ) ) )).

fof(rc2_funct_2,axiom,(
    ! [A] : 
    ? [B] : 
      ( relation_of2(B,A,A)
      & relation(B)
      & function(B)
      & one_to_one(B)
      & quasi_total(B,A,A)
      & onto(B,A,A)
      & bijective(B,A,A) ) )).

fof(rc2_partfun1,axiom,(
    ! [A,B] : 
    ? [C] : 
      ( relation_of2(C,A,B)
      & relation(C)
      & function(C) ) )).

fof(rc2_pre_topc,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & topological_space(A) ) )).

fof(rc2_struct_0,axiom,(
    ? [A] : 
      ( zero_str(A)
      & strict_zero_str(A) ) )).

fof(rc2_subset_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(A))
      & empty(B) ) )).

fof(rc2_tsep_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & ~ empty_carrier(B)
          & strict_top_str(B)
          & topological_space(B)
          & v1_tsep_1(B,A) ) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(rc3_borsuk_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & strict_top_str(B)
          & topological_space(B)
          & v1_borsuk_1(B,A) ) ) )).

fof(rc3_partfun1,axiom,(
    ! [A] : 
    ? [B] : 
      ( relation_of2(B,A,A)
      & relation(B)
      & reflexive(B)
      & symmetric(B)
      & antisymmetric(B)
      & transitive(B)
      & v1_partfun1(B,A,A) ) )).

fof(rc3_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & strict_top_str(B) ) ) )).

fof(rc3_struct_0,axiom,(
    ? [A] : 
      ( one_sorted_str(A)
      & ~ empty_carrier(A) ) )).

fof(rc4_borsuk_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & ~ empty_carrier(B)
          & strict_top_str(B)
          & topological_space(B)
          & v1_borsuk_1(B,A) ) ) )).

fof(rc4_pre_topc,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & ~ empty_carrier(B)
          & strict_top_str(B) ) ) )).

fof(rc4_struct_0,axiom,(
    ? [A] : 
      ( zero_str(A)
      & ~ empty_carrier(A) ) )).

fof(rc5_borsuk_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_borsuk_1(B,A)
          & ~ empty(B)
          & with_non_empty_elements(B)
          & v2_borsuk_1(B,A) ) ) )).

fof(rc5_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & strict_top_str(B)
          & topological_space(B) ) ) )).

fof(rc5_struct_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B) ) ) )).

fof(rc6_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & closed_subset(B,A) ) ) )).

fof(rc7_pre_topc,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & closed_subset(B,A) ) ) )).

fof(redefinition_k6_partfun1,axiom,(
    ! [A] : identity_as_relation_of(A) = identity_relation(A) )).

fof(redefinition_k8_funct_2,axiom,(
    ! [A,B,C,D] : 
      ( ( ~ empty(A)
        & function(C)
        & quasi_total(C,A,B)
        & relation_of2(C,A,B)
        & element(D,A) )
     => apply_as_element(A,B,C,D) = apply(C,D) ) )).

fof(redefinition_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) )).

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

fof(t35_funct_1,axiom,(
    ! [A,B] : 
      ( in(B,A)
     => apply(identity_relation(A),B) = B ) )).

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

fof(t7_boole,axiom,(
    ! [A,B] : 
      ~ ( in(A,B)
        & empty(B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] : 
      ~ ( empty(A)
        & A != B
        & empty(B) ) )).

fof(t91_tmap_1,conjecture,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => apply_as_element(the_carrier(A),the_carrier(A),identity_on_carrier(A),B) = B ) ) )).
%------------------------------------------------------------------------------
