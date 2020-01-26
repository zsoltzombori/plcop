%------------------------------------------------------------------------------
% File     : yellow_0__t29_yellow_0

% Syntax   : Number of formulae    :  117 (  20 unit)
%            Number of atoms       :  520 (  35 equality)
%            Maximal formula depth :   22 (   6 average)
%            Number of connectives :  542 ( 139 ~  ;   1  |; 275  &)
%                                         (   6 <=>; 121 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   63 (   1 propositional; 0-3 arity)
%            Number of functors    :   22 (   1 constant; 0-3 arity)
%            Number of variables   :  215 (   1 singleton; 186 !;  29 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(fraenkel_a_2_2_lattice3,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(B)
        & latt_str(B) )
     => ( in(A,a_2_2_lattice3(B,C))
      <=> ? [D] : 
            ( element(D,the_carrier(B))
            & A = D
            & latt_set_smaller(B,D,C) ) ) ) )).

fof(t2_tarski,axiom,(
    ! [A,B] : 
      ( ! [C] : 
          ( in(C,A)
        <=> in(C,B) )
     => A = B ) )).

fof(abstractness_v1_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( strict_rel_str(A)
       => A = rel_str_of(the_carrier(A),the_InternalRel(A)) ) ) )).

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

fof(abstractness_v3_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( strict_latt_str(A)
       => A = latt_str_of(the_carrier(A),the_L_join(A),the_L_meet(A)) ) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(cc1_finset_1,axiom,(
    ! [A] : 
      ( empty(A)
     => finite(A) ) )).

fof(cc1_lattice3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( with_suprema_relstr(A)
       => ~ empty_carrier(A) ) ) )).

fof(cc1_relset_1,axiom,(
    ! [A,B,C] : 
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) )).

fof(cc1_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A) ) ) ) )).

fof(cc2_finset_1,axiom,(
    ! [A] : 
      ( finite(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => finite(B) ) ) )).

fof(cc2_lattice3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( with_infima_relstr(A)
       => ~ empty_carrier(A) ) ) )).

fof(cc2_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & trivial_carrier(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & complete_relstr(A) ) ) ) )).

fof(cc3_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & bounded_relstr(A) ) ) ) )).

fof(cc4_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( bounded_relstr(A)
       => ( lower_bounded_relstr(A)
          & upper_bounded_relstr(A) ) ) ) )).

fof(cc5_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( lower_bounded_relstr(A)
          & upper_bounded_relstr(A) )
       => bounded_relstr(A) ) ) )).

fof(d10_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ! [B,C] : 
          ( element(C,the_carrier(A))
         => ~ ( ex_inf_of_relstr_set(A,B)
              & ~ ( ~ ( C = meet_on_relstr(A,B)
                      & ~ ( relstr_element_smaller(A,B,C)
                          & ! [D] : 
                              ( element(D,the_carrier(A))
                             => ~ ( relstr_element_smaller(A,B,D)
                                  & ~ related(A,D,C) ) ) ) )
                  & ~ ( relstr_element_smaller(A,B,C)
                      & ! [D] : 
                          ( element(D,the_carrier(A))
                         => ~ ( relstr_element_smaller(A,B,D)
                              & ~ related(A,D,C) ) )
                      & C != meet_on_relstr(A,B) ) ) ) ) ) )).

fof(d21_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & latt_str(A) )
     => ~ ( ~ empty_carrier(A)
          & lattice(A)
          & complete_latt_str(A)
          & latt_str(A)
          & ~ ! [B,C] : 
                ( element(C,the_carrier(A))
               => ( ~ ( C = join_of_latt_set(A,B)
                      & ~ ( latt_element_smaller(A,C,B)
                          & ! [D] : 
                              ( element(D,the_carrier(A))
                             => ~ ( latt_element_smaller(A,D,B)
                                  & ~ below(A,C,D) ) ) ) )
                  & ~ ( latt_element_smaller(A,C,B)
                      & ! [D] : 
                          ( element(D,the_carrier(A))
                         => ~ ( latt_element_smaller(A,D,B)
                              & ~ below(A,C,D) ) )
                      & C != join_of_latt_set(A,B) ) ) ) ) ) )).

fof(d22_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & latt_str(A) )
     => ! [B] : meet_of_latt_set(A,B) = join_of_latt_set(A,a_2_2_lattice3(A,B)) ) )).

fof(d2_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => poset_of_lattice(A) = rel_str_of(the_carrier(A),k2_lattice3(A)) ) )).

fof(d3_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => cast_to_el_of_LattPOSet(A,B) = B ) ) )).

fof(d4_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(poset_of_lattice(A)))
         => cast_to_el_of_lattice(A,B) = B ) ) )).

fof(d9_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ! [B,C] : 
          ( element(C,the_carrier(A))
         => ~ ( ex_sup_of_relstr_set(A,B)
              & ~ ( ~ ( C = join_on_relstr(A,B)
                      & ~ ( relstr_set_smaller(A,B,C)
                          & ! [D] : 
                              ( element(D,the_carrier(A))
                             => ~ ( relstr_set_smaller(A,B,D)
                                  & ~ related(A,C,D) ) ) ) )
                  & ~ ( relstr_set_smaller(A,B,C)
                      & ! [D] : 
                          ( element(D,the_carrier(A))
                         => ~ ( relstr_set_smaller(A,B,D)
                              & ~ related(A,C,D) ) )
                      & C != join_on_relstr(A,B) ) ) ) ) ) )).

fof(dt_g1_orders_2,axiom,(
    ! [A,B] : 
      ( relation_of2(B,A,A)
     => ( strict_rel_str(rel_str_of(A,B))
        & rel_str(rel_str_of(A,B)) ) ) )).

fof(dt_g1_struct_0,axiom,(
    ! [A] : 
      ( strict_one_sorted(one_sorted_str_of(A))
      & one_sorted_str(one_sorted_str_of(A)) ) )).

fof(dt_g2_struct_0,axiom,(
    ! [A,B] : 
      ( element(B,A)
     => ( strict_zero_str(zero_str_of(A,B))
        & zero_str(zero_str_of(A,B)) ) ) )).

fof(dt_g3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & function(C)
        & quasi_total(C,cartesian_product2(A,A),A)
        & relation_of2(C,cartesian_product2(A,A),A) )
     => ( strict_latt_str(latt_str_of(A,B,C))
        & latt_str(latt_str_of(A,B,C)) ) ) )).

fof(dt_k15_lattice3,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & latt_str(A) )
     => element(join_of_latt_set(A,B),the_carrier(A)) ) )).

fof(dt_k16_lattice3,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & latt_str(A) )
     => element(meet_of_latt_set(A,B),the_carrier(A)) ) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_yellow_0,axiom,(
    ! [A,B] : 
      ( rel_str(A)
     => element(join_on_relstr(A,B),the_carrier(A)) ) )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( reflexive(k2_lattice3(A))
        & antisymmetric(k2_lattice3(A))
        & transitive(k2_lattice3(A))
        & v1_partfun1(k2_lattice3(A),the_carrier(A),the_carrier(A))
        & relation_of2_as_subset(k2_lattice3(A),the_carrier(A),the_carrier(A)) ) ) )).

fof(dt_k2_yellow_0,axiom,(
    ! [A,B] : 
      ( rel_str(A)
     => element(meet_on_relstr(A,B),the_carrier(A)) ) )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( strict_rel_str(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & rel_str(poset_of_lattice(A)) ) ) )).

fof(dt_k4_lattice3,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A)
        & element(B,the_carrier(A)) )
     => element(cast_to_el_of_LattPOSet(A,B),the_carrier(poset_of_lattice(A))) ) )).

fof(dt_k5_lattice3,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A)
        & element(B,the_carrier(poset_of_lattice(A))) )
     => element(cast_to_el_of_lattice(A,B),the_carrier(A)) ) )).

fof(dt_k9_filter_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => relation(relation_of_lattice(A)) ) )).

fof(dt_l1_lattices,axiom,(
    ! [A] : 
      ( meet_semilatt_str(A)
     => one_sorted_str(A) ) )).

fof(dt_l1_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => one_sorted_str(A) ) )).

fof(dt_l1_struct_0,axiom,(
    $true )).

fof(dt_l2_lattices,axiom,(
    ! [A] : 
      ( join_semilatt_str(A)
     => one_sorted_str(A) ) )).

fof(dt_l2_struct_0,axiom,(
    ! [A] : 
      ( zero_str(A)
     => one_sorted_str(A) ) )).

fof(dt_l3_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( meet_semilatt_str(A)
        & join_semilatt_str(A) ) ) )).

fof(dt_m1_relset_1,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(dt_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) )).

fof(dt_u1_lattices,axiom,(
    ! [A] : 
      ( meet_semilatt_str(A)
     => ( function(the_L_meet(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & relation_of2_as_subset(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) )).

fof(dt_u1_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => relation_of2_as_subset(the_InternalRel(A),the_carrier(A),the_carrier(A)) ) )).

fof(dt_u1_struct_0,axiom,(
    $true )).

fof(dt_u2_lattices,axiom,(
    ! [A] : 
      ( join_semilatt_str(A)
     => ( function(the_L_join(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & relation_of2_as_subset(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) )).

fof(dt_u2_struct_0,axiom,(
    ! [A] : 
      ( zero_str(A)
     => element(the_zero(A),the_carrier(A)) ) )).

fof(existence_l1_lattices,axiom,(
    ? [A] : meet_semilatt_str(A) )).

fof(existence_l1_orders_2,axiom,(
    ? [A] : rel_str(A) )).

fof(existence_l1_struct_0,axiom,(
    ? [A] : one_sorted_str(A) )).

fof(existence_l2_lattices,axiom,(
    ? [A] : join_semilatt_str(A) )).

fof(existence_l2_struct_0,axiom,(
    ? [A] : zero_str(A) )).

fof(existence_l3_lattices,axiom,(
    ? [A] : latt_str(A) )).

fof(existence_m1_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2(C,A,B) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(existence_m2_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2_as_subset(C,A,B) )).

fof(fc14_finset_1,axiom,(
    ! [A,B] : 
      ( ( finite(A)
        & finite(B) )
     => finite(cartesian_product2(A,B)) ) )).

fof(fc1_orders_2,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & relation_of2(B,A,A) )
     => ( ~ empty_carrier(rel_str_of(A,B))
        & strict_rel_str(rel_str_of(A,B)) ) ) )).

fof(fc1_struct_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(the_carrier(A)) ) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc2_orders_2,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & rel_str(A) )
     => ( relation(the_InternalRel(A))
        & reflexive(the_InternalRel(A))
        & antisymmetric(the_InternalRel(A))
        & transitive(the_InternalRel(A))
        & v1_partfun1(the_InternalRel(A),the_carrier(A),the_carrier(A)) ) ) )).

fof(fc3_orders_2,axiom,(
    ! [A,B] : 
      ( ( reflexive(B)
        & antisymmetric(B)
        & transitive(B)
        & v1_partfun1(B,A,A)
        & relation_of2(B,A,A) )
     => ( strict_rel_str(rel_str_of(A,B))
        & reflexive_relstr(rel_str_of(A,B))
        & transitive_relstr(rel_str_of(A,B))
        & antisymmetric_relstr(rel_str_of(A,B)) ) ) )).

fof(fc4_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( ~ empty_carrier(poset_of_lattice(A))
        & strict_rel_str(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A)) ) ) )).

fof(free_g1_orders_2,axiom,(
    ! [A,B] : 
      ( relation_of2(B,A,A)
     => ! [C,D] : 
          ( rel_str_of(A,B) = rel_str_of(C,D)
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

fof(free_g3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & function(C)
        & quasi_total(C,cartesian_product2(A,A),A)
        & relation_of2(C,cartesian_product2(A,A),A) )
     => ! [D,E,F] : 
          ( latt_str_of(A,B,C) = latt_str_of(D,E,F)
         => ( A = D
            & B = E
            & C = F ) ) ) )).

fof(rc1_finset_1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & finite(A) ) )).

fof(rc1_lattice3,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & complete_relstr(A) ) )).

fof(rc1_orders_2,axiom,(
    ? [A] : 
      ( rel_str(A)
      & strict_rel_str(A) ) )).

fof(rc1_struct_0,axiom,(
    ? [A] : 
      ( one_sorted_str(A)
      & strict_one_sorted(A) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc1_yellow_0,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A)
      & trivial_carrier(A) ) )).

fof(rc2_finset_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(A))
      & empty(B)
      & relation(B)
      & function(B)
      & one_to_one(B)
      & epsilon_transitive(B)
      & epsilon_connected(B)
      & ordinal(B)
      & natural(B)
      & finite(B) ) )).

fof(rc2_lattice3,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A) ) )).

fof(rc2_orders_2,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A) ) )).

fof(rc2_struct_0,axiom,(
    ? [A] : 
      ( zero_str(A)
      & strict_zero_str(A) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(rc2_yellow_0,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A)
      & lower_bounded_relstr(A)
      & upper_bounded_relstr(A)
      & bounded_relstr(A) ) )).

fof(rc3_finset_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) ) ) )).

fof(rc3_lattice3,axiom,(
    ? [A] : 
      ( latt_str(A)
      & ~ empty_carrier(A)
      & strict_latt_str(A)
      & join_commutative(A)
      & join_associative(A)
      & meet_commutative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A)
      & complete_latt_str(A)
      & join_distributive(A)
      & meet_distributive(A) ) )).

fof(rc3_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & strongly_connected_rel_subset(B,A) ) ) )).

fof(rc3_struct_0,axiom,(
    ? [A] : 
      ( one_sorted_str(A)
      & ~ empty_carrier(A) ) )).

fof(rc4_finset_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) ) ) )).

fof(rc4_struct_0,axiom,(
    ? [A] : 
      ( zero_str(A)
      & ~ empty_carrier(A) ) )).

fof(rc5_struct_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B) ) ) )).

fof(redefinition_k2_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => k2_lattice3(A) = relation_of_lattice(A) ) )).

fof(redefinition_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) )).

fof(redefinition_r3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & meet_commutative(A)
        & meet_absorbing(A)
        & join_absorbing(A)
        & latt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => ( below_refl(A,B,C)
      <=> below(A,B,C) ) ) )).

fof(redefinition_r3_orders_2,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & rel_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => ( related_reflexive(A,B,C)
      <=> related(A,B,C) ) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(reflexivity_r3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & meet_commutative(A)
        & meet_absorbing(A)
        & join_absorbing(A)
        & latt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => below_refl(A,B,B) ) )).

fof(reflexivity_r3_orders_2,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & rel_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => related_reflexive(A,B,B) ) )).

fof(t15_yellow_0,axiom,(
    ! [A] : 
      ( ( antisymmetric_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( ~ ( ex_sup_of_relstr_set(A,B)
              & ! [C] : 
                  ( element(C,the_carrier(A))
                 => ~ ( relstr_set_smaller(A,B,C)
                      & ! [D] : 
                          ( element(D,the_carrier(A))
                         => ~ ( relstr_set_smaller(A,B,D)
                              & ~ related(A,C,D) ) ) ) ) )
          & ~ ( ~ ! [C] : 
                    ( element(C,the_carrier(A))
                   => ~ ( relstr_set_smaller(A,B,C)
                        & ! [D] : 
                            ( element(D,the_carrier(A))
                           => ~ ( relstr_set_smaller(A,B,D)
                                & ~ related(A,C,D) ) ) ) )
              & ~ ex_sup_of_relstr_set(A,B) ) ) ) )).

fof(t16_yellow_0,axiom,(
    ! [A] : 
      ( ( antisymmetric_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( ~ ( ex_inf_of_relstr_set(A,B)
              & ! [C] : 
                  ( element(C,the_carrier(A))
                 => ~ ( relstr_element_smaller(A,B,C)
                      & ! [D] : 
                          ( element(D,the_carrier(A))
                         => ~ ( relstr_element_smaller(A,B,D)
                              & ~ related(A,D,C) ) ) ) ) )
          & ~ ( ~ ! [C] : 
                    ( element(C,the_carrier(A))
                   => ~ ( relstr_element_smaller(A,B,C)
                        & ! [D] : 
                            ( element(D,the_carrier(A))
                           => ~ ( relstr_element_smaller(A,B,D)
                                & ~ related(A,D,C) ) ) ) )
              & ~ ex_inf_of_relstr_set(A,B) ) ) ) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t28_lattice3,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) )
     => ! [C] : 
          ( element(C,the_carrier(B))
         => ( ~ ( latt_set_smaller(B,C,A)
                & ~ relstr_element_smaller(poset_of_lattice(B),A,cast_to_el_of_LattPOSet(B,C)) )
            & ~ ( relstr_element_smaller(poset_of_lattice(B),A,cast_to_el_of_LattPOSet(B,C))
                & ~ latt_set_smaller(B,C,A) ) ) ) ) )).

fof(t29_lattice3,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) )
     => ! [C] : 
          ( element(C,the_carrier(poset_of_lattice(B)))
         => ( ~ ( relstr_element_smaller(poset_of_lattice(B),A,C)
                & ~ latt_set_smaller(B,cast_to_el_of_lattice(B,C),A) )
            & ~ ( latt_set_smaller(B,cast_to_el_of_lattice(B,C),A)
                & ~ relstr_element_smaller(poset_of_lattice(B),A,C) ) ) ) ) )).

fof(t29_yellow_0,conjecture,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & complete_latt_str(A)
        & latt_str(A) )
     => ! [B] : 
          ( join_of_latt_set(A,B) = join_on_relstr(poset_of_lattice(A),B)
          & meet_of_latt_set(A,B) = meet_on_relstr(poset_of_lattice(A),B) ) ) )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t30_lattice3,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) )
     => ! [C] : 
          ( element(C,the_carrier(B))
         => ( ~ ( latt_element_smaller(B,C,A)
                & ~ relstr_set_smaller(poset_of_lattice(B),A,cast_to_el_of_LattPOSet(B,C)) )
            & ~ ( relstr_set_smaller(poset_of_lattice(B),A,cast_to_el_of_LattPOSet(B,C))
                & ~ latt_element_smaller(B,C,A) ) ) ) ) )).

fof(t31_lattice3,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) )
     => ! [C] : 
          ( element(C,the_carrier(poset_of_lattice(B)))
         => ( ~ ( relstr_set_smaller(poset_of_lattice(B),A,C)
                & ~ latt_element_smaller(B,cast_to_el_of_lattice(B,C),A) )
            & ~ ( latt_element_smaller(B,cast_to_el_of_lattice(B,C),A)
                & ~ relstr_set_smaller(poset_of_lattice(B),A,C) ) ) ) ) )).

fof(t34_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & complete_latt_str(A)
        & latt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( ~ ( B = meet_of_latt_set(A,C)
                  & ~ ( latt_set_smaller(A,B,C)
                      & ! [D] : 
                          ( element(D,the_carrier(A))
                         => ~ ( latt_set_smaller(A,D,C)
                              & ~ below_refl(A,D,B) ) ) ) )
              & ~ ( latt_set_smaller(A,B,C)
                  & ! [D] : 
                      ( element(D,the_carrier(A))
                     => ~ ( latt_set_smaller(A,D,C)
                          & ~ below_refl(A,D,B) ) )
                  & B != meet_of_latt_set(A,C) ) ) ) ) )).

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

fof(t7_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ( ~ ( below_refl(A,B,C)
                    & ~ related_reflexive(poset_of_lattice(A),cast_to_el_of_LattPOSet(A,B),cast_to_el_of_LattPOSet(A,C)) )
                & ~ ( related_reflexive(poset_of_lattice(A),cast_to_el_of_LattPOSet(A,B),cast_to_el_of_LattPOSet(A,C))
                    & ~ below_refl(A,B,C) ) ) ) ) ) )).

fof(t8_boole,axiom,(
    ! [A,B] : 
      ~ ( empty(A)
        & A != B
        & empty(B) ) )).
%------------------------------------------------------------------------------
