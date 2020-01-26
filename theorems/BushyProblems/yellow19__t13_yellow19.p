%------------------------------------------------------------------------------
% File     : yellow19__t13_yellow19

% Syntax   : Number of formulae    :  256 (  22 unit)
%            Number of atoms       : 1508 (  38 equality)
%            Maximal formula depth :   36 (   7 average)
%            Number of connectives : 1510 ( 258 ~  ;   1  |; 948  &)
%                                         (   4 <=>; 299 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :  137 (   1 propositional; 0-3 arity)
%            Number of functors    :   23 (   1 constant; 0-4 arity)
%            Number of variables   :  468 (   1 singleton; 370 !;  98 ?)
%            Maximal term depth    :    5 (   1 average)
%------------------------------------------------------------------------------
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

fof(abstractness_v1_waybel_9,axiom,(
    ! [A] : 
      ( l1_waybel_9(A)
     => ( v1_waybel_9(A)
       => A = g1_waybel_9(the_carrier(A),the_InternalRel(A),the_topology(A)) ) ) )).

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

fof(abstractness_v6_waybel_0,axiom,(
    ! [A,B] : 
      ( ( one_sorted_str(A)
        & net_str(B,A) )
     => ( strict_net_str(B,A)
       => B = net_str_of(A,the_carrier(B),the_InternalRel(B),the_mapping(A,B)) ) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(cc10_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & up_complete_relstr(A)
          & join_complete_relstr(A) ) ) ) )).

fof(cc10_yellow_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( sups_inheriting_subrelstr(B,A)
           => join_inheriting_subrelstr(B,A) ) ) ) )).

fof(cc11_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & join_complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & lower_bounded_relstr(A) ) ) ) )).

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

fof(cc12_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & lower_bounded_relstr(A)
          & up_complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A)
          & complete_relstr(A)
          & lower_bounded_relstr(A)
          & upper_bounded_relstr(A)
          & bounded_relstr(A) ) ) ) )).

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

fof(cc13_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & antisymmetric_relstr(A)
          & join_complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & antisymmetric_relstr(A)
          & with_infima_relstr(A) ) ) ) )).

fof(cc14_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & antisymmetric_relstr(A)
          & upper_bounded_relstr(A)
          & join_complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & upper_bounded_relstr(A) ) ) ) )).

fof(cc1_finset_1,axiom,(
    ! [A] : 
      ( empty(A)
     => finite(A) ) )).

fof(cc1_lattice3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( with_suprema_relstr(A)
       => ~ empty_carrier(A) ) ) )).

fof(cc1_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => topological_space(B) ) ) )).

fof(cc1_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => relation(A) ) )).

fof(cc1_relset_1,axiom,(
    ! [A,B,C] : 
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) )).

fof(cc1_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( empty(B)
           => ( open_subset(B,A)
              & closed_subset(B,A) ) ) ) ) )).

fof(cc1_waybel32,axiom,(
    ! [A] : 
      ( l1_waybel_9(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & topological_space(A)
          & trivial_carrier(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & topological_space(A)
          & v1_waybel32(A) ) ) ) )).

fof(cc1_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( infs_inheriting_subrelstr(B,A)
           => filtered_infs_inheriting(B,A) ) ) ) )).

fof(cc1_waybel_7,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( ( ~ empty(B)
              & filtered_subset(B,A)
              & upper_relstr_subset(B,A)
              & poset_ultra_filter(B,A) )
           => ( ~ empty(B)
              & proper_element(B,powerset(the_carrier(A)))
              & filtered_subset(B,A)
              & upper_relstr_subset(B,A) ) ) ) ) )).

fof(cc1_waybel_9,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_space_T2(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => ( ~ empty_carrier(B)
           => ( ~ empty_carrier(B)
              & topological_space(B)
              & top_space_T2(B) ) ) ) ) )).

fof(cc1_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A) ) ) ) )).

fof(cc1_yellow_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A)
        & relstr_yielding(A) )
     => ( relation(A)
        & function(A)
        & v2_pralg_1(A) ) ) )).

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

fof(cc2_tops_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( empty(B)
           => boundary_set(B,A) ) ) ) )).

fof(cc2_waybel32,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & up_complete_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( m1_yellow_9(B,A)
         => ( v4_waybel11(B)
           => ( ~ empty_carrier(B)
              & reflexive_relstr(B)
              & transitive_relstr(B)
              & antisymmetric_relstr(B)
              & up_complete_relstr(B)
              & topological_space(B)
              & ~ v1_yellow_3(B) ) ) ) ) )).

fof(cc2_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( sups_inheriting_subrelstr(B,A)
           => directed_sups_inheriting(B,A) ) ) ) )).

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

fof(cc3_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( empty(B)
           => nowhere_dense(B,A) ) ) ) )).

fof(cc3_waybel32,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & up_complete_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( m1_yellow_9(B,A)
         => ( ~ empty_carrier(B)
            & reflexive_relstr(B)
            & transitive_relstr(B)
            & antisymmetric_relstr(B)
            & up_complete_relstr(B)
            & ~ v1_yellow_3(B) ) ) ) )).

fof(cc3_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( net_str(B,A)
         => ( ( ~ empty_carrier(B)
              & directed_relstr(B)
              & monotone_net_str(B,A) )
           => ( ~ empty_carrier(B)
              & directed_relstr(B)
              & eventually_directed(B,A) ) ) ) ) )).

fof(cc3_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & bounded_relstr(A) ) ) ) )).

fof(cc3_yellow_6,axiom,(
    ! [A,B] : 
      ( one_sorted_str(B)
     => ! [C] : 
          ( m3_yellow_6(C,A,B)
         => relstr_yielding(C) ) ) )).

fof(cc4_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( nowhere_dense(B,A)
           => boundary_set(B,A) ) ) ) )).

fof(cc4_waybel32,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & up_complete_relstr(A)
        & l1_waybel_9(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( lower_relstr_subset(B,A)
           => v3_waybel11(B,A) ) ) ) )).

fof(cc4_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( net_str(B,A)
         => ( ( ~ empty_carrier(B)
              & directed_relstr(B)
              & antitone_net_str(B,A) )
           => ( ~ empty_carrier(B)
              & directed_relstr(B)
              & eventually_filtered(B,A) ) ) ) ) )).

fof(cc4_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( bounded_relstr(A)
       => ( lower_bounded_relstr(A)
          & upper_bounded_relstr(A) ) ) ) )).

fof(cc4_yellow_6,axiom,(
    ! [A,B] : 
      ( ( one_sorted_str(A)
        & ~ empty_carrier(B)
        & transitive_relstr(B)
        & directed_relstr(B)
        & net_str(B,A) )
     => ! [C] : 
          ( m3_yellow_6(C,the_carrier(B),A)
         => ( ~ empty(C)
            & relstr_yielding(C)
            & v4_waybel_3(C) ) ) ) )).

fof(cc5_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( ( closed_subset(B,A)
              & boundary_set(B,A) )
           => ( boundary_set(B,A)
              & nowhere_dense(B,A) ) ) ) ) )).

fof(cc5_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & trivial_carrier(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & connected_relstr(A) ) ) ) )).

fof(cc5_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( lower_bounded_relstr(A)
          & upper_bounded_relstr(A) )
       => bounded_relstr(A) ) ) )).

fof(cc5_yellow_6,axiom,(
    ! [A,B] : 
      ( one_sorted_str(B)
     => ! [C] : 
          ( m3_yellow_6(C,A,B)
         => ( relstr_yielding(C)
            & v4_waybel_3(C) ) ) ) )).

fof(cc6_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( ( open_subset(B,A)
              & nowhere_dense(B,A) )
           => ( empty(B)
              & open_subset(B,A)
              & closed_subset(B,A)
              & v1_membered(B)
              & v2_membered(B)
              & v3_membered(B)
              & v4_membered(B)
              & v5_membered(B)
              & boundary_set(B,A)
              & nowhere_dense(B,A) ) ) ) ) )).

fof(cc6_yellow_0,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( full_subrelstr(B,A)
           => ( reflexive_relstr(B)
              & full_subrelstr(B,A) ) ) ) ) )).

fof(cc6_yellow_6,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( net_str(B,A)
         => ( ( ~ empty_carrier(B)
              & transitive_relstr(B)
              & directed_relstr(B)
              & constant_net_str(B,A) )
           => ( ~ empty_carrier(B)
              & transitive_relstr(B)
              & directed_relstr(B)
              & convergent_net(B,A) ) ) ) ) )).

fof(cc7_yellow_0,axiom,(
    ! [A] : 
      ( ( transitive_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( full_subrelstr(B,A)
           => ( transitive_relstr(B)
              & full_subrelstr(B,A) ) ) ) ) )).

fof(cc7_yellow_6,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] : 
          ( m4_yellow_6(B,A)
         => relation(B) ) ) )).

fof(cc8_yellow_0,axiom,(
    ! [A] : 
      ( ( antisymmetric_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( full_subrelstr(B,A)
           => ( antisymmetric_relstr(B)
              & full_subrelstr(B,A) ) ) ) ) )).

fof(cc8_yellow_6,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] : 
          ( m4_yellow_6(B,A)
         => ( v8_yellow_6(B,A)
           => ( relation(B)
              & v4_yellow_6(B,A)
              & v5_yellow_6(B,A)
              & v6_yellow_6(B,A)
              & v7_yellow_6(B,A) ) ) ) ) )).

fof(cc9_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( reflexive_relstr(A)
          & with_suprema_relstr(A)
          & up_complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & with_suprema_relstr(A)
          & upper_bounded_relstr(A) ) ) ) )).

fof(cc9_yellow_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( infs_inheriting_subrelstr(B,A)
           => meet_inheriting_subrelstr(B,A) ) ) ) )).

fof(cc9_yellow_6,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] : 
          ( m4_yellow_6(B,A)
         => ( ( v4_yellow_6(B,A)
              & v5_yellow_6(B,A)
              & v6_yellow_6(B,A)
              & v7_yellow_6(B,A) )
           => ( relation(B)
              & v8_yellow_6(B,A) ) ) ) ) )).

fof(d18_yellow_6,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( ( ~ empty_carrier(B)
            & transitive_relstr(B)
            & directed_relstr(B)
            & net_str(B,A) )
         => ! [C] : 
              ( element(C,powerset(the_carrier(A)))
             => ( ~ ( C = lim_points_of_net(A,B)
                    & ~ ! [D] : 
                          ( element(D,the_carrier(A))
                         => ( ~ ( in(D,C)
                                & ~ ! [E] : 
                                      ( point_neighbourhood(E,A,D)
                                     => is_eventually_in(A,B,E) ) )
                            & ~ ( ! [E] : 
                                    ( point_neighbourhood(E,A,D)
                                   => is_eventually_in(A,B,E) )
                                & ~ in(D,C) ) ) ) )
                & ~ ( ! [D] : 
                        ( element(D,the_carrier(A))
                       => ( ~ ( in(D,C)
                              & ~ ! [E] : 
                                    ( point_neighbourhood(E,A,D)
                                   => is_eventually_in(A,B,E) ) )
                          & ~ ( ! [E] : 
                                  ( point_neighbourhood(E,A,D)
                                 => is_eventually_in(A,B,E) )
                              & ~ in(D,C) ) ) )
                    & C != lim_points_of_net(A,B) ) ) ) ) ) )).

fof(d1_connsp_2,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,powerset(the_carrier(A)))
             => ( ~ ( point_neighbourhood(C,A,B)
                    & ~ in(B,interior(A,C)) )
                & ~ ( in(B,interior(A,C))
                    & ~ point_neighbourhood(C,A,B) ) ) ) ) ) )).

fof(d3_yellow19,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] : 
          ( ( ~ empty_carrier(B)
            & net_str(B,A) )
         => filter_of_net_str(A,B) = a_2_1_yellow19(A,B) ) ) )).

fof(d5_waybel_7,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B,C] : 
          ( ~ ( is_a_convergence_point_of_set(A,B,C)
              & ~ ! [D] : 
                    ( element(D,powerset(the_carrier(A)))
                   => ~ ( open_subset(D,A)
                        & in(C,D)
                        & ~ in(D,B) ) ) )
          & ~ ( ! [D] : 
                  ( element(D,powerset(the_carrier(A)))
                 => ~ ( open_subset(D,A)
                      & in(C,D)
                      & ~ in(D,B) ) )
              & ~ is_a_convergence_point_of_set(A,B,C) ) ) ) )).

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

fof(dt_g1_waybel_0,axiom,(
    ! [A,B,C,D] : 
      ( ( one_sorted_str(A)
        & relation_of2(C,B,B)
        & function(D)
        & quasi_total(D,B,the_carrier(A))
        & relation_of2(D,B,the_carrier(A)) )
     => ( strict_net_str(net_str_of(A,B,C,D),A)
        & net_str(net_str_of(A,B,C,D),A) ) ) )).

fof(dt_g1_waybel_9,axiom,(
    ! [A,B,C] : 
      ( ( relation_of2(B,A,A)
        & element(C,powerset(powerset(A))) )
     => ( v1_waybel_9(g1_waybel_9(A,B,C))
        & l1_waybel_9(g1_waybel_9(A,B,C)) ) ) )).

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

fof(dt_k11_yellow_6,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A)
        & ~ empty_carrier(B)
        & transitive_relstr(B)
        & directed_relstr(B)
        & net_str(B,A) )
     => element(lim_points_of_net(A,B),powerset(the_carrier(A))) ) )).

fof(dt_k1_tops_1,axiom,(
    ! [A,B] : 
      ( ( top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => element(interior(A,B),powerset(the_carrier(A))) ) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_pre_topc,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => element(cast_as_carrier_subset(A),powerset(the_carrier(A))) ) )).

fof(dt_k2_yellow19,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & ~ empty_carrier(B)
        & net_str(B,A) )
     => element(filter_of_net_str(A,B),powerset(the_carrier(boole_POSet(cast_as_carrier_subset(A))))) ) )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_yellow_1,axiom,(
    ! [A] : 
      ( strict_rel_str(boole_POSet(A))
      & rel_str(boole_POSet(A)) ) )).

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

fof(dt_l1_waybel_0,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ! [B] : 
          ( net_str(B,A)
         => rel_str(B) ) ) )).

fof(dt_l1_waybel_9,axiom,(
    ! [A] : 
      ( l1_waybel_9(A)
     => ( top_str(A)
        & rel_str(A) ) ) )).

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

fof(dt_m1_connsp_2,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A)
        & element(B,the_carrier(A)) )
     => ! [C] : 
          ( point_neighbourhood(C,A,B)
         => element(C,powerset(the_carrier(A))) ) ) )).

fof(dt_m1_pboole,axiom,(
    ! [A,B] : 
      ( m1_pboole(B,A)
     => ( relation(B)
        & function(B) ) ) )).

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

fof(dt_m1_yellow_6,axiom,(
    ! [A,B] : 
      ( ( one_sorted_str(A)
        & net_str(B,A) )
     => ! [C] : 
          ( subnetstr(C,A,B)
         => net_str(C,A) ) ) )).

fof(dt_m1_yellow_9,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ! [B] : 
          ( m1_yellow_9(B,A)
         => l1_waybel_9(B) ) ) )).

fof(dt_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) )).

fof(dt_m2_yellow_6,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & ~ empty_carrier(B)
        & transitive_relstr(B)
        & directed_relstr(B)
        & net_str(B,A) )
     => ! [C] : 
          ( subnet(C,A,B)
         => ( ~ empty_carrier(C)
            & transitive_relstr(C)
            & directed_relstr(C)
            & net_str(C,A) ) ) ) )).

fof(dt_m3_yellow_6,axiom,(
    ! [A,B] : 
      ( one_sorted_str(B)
     => ! [C] : 
          ( m3_yellow_6(C,A,B)
         => m1_pboole(C,A) ) ) )).

fof(dt_m4_yellow_6,axiom,(
    $true )).

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

fof(dt_u1_waybel_0,axiom,(
    ! [A,B] : 
      ( ( one_sorted_str(A)
        & net_str(B,A) )
     => ( function(the_mapping(A,B))
        & quasi_total(the_mapping(A,B),the_carrier(B),the_carrier(A))
        & relation_of2_as_subset(the_mapping(A,B),the_carrier(B),the_carrier(A)) ) ) )).

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

fof(existence_l1_waybel_0,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ? [B] : net_str(B,A) ) )).

fof(existence_l1_waybel_9,axiom,(
    ? [A] : l1_waybel_9(A) )).

fof(existence_l2_lattices,axiom,(
    ? [A] : join_semilatt_str(A) )).

fof(existence_l2_struct_0,axiom,(
    ? [A] : zero_str(A) )).

fof(existence_l3_lattices,axiom,(
    ? [A] : latt_str(A) )).

fof(existence_m1_connsp_2,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A)
        & element(B,the_carrier(A)) )
     => ? [C] : point_neighbourhood(C,A,B) ) )).

fof(existence_m1_pboole,axiom,(
    ! [A] : 
    ? [B] : m1_pboole(B,A) )).

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

fof(existence_m1_yellow_6,axiom,(
    ! [A,B] : 
      ( ( one_sorted_str(A)
        & net_str(B,A) )
     => ? [C] : subnetstr(C,A,B) ) )).

fof(existence_m1_yellow_9,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ? [B] : m1_yellow_9(B,A) ) )).

fof(existence_m2_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2_as_subset(C,A,B) )).

fof(existence_m2_yellow_6,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & ~ empty_carrier(B)
        & transitive_relstr(B)
        & directed_relstr(B)
        & net_str(B,A) )
     => ? [C] : subnet(C,A,B) ) )).

fof(existence_m3_yellow_6,axiom,(
    ! [A,B] : 
      ( one_sorted_str(B)
     => ? [C] : m3_yellow_6(C,A,B) ) )).

fof(existence_m4_yellow_6,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ? [B] : m4_yellow_6(B,A) ) )).

fof(fc10_tops_1,axiom,(
    ! [A,B] : 
      ( ( top_str(A)
        & boundary_set(B,A)
        & element(B,powerset(the_carrier(A))) )
     => ( empty(interior(A,B))
        & v1_membered(interior(A,B))
        & v2_membered(interior(A,B))
        & v3_membered(interior(A,B))
        & v4_membered(interior(A,B))
        & v5_membered(interior(A,B))
        & boundary_set(interior(A,B),A) ) ) )).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set)
    & relation_empty_yielding(empty_set) )).

fof(fc14_finset_1,axiom,(
    ! [A,B] : 
      ( ( finite(A)
        & finite(B) )
     => finite(cartesian_product2(A,B)) ) )).

fof(fc15_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ( ~ empty(cast_as_carrier_subset(A))
        & lower_relstr_subset(cast_as_carrier_subset(A),A)
        & upper_relstr_subset(cast_as_carrier_subset(A),A) ) ) )).

fof(fc15_yellow_6,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & ~ empty_carrier(B)
        & net_str(B,A) )
     => ( ~ empty(the_mapping(A,B))
        & relation(the_mapping(A,B))
        & function(the_mapping(A,B))
        & quasi_total(the_mapping(A,B),the_carrier(B),the_carrier(A)) ) ) )).

fof(fc16_yellow_6,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & constant_net_str(B,A)
        & net_str(B,A) )
     => ( relation(the_mapping(A,B))
        & function(the_mapping(A,B))
        & quasi_total(the_mapping(A,B),the_carrier(B),the_carrier(A))
        & v5_seqm_3(the_mapping(A,B)) ) ) )).

fof(fc1_struct_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(the_carrier(A)) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc1_waybel_7,axiom,(
    ! [A] : 
      ( ~ empty_carrier(boole_POSet(A))
      & strict_rel_str(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A))
      & lower_bounded_relstr(boole_POSet(A))
      & upper_bounded_relstr(boole_POSet(A))
      & bounded_relstr(boole_POSet(A))
      & up_complete_relstr(boole_POSet(A))
      & join_complete_relstr(boole_POSet(A))
      & ~ v1_yellow_3(boole_POSet(A))
      & distributive_relstr(boole_POSet(A))
      & heyting_relstr(boole_POSet(A))
      & complemented_relstr(boole_POSet(A))
      & boolean_relstr(boole_POSet(A))
      & with_suprema_relstr(boole_POSet(A))
      & with_infima_relstr(boole_POSet(A))
      & complete_relstr(boole_POSet(A)) ) )).

fof(fc22_yellow_6,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_space_T2(A)
        & top_str(A)
        & ~ empty_carrier(B)
        & transitive_relstr(B)
        & directed_relstr(B)
        & net_str(B,A) )
     => v1_realset1(lim_points_of_net(A,B)) ) )).

fof(fc2_pre_topc,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(cast_as_carrier_subset(A)) ) )).

fof(fc2_waybel_0,axiom,(
    ! [A] : 
      ( ( with_suprema_relstr(A)
        & rel_str(A) )
     => ( ~ empty(cast_as_carrier_subset(A))
        & directed_subset(cast_as_carrier_subset(A),A) ) ) )).

fof(fc2_waybel_7,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ( ~ empty_carrier(boole_POSet(A))
        & ~ trivial_carrier(boole_POSet(A))
        & strict_rel_str(boole_POSet(A))
        & reflexive_relstr(boole_POSet(A))
        & transitive_relstr(boole_POSet(A))
        & antisymmetric_relstr(boole_POSet(A))
        & lower_bounded_relstr(boole_POSet(A))
        & upper_bounded_relstr(boole_POSet(A))
        & bounded_relstr(boole_POSet(A))
        & up_complete_relstr(boole_POSet(A))
        & join_complete_relstr(boole_POSet(A))
        & ~ v1_yellow_3(boole_POSet(A))
        & distributive_relstr(boole_POSet(A))
        & heyting_relstr(boole_POSet(A))
        & complemented_relstr(boole_POSet(A))
        & boolean_relstr(boole_POSet(A))
        & with_suprema_relstr(boole_POSet(A))
        & with_infima_relstr(boole_POSet(A))
        & complete_relstr(boole_POSet(A)) ) ) )).

fof(fc2_yellow19,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & ~ empty_carrier(B)
        & net_str(B,A) )
     => ( ~ empty(filter_of_net_str(A,B))
        & upper_relstr_subset(filter_of_net_str(A,B),boole_POSet(cast_as_carrier_subset(A))) ) ) )).

fof(fc2_yellow_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ~ empty(cast_as_carrier_subset(A)) ) )).

fof(fc32_waybel_9,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty(A)
        & relation_of2(B,A,A)
        & element(C,powerset(powerset(A))) )
     => ( ~ empty_carrier(g1_waybel_9(A,B,C))
        & v1_waybel_9(g1_waybel_9(A,B,C)) ) ) )).

fof(fc3_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & upper_bounded_relstr(A)
        & rel_str(A) )
     => ( ~ empty(cast_as_carrier_subset(A))
        & directed_subset(cast_as_carrier_subset(A),A) ) ) )).

fof(fc3_yellow19,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & ~ empty_carrier(B)
        & transitive_relstr(B)
        & directed_relstr(B)
        & net_str(B,A) )
     => ( ~ empty(filter_of_net_str(A,B))
        & filtered_subset(filter_of_net_str(A,B),boole_POSet(cast_as_carrier_subset(A)))
        & upper_relstr_subset(filter_of_net_str(A,B),boole_POSet(cast_as_carrier_subset(A)))
        & proper_element(filter_of_net_str(A,B),powerset(the_carrier(boole_POSet(cast_as_carrier_subset(A))))) ) ) )).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) )).

fof(fc4_subset_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ~ empty(cartesian_product2(A,B)) ) )).

fof(fc4_waybel_0,axiom,(
    ! [A] : 
      ( ( with_infima_relstr(A)
        & rel_str(A) )
     => ( ~ empty(cast_as_carrier_subset(A))
        & filtered_subset(cast_as_carrier_subset(A),A) ) ) )).

fof(fc5_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => closed_subset(cast_as_carrier_subset(A),A) ) )).

fof(fc5_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lower_bounded_relstr(A)
        & rel_str(A) )
     => ( ~ empty(cast_as_carrier_subset(A))
        & filtered_subset(cast_as_carrier_subset(A),A) ) ) )).

fof(fc6_tops_1,axiom,(
    ! [A,B] : 
      ( ( topological_space(A)
        & top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => open_subset(interior(A,B),A) ) )).

fof(fc6_waybel_0,axiom,(
    ! [A,B,C,D] : 
      ( ( one_sorted_str(A)
        & ~ empty(B)
        & relation_of2(C,B,B)
        & function(D)
        & quasi_total(D,B,the_carrier(A))
        & relation_of2(D,B,the_carrier(A)) )
     => ( ~ empty_carrier(net_str_of(A,B,C,D))
        & strict_net_str(net_str_of(A,B,C,D),A) ) ) )).

fof(fc7_yellow_1,axiom,(
    ! [A] : 
      ( ~ empty_carrier(boole_POSet(A))
      & strict_rel_str(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A)) ) )).

fof(fc8_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ( open_subset(cast_as_carrier_subset(A),A)
        & closed_subset(cast_as_carrier_subset(A),A) ) ) )).

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

fof(fc8_yellow_6,axiom,(
    ! [A] : 
      ( ~ empty_carrier(boole_POSet(A))
      & strict_rel_str(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A))
      & lower_bounded_relstr(boole_POSet(A))
      & upper_bounded_relstr(boole_POSet(A))
      & bounded_relstr(boole_POSet(A))
      & directed_relstr(boole_POSet(A))
      & up_complete_relstr(boole_POSet(A))
      & join_complete_relstr(boole_POSet(A))
      & ~ v1_yellow_3(boole_POSet(A))
      & with_suprema_relstr(boole_POSet(A))
      & with_infima_relstr(boole_POSet(A))
      & complete_relstr(boole_POSet(A)) ) )).

fof(fc9_tops_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => dense(cast_as_carrier_subset(A),A) ) )).

fof(fraenkel_a_2_1_yellow19,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(B)
        & one_sorted_str(B)
        & ~ empty_carrier(C)
        & net_str(C,B) )
     => ( in(A,a_2_1_yellow19(B,C))
      <=> ? [D] : 
            ( element(D,powerset(the_carrier(B)))
            & A = D
            & is_eventually_in(B,C,D) ) ) ) )).

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

fof(free_g1_waybel_0,axiom,(
    ! [A,B,C,D] : 
      ( ( one_sorted_str(A)
        & relation_of2(C,B,B)
        & function(D)
        & quasi_total(D,B,the_carrier(A))
        & relation_of2(D,B,the_carrier(A)) )
     => ! [E,F,G,H] : 
          ( net_str_of(A,B,C,D) = net_str_of(E,F,G,H)
         => ( A = E
            & B = F
            & C = G
            & D = H ) ) ) )).

fof(free_g1_waybel_9,axiom,(
    ! [A,B,C] : 
      ( ( relation_of2(B,A,A)
        & element(C,powerset(powerset(A))) )
     => ! [D,E,F] : 
          ( g1_waybel_9(A,B,C) = g1_waybel_9(D,E,F)
         => ( A = D
            & B = E
            & C = F ) ) ) )).

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

fof(rc10_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & filtered_subset(B,A)
          & upper_relstr_subset(B,A) ) ) )).

fof(rc10_yellow_6,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( net_str(B,A)
          & ~ empty_carrier(B)
          & transitive_relstr(B)
          & strict_net_str(B,A)
          & directed_relstr(B)
          & convergent_net(B,A) ) ) )).

fof(rc11_waybel_0,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & with_suprema_relstr(A)
        & with_infima_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & directed_subset(B,A)
          & filtered_subset(B,A)
          & lower_relstr_subset(B,A)
          & upper_relstr_subset(B,A) ) ) )).

fof(rc11_yellow_6,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ? [B] : 
          ( m4_yellow_6(B,A)
          & ~ empty(B)
          & relation(B)
          & v8_yellow_6(B,A) ) ) )).

fof(rc12_waybel_0,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & connected_relstr(A) ) )).

fof(rc13_waybel_0,axiom,(
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
      & lower_bounded_relstr(A)
      & upper_bounded_relstr(A)
      & bounded_relstr(A)
      & up_complete_relstr(A)
      & join_complete_relstr(A) ) )).

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

fof(rc1_pre_topc,axiom,(
    ? [A] : 
      ( top_str(A)
      & strict_top_str(A) ) )).

fof(rc1_relat_1,axiom,(
    ? [A] : 
      ( empty(A)
      & relation(A) ) )).

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

fof(rc1_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & open_subset(B,A) ) ) )).

fof(rc1_waybel32,axiom,(
    ? [A] : 
      ( l1_waybel_9(A)
      & ~ empty_carrier(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & upper_bounded_relstr(A)
      & up_complete_relstr(A)
      & topological_space(A)
      & v1_waybel_9(A)
      & v4_waybel11(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A) ) )).

fof(rc1_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & directed_subset(B,A)
          & filtered_subset(B,A) ) ) )).

fof(rc1_waybel_7,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & ~ trivial_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & lower_bounded_relstr(A)
      & upper_bounded_relstr(A)
      & bounded_relstr(A)
      & ~ v1_yellow_3(A)
      & distributive_relstr(A)
      & heyting_relstr(A)
      & complemented_relstr(A)
      & boolean_relstr(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A) ) )).

fof(rc1_waybel_9,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & ~ empty_carrier(B)
        & transitive_relstr(B)
        & directed_relstr(B)
        & net_str(B,A) )
     => ? [C] : 
          ( subnet(C,A,B)
          & ~ empty_carrier(C)
          & transitive_relstr(C)
          & strict_net_str(C,A)
          & directed_relstr(C) ) ) )).

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

fof(rc1_yellow_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( m1_pboole(B,A)
      & relation(B)
      & function(B)
      & v2_pralg_1(B)
      & relstr_yielding(B) ) )).

fof(rc1_yellow_6,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & relation(A)
      & function(A)
      & v5_seqm_3(A) ) )).

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

fof(rc2_pre_topc,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & topological_space(A) ) )).

fof(rc2_relat_1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & relation(A) ) )).

fof(rc2_struct_0,axiom,(
    ? [A] : 
      ( zero_str(A)
      & strict_zero_str(A) ) )).

fof(rc2_subset_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(A))
      & empty(B) ) )).

fof(rc2_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & open_subset(B,A)
          & closed_subset(B,A) ) ) )).

fof(rc2_waybel32,axiom,(
    ? [A] : 
      ( l1_waybel_9(A)
      & ~ empty_carrier(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & upper_bounded_relstr(A)
      & connected_relstr(A)
      & up_complete_relstr(A)
      & topological_space(A)
      & v2_waybel_3(A)
      & v1_waybel_9(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & trivial_carrier(A)
      & v1_waybel32(A) ) )).

fof(rc2_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & finite(B)
          & directed_subset(B,A)
          & filtered_subset(B,A) ) ) )).

fof(rc2_waybel_7,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(powerset(A)))
      & ~ empty(B)
      & finite(B) ) )).

fof(rc2_waybel_9,axiom,(
    ? [A] : 
      ( l1_waybel_9(A)
      & v1_waybel_9(A) ) )).

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

fof(rc2_yellow_6,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & relation(A)
      & function(A)
      & v5_seqm_3(A)
      & v2_pralg_1(A) ) )).

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

fof(rc3_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & strict_top_str(B) ) ) )).

fof(rc3_relat_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_empty_yielding(A) ) )).

fof(rc3_struct_0,axiom,(
    ? [A] : 
      ( one_sorted_str(A)
      & ~ empty_carrier(A) ) )).

fof(rc3_tops_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & open_subset(B,A)
          & closed_subset(B,A) ) ) )).

fof(rc3_waybel32,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & up_complete_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( m1_yellow_9(B,A)
          & ~ empty_carrier(B)
          & reflexive_relstr(B)
          & transitive_relstr(B)
          & antisymmetric_relstr(B)
          & up_complete_relstr(B)
          & topological_space(B)
          & ~ v1_yellow_3(B)
          & v4_waybel11(B) ) ) )).

fof(rc3_waybel_0,axiom,(
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
          & sups_inheriting_subrelstr(B,A)
          & filtered_infs_inheriting(B,A)
          & directed_sups_inheriting(B,A) ) ) )).

fof(rc3_waybel_7,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ? [B] : 
          ( element(B,powerset(powerset(the_carrier(A))))
          & ~ empty(B)
          & finite(B) ) ) )).

fof(rc3_waybel_9,axiom,(
    ? [A] : 
      ( l1_waybel_9(A)
      & ~ empty_carrier(A)
      & topological_space(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & lower_bounded_relstr(A)
      & upper_bounded_relstr(A)
      & bounded_relstr(A)
      & connected_relstr(A)
      & up_complete_relstr(A)
      & join_complete_relstr(A)
      & ~ v1_yellow_3(A)
      & v1_waybel_2(A)
      & v2_waybel_2(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A)
      & distributive_relstr(A)
      & heyting_relstr(A)
      & complemented_relstr(A)
      & v1_tdlat_3(A)
      & v3_tdlat_3(A)
      & v4_tdlat_3(A)
      & v5_tdlat_3(A)
      & v2_waybel_3(A)
      & v3_waybel_3(A)
      & v6_group_1(A)
      & trivial_carrier(A)
      & v1_waybel_9(A) ) )).

fof(rc3_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ? [B] : 
          ( subrelstr(B,A)
          & strict_rel_str(B)
          & full_subrelstr(B,A) ) ) )).

fof(rc3_yellow_6,axiom,(
    ! [A] : 
    ? [B] : 
      ( m1_pboole(B,A)
      & relation(B)
      & function(B)
      & v2_pralg_1(B)
      & v4_waybel_3(B) ) )).

fof(rc4_finset_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) ) ) )).

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

fof(rc4_tops_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & empty(B)
          & v1_membered(B)
          & v2_membered(B)
          & v3_membered(B)
          & v4_membered(B)
          & v5_membered(B)
          & boundary_set(B,A) ) ) )).

fof(rc4_waybel32,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & up_complete_relstr(A)
        & join_complete_relstr(A)
        & with_infima_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( m1_yellow_9(B,A)
          & ~ empty_carrier(B)
          & reflexive_relstr(B)
          & transitive_relstr(B)
          & antisymmetric_relstr(B)
          & up_complete_relstr(B)
          & topological_space(B)
          & ~ v1_yellow_3(B)
          & v1_waybel_9(B)
          & v4_waybel11(B) ) ) )).

fof(rc4_waybel_0,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ? [B] : 
          ( net_str(B,A)
          & strict_net_str(B,A) ) ) )).

fof(rc4_waybel_7,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & ~ trivial_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & upper_bounded_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & proper_element(B,powerset(the_carrier(A)))
          & filtered_subset(B,A)
          & upper_relstr_subset(B,A) ) ) )).

fof(rc4_waybel_9,axiom,(
    ? [A] : 
      ( l1_waybel_9(A)
      & ~ empty_carrier(A)
      & topological_space(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & lower_bounded_relstr(A)
      & upper_bounded_relstr(A)
      & bounded_relstr(A)
      & connected_relstr(A)
      & up_complete_relstr(A)
      & join_complete_relstr(A)
      & ~ v1_yellow_3(A)
      & v1_waybel_2(A)
      & v2_waybel_2(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A)
      & distributive_relstr(A)
      & heyting_relstr(A)
      & complemented_relstr(A)
      & compact_top_space(A)
      & top_space_T2(A)
      & top_space_T3(A)
      & top_space_T4(A)
      & v1_tdlat_3(A)
      & v3_tdlat_3(A)
      & v4_tdlat_3(A)
      & v5_tdlat_3(A)
      & v2_waybel_3(A)
      & v3_waybel_3(A)
      & v6_waybel_3(A)
      & v6_group_1(A)
      & trivial_carrier(A)
      & v1_waybel_9(A) ) )).

fof(rc4_yellow_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ? [B] : 
          ( subrelstr(B,A)
          & ~ empty_carrier(B)
          & strict_rel_str(B)
          & full_subrelstr(B,A) ) ) )).

fof(rc4_yellow_6,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & transitive_relstr(A)
      & directed_relstr(A) ) )).

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

fof(rc5_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & empty(B)
          & open_subset(B,A)
          & closed_subset(B,A)
          & v1_membered(B)
          & v2_membered(B)
          & v3_membered(B)
          & v4_membered(B)
          & v5_membered(B)
          & boundary_set(B,A)
          & nowhere_dense(B,A) ) ) )).

fof(rc5_waybel32,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & up_complete_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( m1_yellow_9(B,A)
          & ~ empty_carrier(B)
          & reflexive_relstr(B)
          & transitive_relstr(B)
          & antisymmetric_relstr(B)
          & up_complete_relstr(B)
          & topological_space(B)
          & ~ v1_yellow_3(B)
          & v2_waybel32(B) ) ) )).

fof(rc5_waybel_0,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ? [B] : 
          ( net_str(B,A)
          & ~ empty_carrier(B)
          & reflexive_relstr(B)
          & transitive_relstr(B)
          & antisymmetric_relstr(B)
          & strict_net_str(B,A)
          & directed_relstr(B) ) ) )).

fof(rc5_waybel_7,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & with_suprema_relstr(A)
        & with_infima_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & directed_subset(B,A)
          & lower_relstr_subset(B,A)
          & prime_POSet_ideal(B,A) ) ) )).

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

fof(rc5_yellow_6,axiom,(
    ! [A] : 
    ? [B] : 
      ( m1_pboole(B,A)
      & relation(B)
      & function(B)
      & v2_pralg_1(B)
      & relstr_yielding(B)
      & v4_waybel_3(B) ) )).

fof(rc6_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & closed_subset(B,A) ) ) )).

fof(rc6_waybel32,axiom,(
    ? [A] : 
      ( l1_waybel_9(A)
      & ~ empty_carrier(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & lower_bounded_relstr(A)
      & upper_bounded_relstr(A)
      & bounded_relstr(A)
      & up_complete_relstr(A)
      & join_complete_relstr(A)
      & topological_space(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A)
      & v2_waybel32(A) ) )).

fof(rc6_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( net_str(B,A)
          & ~ empty_carrier(B)
          & strict_net_str(B,A)
          & directed_relstr(B)
          & monotone_net_str(B,A)
          & antitone_net_str(B,A)
          & eventually_directed(B,A)
          & eventually_filtered(B,A) ) ) )).

fof(rc6_waybel_7,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & with_suprema_relstr(A)
        & with_infima_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & filtered_subset(B,A)
          & upper_relstr_subset(B,A)
          & prime_POSet_filter(B,A) ) ) )).

fof(rc6_yellow_6,axiom,(
    ! [A,B] : 
      ( ( one_sorted_str(A)
        & net_str(B,A) )
     => ? [C] : 
          ( subnetstr(C,A,B)
          & strict_net_str(C,A)
          & full_subnetstr(C,A,B) ) ) )).

fof(rc7_pre_topc,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & closed_subset(B,A) ) ) )).

fof(rc7_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & lower_relstr_subset(B,A)
          & upper_relstr_subset(B,A) ) ) )).

fof(rc7_waybel_7,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(the_carrier(boole_POSet(A))))
          & ~ empty(B)
          & proper_element(B,powerset(the_carrier(boole_POSet(A))))
          & filtered_subset(B,boole_POSet(A))
          & upper_relstr_subset(B,boole_POSet(A))
          & poset_ultra_filter(B,boole_POSet(A)) ) ) )).

fof(rc7_yellow_6,axiom,(
    ! [A,B] : 
      ( ( one_sorted_str(A)
        & ~ empty_carrier(B)
        & net_str(B,A) )
     => ? [C] : 
          ( subnetstr(C,A,B)
          & ~ empty_carrier(C)
          & strict_net_str(C,A)
          & full_subnetstr(C,A,B) ) ) )).

fof(rc8_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & lower_relstr_subset(B,A)
          & upper_relstr_subset(B,A) ) ) )).

fof(rc8_yellow_6,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ? [B] : 
          ( net_str(B,A)
          & ~ empty_carrier(B)
          & transitive_relstr(B)
          & strict_net_str(B,A)
          & directed_relstr(B)
          & constant_net_str(B,A) ) ) )).

fof(rc9_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & directed_subset(B,A)
          & lower_relstr_subset(B,A) ) ) )).

fof(rc9_yellow_6,axiom,(
    ! [A,B] : 
      ( one_sorted_str(B)
     => ? [C] : 
          ( m3_yellow_6(C,A,B)
          & relation(C)
          & function(C)
          & v2_pralg_1(C)
          & relstr_yielding(C)
          & v4_waybel_3(C) ) ) )).

fof(redefinition_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t11_yellow19,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] : 
          ( ( ~ empty_carrier(B)
            & net_str(B,A) )
         => ! [C] : 
              ( ~ ( in(C,filter_of_net_str(A,B))
                  & ~ ( is_eventually_in(A,B,C)
                      & element(C,powerset(the_carrier(A))) ) )
              & ~ ( is_eventually_in(A,B,C)
                  & element(C,powerset(the_carrier(A)))
                  & ~ in(C,filter_of_net_str(A,B)) ) ) ) ) )).

fof(t13_yellow19,conjecture,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( ( ~ empty_carrier(B)
            & transitive_relstr(B)
            & directed_relstr(B)
            & net_str(B,A) )
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ( ~ ( in(C,lim_points_of_net(A,B))
                    & ~ is_a_convergence_point_of_set(A,filter_of_net_str(A,B),C) )
                & ~ ( is_a_convergence_point_of_set(A,filter_of_net_str(A,B),C)
                    & ~ in(C,lim_points_of_net(A,B)) ) ) ) ) ) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t2_tarski,axiom,(
    ! [A,B] : 
      ( ! [C] : 
          ( in(C,A)
        <=> in(C,B) )
     => A = B ) )).

fof(t3_subset,axiom,(
    ! [A,B] : 
      ( element(A,powerset(B))
    <=> subset(A,B) ) )).

fof(t44_tops_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => subset(interior(A,B),B) ) ) )).

fof(t4_subset,axiom,(
    ! [A,B,C] : 
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) )).

fof(t5_connsp_2,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ~ ( open_subset(B,A)
                  & in(C,B)
                  & ~ point_neighbourhood(B,A,C) ) ) ) ) )).

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

fof(t8_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] : 
          ( ( ~ empty_carrier(B)
            & net_str(B,A) )
         => ! [C,D] : 
              ~ ( subset(C,D)
                & ~ ( ~ ( is_eventually_in(A,B,C)
                        & ~ is_eventually_in(A,B,D) )
                    & ~ ( is_often_in(A,B,C)
                        & ~ is_often_in(A,B,D) ) ) ) ) ) )).
%------------------------------------------------------------------------------
