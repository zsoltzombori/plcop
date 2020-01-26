%------------------------------------------------------------------------------
% File     : yellow_1__t18_yellow_1

% Syntax   : Number of formulae    :  180 (  24 unit)
%            Number of atoms       :  847 (  42 equality)
%            Maximal formula depth :   18 (   6 average)
%            Number of connectives :  782 ( 115 ~  ;   1  |; 507  &)
%                                         (   4 <=>; 155 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   74 (   1 propositional; 0-3 arity)
%            Number of functors    :   28 (   1 constant; 0-3 arity)
%            Number of variables   :  270 (   1 singleton; 211 !;  59 ?)
%            Maximal term depth    :    4 (   1 average)
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

fof(abstractness_v1_lattices,axiom,(
    ! [A] : 
      ( meet_semilatt_str(A)
     => ( strict_meet_semilatt_str(A)
       => A = meet_semilatt_str_of(the_carrier(A),the_L_meet(A)) ) ) )).

fof(abstractness_v1_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( strict_rel_str(A)
       => A = rel_str_of(the_carrier(A),the_InternalRel(A)) ) ) )).

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

fof(abstractness_v2_lattices,axiom,(
    ! [A] : 
      ( join_semilatt_str(A)
     => ( strict_join_semilatt_str(A)
       => A = join_semilatt_str_of(the_carrier(A),the_L_join(A)) ) ) )).

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

fof(cc10_yellow_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( sups_inheriting_subrelstr(B,A)
           => join_inheriting_subrelstr(B,A) ) ) ) )).

fof(cc11_yellow_0,axiom,(
    ! [A] : 
      ( ( transitive_relstr(A)
        & antisymmetric_relstr(A)
        & with_infima_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( ( ~ empty_carrier(B)
              & full_subrelstr(B,A)
              & meet_inheriting_subrelstr(B,A) )
           => ( ~ empty_carrier(B)
              & transitive_relstr(B)
              & antisymmetric_relstr(B)
              & with_infima_relstr(B)
              & full_subrelstr(B,A)
              & meet_inheriting_subrelstr(B,A) ) ) ) ) )).

fof(cc12_yellow_0,axiom,(
    ! [A] : 
      ( ( transitive_relstr(A)
        & antisymmetric_relstr(A)
        & with_suprema_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( ( ~ empty_carrier(B)
              & full_subrelstr(B,A)
              & join_inheriting_subrelstr(B,A) )
           => ( ~ empty_carrier(B)
              & transitive_relstr(B)
              & antisymmetric_relstr(B)
              & with_suprema_relstr(B)
              & full_subrelstr(B,A)
              & join_inheriting_subrelstr(B,A) ) ) ) ) )).

fof(cc1_knaster,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lattice(A)
          & complete_latt_str(A) )
       => ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_commutative(A)
          & meet_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A)
          & lattice(A)
          & lower_bounded_semilattstr(A)
          & upper_bounded_semilattstr(A)
          & bounded_lattstr(A) ) ) ) )).

fof(cc1_lattice3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( with_suprema_relstr(A)
       => ~ empty_carrier(A) ) ) )).

fof(cc1_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lattice(A) )
       => ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_commutative(A)
          & meet_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A) ) ) ) )).

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

fof(cc1_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A) ) ) ) )).

fof(cc2_lattice3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( with_infima_relstr(A)
       => ~ empty_carrier(A) ) ) )).

fof(cc2_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_commutative(A)
          & meet_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A) )
       => ( ~ empty_carrier(A)
          & lattice(A) ) ) ) )).

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

fof(cc3_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lower_bounded_semilattstr(A)
          & upper_bounded_semilattstr(A) )
       => ( ~ empty_carrier(A)
          & bounded_lattstr(A) ) ) ) )).

fof(cc3_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & bounded_relstr(A) ) ) ) )).

fof(cc4_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & bounded_lattstr(A) )
       => ( ~ empty_carrier(A)
          & lower_bounded_semilattstr(A)
          & upper_bounded_semilattstr(A) ) ) ) )).

fof(cc4_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( bounded_relstr(A)
       => ( lower_bounded_relstr(A)
          & upper_bounded_relstr(A) ) ) ) )).

fof(cc5_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & boolean_lattstr(A) )
       => ( ~ empty_carrier(A)
          & distributive_lattstr(A)
          & lower_bounded_semilattstr(A)
          & upper_bounded_semilattstr(A)
          & bounded_lattstr(A)
          & complemented_lattstr(A) ) ) ) )).

fof(cc5_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( lower_bounded_relstr(A)
          & upper_bounded_relstr(A) )
       => bounded_relstr(A) ) ) )).

fof(cc6_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & distributive_lattstr(A)
          & bounded_lattstr(A)
          & complemented_lattstr(A) )
       => ( ~ empty_carrier(A)
          & boolean_lattstr(A) ) ) ) )).

fof(cc6_yellow_0,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( full_subrelstr(B,A)
           => ( reflexive_relstr(B)
              & full_subrelstr(B,A) ) ) ) ) )).

fof(cc7_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lattice(A)
          & distributive_lattstr(A) )
       => ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_commutative(A)
          & meet_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A)
          & lattice(A)
          & modular_lattstr(A) ) ) ) )).

fof(cc7_yellow_0,axiom,(
    ! [A] : 
      ( ( transitive_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( full_subrelstr(B,A)
           => ( transitive_relstr(B)
              & full_subrelstr(B,A) ) ) ) ) )).

fof(cc8_yellow_0,axiom,(
    ! [A] : 
      ( ( antisymmetric_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( full_subrelstr(B,A)
           => ( antisymmetric_relstr(B)
              & full_subrelstr(B,A) ) ) ) ) )).

fof(cc9_yellow_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( infs_inheriting_subrelstr(B,A)
           => meet_inheriting_subrelstr(B,A) ) ) ) )).

fof(d11_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => bottom_of_relstr(A) = join_on_relstr(A,empty_set) ) )).

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

fof(d2_yellow_1,axiom,(
    ! [A] : boole_POSet(A) = poset_of_lattice(boole_lattice(A)) )).

fof(dt_g1_lattices,axiom,(
    ! [A,B] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ( strict_meet_semilatt_str(meet_semilatt_str_of(A,B))
        & meet_semilatt_str(meet_semilatt_str_of(A,B)) ) ) )).

fof(dt_g1_orders_2,axiom,(
    ! [A,B] : 
      ( relation_of2(B,A,A)
     => ( strict_rel_str(rel_str_of(A,B))
        & rel_str(rel_str_of(A,B)) ) ) )).

fof(dt_g1_pre_topc,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ( strict_top_str(top_str_of(A,B))
        & top_str(top_str_of(A,B)) ) ) )).

fof(dt_g1_struct_0,axiom,(
    ! [A] : 
      ( strict_one_sorted(one_sorted_str_of(A))
      & one_sorted_str(one_sorted_str_of(A)) ) )).

fof(dt_g2_lattices,axiom,(
    ! [A,B] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ( strict_join_semilatt_str(join_semilatt_str_of(A,B))
        & join_semilatt_str(join_semilatt_str_of(A,B)) ) ) )).

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

fof(dt_k1_lattice3,axiom,(
    ! [A] : 
      ( strict_latt_str(boole_lattice(A))
      & latt_str(boole_lattice(A)) ) )).

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

fof(dt_k3_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => element(bottom_of_relstr(A),the_carrier(A)) ) )).

fof(dt_k3_yellow_1,axiom,(
    ! [A] : 
      ( strict_rel_str(boole_POSet(A))
      & rel_str(boole_POSet(A)) ) )).

fof(dt_k5_lattices,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & meet_semilatt_str(A) )
     => element(bottom_of_semilattstr(A),the_carrier(A)) ) )).

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

fof(dt_l1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
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

fof(dt_m1_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ! [B] : 
          ( subrelstr(B,A)
         => rel_str(B) ) ) )).

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

fof(dt_u1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => element(the_topology(A),powerset(powerset(the_carrier(A)))) ) )).

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

fof(existence_l1_pre_topc,axiom,(
    ? [A] : top_str(A) )).

fof(existence_l1_struct_0,axiom,(
    ? [A] : one_sorted_str(A) )).

fof(existence_l2_lattices,axiom,(
    ? [A] : join_semilatt_str(A) )).

fof(existence_l2_struct_0,axiom,(
    ? [A] : zero_str(A) )).

fof(existence_l3_lattices,axiom,(
    ? [A] : latt_str(A) )).

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

fof(existence_m1_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ? [B] : subrelstr(B,A) ) )).

fof(existence_m2_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2_as_subset(C,A,B) )).

fof(fc1_knaster,axiom,(
    ! [A] : 
      ( ~ empty_carrier(boole_lattice(A))
      & strict_latt_str(boole_lattice(A))
      & join_commutative(boole_lattice(A))
      & join_associative(boole_lattice(A))
      & meet_commutative(boole_lattice(A))
      & meet_associative(boole_lattice(A))
      & meet_absorbing(boole_lattice(A))
      & join_absorbing(boole_lattice(A))
      & lattice(boole_lattice(A))
      & distributive_lattstr(boole_lattice(A))
      & modular_lattstr(boole_lattice(A))
      & lower_bounded_semilattstr(boole_lattice(A))
      & upper_bounded_semilattstr(boole_lattice(A))
      & bounded_lattstr(boole_lattice(A))
      & complemented_lattstr(boole_lattice(A))
      & boolean_lattstr(boole_lattice(A))
      & complete_latt_str(boole_lattice(A)) ) )).

fof(fc1_lattice3,axiom,(
    ! [A] : 
      ( ~ empty_carrier(boole_lattice(A))
      & strict_latt_str(boole_lattice(A)) ) )).

fof(fc1_lattices,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ( ~ empty_carrier(join_semilatt_str_of(A,B))
        & strict_join_semilatt_str(join_semilatt_str_of(A,B)) ) ) )).

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

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc1_yellow_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( ~ empty_carrier(poset_of_lattice(A))
        & strict_rel_str(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & with_suprema_relstr(poset_of_lattice(A))
        & with_infima_relstr(poset_of_lattice(A)) ) ) )).

fof(fc2_cantor_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ~ empty(the_topology(A)) ) )).

fof(fc2_lattice3,axiom,(
    ! [A] : 
      ( ~ empty_carrier(boole_lattice(A))
      & strict_latt_str(boole_lattice(A))
      & join_commutative(boole_lattice(A))
      & join_associative(boole_lattice(A))
      & meet_commutative(boole_lattice(A))
      & meet_associative(boole_lattice(A))
      & meet_absorbing(boole_lattice(A))
      & join_absorbing(boole_lattice(A))
      & lattice(boole_lattice(A)) ) )).

fof(fc2_lattices,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ( ~ empty_carrier(meet_semilatt_str_of(A,B))
        & strict_meet_semilatt_str(meet_semilatt_str_of(A,B)) ) ) )).

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

fof(fc2_yellow_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & upper_bounded_semilattstr(A)
        & latt_str(A) )
     => ( ~ empty_carrier(poset_of_lattice(A))
        & strict_rel_str(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & upper_bounded_relstr(poset_of_lattice(A))
        & with_suprema_relstr(poset_of_lattice(A))
        & with_infima_relstr(poset_of_lattice(A)) ) ) )).

fof(fc3_lattice3,axiom,(
    ! [A] : 
      ( ~ empty_carrier(boole_lattice(A))
      & strict_latt_str(boole_lattice(A))
      & join_commutative(boole_lattice(A))
      & join_associative(boole_lattice(A))
      & meet_commutative(boole_lattice(A))
      & meet_associative(boole_lattice(A))
      & meet_absorbing(boole_lattice(A))
      & join_absorbing(boole_lattice(A))
      & lattice(boole_lattice(A))
      & distributive_lattstr(boole_lattice(A))
      & modular_lattstr(boole_lattice(A))
      & lower_bounded_semilattstr(boole_lattice(A))
      & upper_bounded_semilattstr(boole_lattice(A))
      & bounded_lattstr(boole_lattice(A))
      & complemented_lattstr(boole_lattice(A))
      & boolean_lattstr(boole_lattice(A)) ) )).

fof(fc3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty(A)
        & function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & function(C)
        & quasi_total(C,cartesian_product2(A,A),A)
        & relation_of2(C,cartesian_product2(A,A),A) )
     => ( ~ empty_carrier(latt_str_of(A,B,C))
        & strict_latt_str(latt_str_of(A,B,C)) ) ) )).

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

fof(fc3_yellow_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & lower_bounded_semilattstr(A)
        & latt_str(A) )
     => ( ~ empty_carrier(poset_of_lattice(A))
        & strict_rel_str(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & lower_bounded_relstr(poset_of_lattice(A))
        & with_suprema_relstr(poset_of_lattice(A))
        & with_infima_relstr(poset_of_lattice(A)) ) ) )).

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

fof(fc4_subset_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ~ empty(cartesian_product2(A,B)) ) )).

fof(fc4_yellow_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & complete_latt_str(A)
        & latt_str(A) )
     => ( ~ empty_carrier(poset_of_lattice(A))
        & strict_rel_str(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & lower_bounded_relstr(poset_of_lattice(A))
        & upper_bounded_relstr(poset_of_lattice(A))
        & bounded_relstr(poset_of_lattice(A))
        & with_suprema_relstr(poset_of_lattice(A))
        & with_infima_relstr(poset_of_lattice(A))
        & complete_relstr(poset_of_lattice(A)) ) ) )).

fof(fc7_yellow_1,axiom,(
    ! [A] : 
      ( ~ empty_carrier(boole_POSet(A))
      & strict_rel_str(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A)) ) )).

fof(fc8_yellow_1,axiom,(
    ! [A] : 
      ( ~ empty_carrier(boole_POSet(A))
      & strict_rel_str(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A))
      & lower_bounded_relstr(boole_POSet(A))
      & upper_bounded_relstr(boole_POSet(A))
      & bounded_relstr(boole_POSet(A))
      & with_suprema_relstr(boole_POSet(A))
      & with_infima_relstr(boole_POSet(A))
      & complete_relstr(boole_POSet(A)) ) )).

fof(free_g1_lattices,axiom,(
    ! [A,B] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ! [C,D] : 
          ( meet_semilatt_str_of(A,B) = meet_semilatt_str_of(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(free_g1_orders_2,axiom,(
    ! [A,B] : 
      ( relation_of2(B,A,A)
     => ! [C,D] : 
          ( rel_str_of(A,B) = rel_str_of(C,D)
         => ( A = C
            & B = D ) ) ) )).

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

fof(free_g2_lattices,axiom,(
    ! [A,B] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ! [C,D] : 
          ( join_semilatt_str_of(A,B) = join_semilatt_str_of(C,D)
         => ( A = C
            & B = D ) ) ) )).

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

fof(rc10_lattices,axiom,(
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
      & distributive_lattstr(A)
      & modular_lattstr(A)
      & lower_bounded_semilattstr(A)
      & upper_bounded_semilattstr(A) ) )).

fof(rc11_lattices,axiom,(
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
      & lower_bounded_semilattstr(A)
      & upper_bounded_semilattstr(A)
      & bounded_lattstr(A) ) )).

fof(rc12_lattices,axiom,(
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
      & lower_bounded_semilattstr(A)
      & upper_bounded_semilattstr(A)
      & bounded_lattstr(A)
      & complemented_lattstr(A) ) )).

fof(rc13_lattices,axiom,(
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
      & distributive_lattstr(A)
      & lower_bounded_semilattstr(A)
      & upper_bounded_semilattstr(A)
      & bounded_lattstr(A)
      & complemented_lattstr(A)
      & boolean_lattstr(A) ) )).

fof(rc1_funcop_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & function_yielding(A) ) )).

fof(rc1_knaster,axiom,(
    ! [A,B] : 
      ( ~ empty(B)
     => ? [C] : 
          ( relation_of2(C,A,B)
          & relation(C)
          & function(C)
          & quasi_total(C,A,B)
          & v6_cohsp_1(C) ) ) )).

fof(rc1_lattice3,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & complete_relstr(A) ) )).

fof(rc1_lattices,axiom,(
    ? [A] : 
      ( meet_semilatt_str(A)
      & strict_meet_semilatt_str(A) ) )).

fof(rc1_orders_2,axiom,(
    ? [A] : 
      ( rel_str(A)
      & strict_rel_str(A) ) )).

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

fof(rc2_knaster,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & with_suprema_subset_of_latt_str(B,A)
          & with_infima_subset_of_latt_str(B,A) ) ) )).

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

fof(rc2_lattices,axiom,(
    ? [A] : 
      ( join_semilatt_str(A)
      & strict_join_semilatt_str(A) ) )).

fof(rc2_orders_2,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A) ) )).

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

fof(rc3_lattices,axiom,(
    ? [A] : 
      ( latt_str(A)
      & strict_latt_str(A) ) )).

fof(rc3_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & strongly_connected_rel_subset(B,A) ) ) )).

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

fof(rc3_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ? [B] : 
          ( subrelstr(B,A)
          & strict_rel_str(B)
          & full_subrelstr(B,A) ) ) )).

fof(rc4_lattices,axiom,(
    ? [A] : 
      ( join_semilatt_str(A)
      & ~ empty_carrier(A)
      & strict_join_semilatt_str(A) ) )).

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

fof(rc4_yellow_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ? [B] : 
          ( subrelstr(B,A)
          & ~ empty_carrier(B)
          & strict_rel_str(B)
          & full_subrelstr(B,A) ) ) )).

fof(rc5_lattices,axiom,(
    ? [A] : 
      ( meet_semilatt_str(A)
      & ~ empty_carrier(A)
      & strict_meet_semilatt_str(A) ) )).

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

fof(rc5_yellow_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ? [B] : 
          ( subrelstr(B,A)
          & ~ empty_carrier(B)
          & strict_rel_str(B)
          & full_subrelstr(B,A)
          & meet_inheriting_subrelstr(B,A)
          & join_inheriting_subrelstr(B,A)
          & infs_inheriting_subrelstr(B,A)
          & sups_inheriting_subrelstr(B,A) ) ) )).

fof(rc6_lattices,axiom,(
    ? [A] : 
      ( latt_str(A)
      & ~ empty_carrier(A)
      & strict_latt_str(A) ) )).

fof(rc6_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & closed_subset(B,A) ) ) )).

fof(rc7_lattices,axiom,(
    ? [A] : 
      ( join_semilatt_str(A)
      & ~ empty_carrier(A)
      & strict_join_semilatt_str(A)
      & join_commutative(A)
      & join_associative(A) ) )).

fof(rc7_pre_topc,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & closed_subset(B,A) ) ) )).

fof(rc8_lattices,axiom,(
    ? [A] : 
      ( meet_semilatt_str(A)
      & ~ empty_carrier(A)
      & strict_meet_semilatt_str(A)
      & meet_commutative(A)
      & meet_associative(A) ) )).

fof(rc9_lattices,axiom,(
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
      & lattice(A) ) )).

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

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t18_yellow_1,conjecture,(
    ! [A] : bottom_of_relstr(boole_POSet(A)) = empty_set )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t29_yellow_0,axiom,(
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

fof(t3_lattice3,axiom,(
    ! [A] : 
      ( lower_bounded_semilattstr(boole_lattice(A))
      & bottom_of_semilattstr(boole_lattice(A)) = empty_set ) )).

fof(t3_subset,axiom,(
    ! [A,B] : 
      ( element(A,powerset(B))
    <=> subset(A,B) ) )).

fof(t4_subset,axiom,(
    ! [A,B,C] : 
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) )).

fof(t50_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & complete_latt_str(A)
        & latt_str(A) )
     => ( ~ empty_carrier(A)
        & lattice(A)
        & lower_bounded_semilattstr(A)
        & latt_str(A)
        & bottom_of_semilattstr(A) = join_of_latt_set(A,empty_set) ) ) )).

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
