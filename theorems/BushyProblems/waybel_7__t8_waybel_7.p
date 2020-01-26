%------------------------------------------------------------------------------
% File     : waybel_7__t8_waybel_7

% Syntax   : Number of formulae    :  196 (  23 unit)
%            Number of atoms       : 1184 (  32 equality)
%            Maximal formula depth :   20 (   7 average)
%            Number of connectives : 1160 ( 172 ~  ;   1  |; 753  &)
%                                         (   3 <=>; 231 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :  114 (   1 propositional; 0-3 arity)
%            Number of functors    :   18 (   1 constant; 0-4 arity)
%            Number of variables   :  322 (   1 singleton; 248 !;  74 ?)
%            Maximal term depth    :    4 (   1 average)
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

fof(cc10_waybel_1,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & boolean_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A)
          & upper_bounded_relstr(A)
          & distributive_relstr(A)
          & heyting_relstr(A) ) ) ) )).

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

fof(cc1_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( infs_inheriting_subrelstr(B,A)
           => filtered_infs_inheriting(B,A) ) ) ) )).

fof(cc1_waybel_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & connected_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( directed_subset(B,A)
            & filtered_subset(B,A) ) ) ) )).

fof(cc1_waybel_4,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( relation_of2(B,the_carrier(A),the_carrier(A))
         => ( v5_waybel_4(B,A)
           => ( v1_waybel_4(B,A)
              & v2_waybel_4(B,A)
              & v3_waybel_4(B,A)
              & v4_waybel_4(B,A) ) ) ) ) )).

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

fof(cc1_yellow_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & upper_bounded_relstr(A)
          & up_complete_relstr(A)
          & join_complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & lower_bounded_relstr(A)
          & upper_bounded_relstr(A)
          & bounded_relstr(A)
          & up_complete_relstr(A)
          & join_complete_relstr(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A)
          & complete_relstr(A) ) ) ) )).

fof(cc1_yellow_3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( empty_carrier(A)
       => v1_yellow_3(A) ) ) )).

fof(cc1_yellow_7,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & v1_waybel_5(A) )
       => ( ~ empty_carrier(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A)
          & complete_relstr(A)
          & lower_bounded_relstr(A)
          & upper_bounded_relstr(A)
          & bounded_relstr(A) ) ) ) )).

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

fof(cc2_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( sups_inheriting_subrelstr(B,A)
           => directed_sups_inheriting(B,A) ) ) ) )).

fof(cc2_waybel_3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & lower_bounded_relstr(A)
          & connected_relstr(A)
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
          & bounded_relstr(A)
          & connected_relstr(A)
          & up_complete_relstr(A)
          & join_complete_relstr(A) ) ) ) )).

fof(cc2_waybel_4,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( relation_of2(B,the_carrier(A),the_carrier(A))
         => ( ( v1_waybel_4(B,A)
              & v2_waybel_4(B,A)
              & v3_waybel_4(B,A)
              & v4_waybel_4(B,A) )
           => v5_waybel_4(B,A) ) ) ) )).

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

fof(cc2_yellow_3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ~ v1_yellow_3(A)
       => ~ empty_carrier(A) ) ) )).

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

fof(cc3_waybel_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( relation_of2(B,the_carrier(A),the_carrier(A))
         => ( ( function(B)
              & quasi_total(B,the_carrier(A),the_carrier(A))
              & closure_on_relstr(B,A) )
           => ( function(B)
              & ~ empty(B)
              & quasi_total(B,the_carrier(A),the_carrier(A))
              & v1_partfun1(B,the_carrier(A),the_carrier(A))
              & projection_on_relstr(B,A) ) ) ) ) )).

fof(cc3_waybel_3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & trivial_carrier(A)
          & reflexive_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & v2_waybel_3(A) ) ) ) )).

fof(cc3_waybel_4,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & lower_bounded_relstr(A)
        & with_suprema_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( relation_of2(B,the_carrier(A),the_carrier(A))
         => ( ( v1_waybel_4(B,A)
              & v2_waybel_4(B,A) )
           => transitive(B) ) ) ) )).

fof(cc3_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & bounded_relstr(A) ) ) ) )).

fof(cc3_yellow_3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A) )
       => ( ~ empty_carrier(A)
          & ~ v1_yellow_3(A) ) ) ) )).

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

fof(cc4_waybel_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( relation_of2(B,the_carrier(A),the_carrier(A))
         => ( ( function(B)
              & quasi_total(B,the_carrier(A),the_carrier(A))
              & kernel_on_relstr(B,A) )
           => ( function(B)
              & ~ empty(B)
              & quasi_total(B,the_carrier(A),the_carrier(A))
              & v1_partfun1(B,the_carrier(A),the_carrier(A))
              & projection_on_relstr(B,A) ) ) ) ) )).

fof(cc4_waybel_3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & v3_waybel_3(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & up_complete_relstr(A)
          & v2_waybel_3(A) ) ) ) )).

fof(cc4_waybel_4,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & lower_bounded_relstr(A)
          & v3_waybel_3(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & lower_bounded_relstr(A)
          & upper_bounded_relstr(A)
          & bounded_relstr(A)
          & up_complete_relstr(A)
          & join_complete_relstr(A)
          & ~ v1_yellow_3(A)
          & v1_waybel_2(A)
          & v2_waybel_2(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A)
          & complete_relstr(A) ) ) ) )).

fof(cc4_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( bounded_relstr(A)
       => ( lower_bounded_relstr(A)
          & upper_bounded_relstr(A) ) ) ) )).

fof(cc5_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & trivial_carrier(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & connected_relstr(A) ) ) ) )).

fof(cc5_waybel_1,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & heyting_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A) ) ) ) )).

fof(cc5_waybel_3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & lower_bounded_relstr(A)
          & up_complete_relstr(A)
          & v2_waybel_3(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & lower_bounded_relstr(A)
          & v3_waybel_3(A) ) ) ) )).

fof(cc5_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( lower_bounded_relstr(A)
          & upper_bounded_relstr(A) )
       => bounded_relstr(A) ) ) )).

fof(cc6_waybel_1,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & heyting_relstr(A) )
       => ( ~ empty_carrier(A)
          & distributive_relstr(A) ) ) ) )).

fof(cc6_waybel_3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & complete_relstr(A)
          & connected_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & connected_relstr(A)
          & v2_waybel_3(A) ) ) ) )).

fof(cc6_yellow_0,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( full_subrelstr(B,A)
           => ( reflexive_relstr(B)
              & full_subrelstr(B,A) ) ) ) ) )).

fof(cc7_waybel_0,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A)
        & ~ empty_carrier(B)
        & rel_str(B) )
     => ! [C] : 
          ( relation_of2(C,the_carrier(A),the_carrier(B))
         => ( ( function(C)
              & quasi_total(C,the_carrier(A),the_carrier(B))
              & sups_preserving(C,A,B) )
           => ( function(C)
              & quasi_total(C,the_carrier(A),the_carrier(B))
              & join_preserving(C,A,B)
              & directed_sups_preserving(C,A,B) ) ) ) ) )).

fof(cc7_waybel_1,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & heyting_relstr(A) )
       => ( ~ empty_carrier(A)
          & upper_bounded_relstr(A) ) ) ) )).

fof(cc7_waybel_3,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ( ~ empty_carrier(A)
          & topological_space(A)
          & compact_top_space(A)
          & top_space_T2(A) )
       => ( ~ empty_carrier(A)
          & topological_space(A)
          & top_space_T3(A)
          & top_space_T4(A)
          & v6_waybel_3(A) ) ) ) )).

fof(cc7_yellow_0,axiom,(
    ! [A] : 
      ( ( transitive_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( full_subrelstr(B,A)
           => ( transitive_relstr(B)
              & full_subrelstr(B,A) ) ) ) ) )).

fof(cc8_waybel_1,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & boolean_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A)
          & lower_bounded_relstr(A)
          & upper_bounded_relstr(A)
          & bounded_relstr(A)
          & distributive_relstr(A)
          & complemented_relstr(A) ) ) ) )).

fof(cc8_yellow_0,axiom,(
    ! [A] : 
      ( ( antisymmetric_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( full_subrelstr(B,A)
           => ( antisymmetric_relstr(B)
              & full_subrelstr(B,A) ) ) ) ) )).

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

fof(cc9_waybel_1,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A)
          & bounded_relstr(A)
          & distributive_relstr(A)
          & complemented_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A)
          & lower_bounded_relstr(A)
          & upper_bounded_relstr(A)
          & bounded_relstr(A)
          & distributive_relstr(A)
          & complemented_relstr(A)
          & boolean_relstr(A) ) ) ) )).

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

fof(d20_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( ~ ( upper_relstr_subset(B,A)
                & ~ ! [C] : 
                      ( element(C,the_carrier(A))
                     => ! [D] : 
                          ( element(D,the_carrier(A))
                         => ~ ( in(C,B)
                              & related(A,C,D)
                              & ~ in(D,B) ) ) ) )
            & ~ ( ! [C] : 
                    ( element(C,the_carrier(A))
                   => ! [D] : 
                        ( element(D,the_carrier(A))
                       => ~ ( in(C,B)
                            & related(A,C,D)
                            & ~ in(D,B) ) ) )
                & ~ upper_relstr_subset(B,A) ) ) ) ) )).

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

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_yellow_0,axiom,(
    ! [A,B] : 
      ( rel_str(A)
     => element(join_on_relstr(A,B),the_carrier(A)) ) )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => element(bottom_of_relstr(A),the_carrier(A)) ) )).

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

fof(existence_l2_lattices,axiom,(
    ? [A] : join_semilatt_str(A) )).

fof(existence_l2_struct_0,axiom,(
    ? [A] : zero_str(A) )).

fof(existence_l3_lattices,axiom,(
    ? [A] : latt_str(A) )).

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

fof(existence_m2_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2_as_subset(C,A,B) )).

fof(fc13_yellow_3,axiom,(
    ! [A] : 
      ( ( ~ v1_yellow_3(A)
        & rel_str(A) )
     => ( ~ empty(the_InternalRel(A))
        & relation(the_InternalRel(A)) ) ) )).

fof(fc14_finset_1,axiom,(
    ! [A,B] : 
      ( ( finite(A)
        & finite(B) )
     => finite(cartesian_product2(A,B)) ) )).

fof(fc1_struct_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(the_carrier(A)) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc4_subset_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ~ empty(cartesian_product2(A,B)) ) )).

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

fof(rc1_waybel_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & directed_subset(B,A)
          & filtered_subset(B,A) ) ) )).

fof(rc1_waybel_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ? [B] : 
          ( relation_of2(B,the_carrier(A),the_carrier(A))
          & relation(B)
          & function(B)
          & ~ empty(B)
          & quasi_total(B,the_carrier(A),the_carrier(A))
          & v1_partfun1(B,the_carrier(A),the_carrier(A))
          & projection_on_relstr(B,A) ) ) )).

fof(rc1_waybel_3,axiom,(
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
      & bounded_relstr(A)
      & connected_relstr(A)
      & up_complete_relstr(A)
      & join_complete_relstr(A) ) )).

fof(rc1_waybel_4,axiom,(
    ! [A] : 
      ( ( transitive_relstr(A)
        & antisymmetric_relstr(A)
        & lower_bounded_relstr(A)
        & with_suprema_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( relation_of2(B,the_carrier(A),the_carrier(A))
          & relation(B)
          & v1_waybel_4(B,A)
          & v2_waybel_4(B,A)
          & v3_waybel_4(B,A)
          & v4_waybel_4(B,A)
          & v5_waybel_4(B,A) ) ) )).

fof(rc1_waybel_6,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & lower_bounded_relstr(A)
      & upper_bounded_relstr(A)
      & bounded_relstr(A)
      & up_complete_relstr(A)
      & join_complete_relstr(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A)
      & distributive_relstr(A)
      & v2_waybel_3(A)
      & v3_waybel_3(A) ) )).

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

fof(rc1_yellow_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( m1_pboole(B,A)
      & relation(B)
      & function(B)
      & v2_pralg_1(B)
      & relstr_yielding(B) ) )).

fof(rc1_yellow_3,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & ~ v1_yellow_3(A) ) )).

fof(rc1_yellow_7,axiom,(
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
      & connected_relstr(A)
      & up_complete_relstr(A)
      & join_complete_relstr(A)
      & distributive_relstr(A)
      & heyting_relstr(A)
      & v1_waybel_5(A)
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

fof(rc2_waybel_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( relation_of2(B,the_carrier(A),the_carrier(A))
          & relation(B)
          & function(B)
          & ~ empty(B)
          & quasi_total(B,the_carrier(A),the_carrier(A))
          & v1_partfun1(B,the_carrier(A),the_carrier(A))
          & projection_on_relstr(B,A)
          & closure_on_relstr(B,A) ) ) )).

fof(rc2_waybel_3,axiom,(
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
      & join_complete_relstr(A)
      & v2_waybel_3(A)
      & v3_waybel_3(A) ) )).

fof(rc2_waybel_4,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & with_suprema_relstr(A)
        & with_infima_relstr(A)
        & complete_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( relation_of2(B,the_carrier(A),the_carrier(A))
          & relation(B)
          & transitive(B)
          & v1_waybel_4(B,A)
          & v2_waybel_4(B,A)
          & v3_waybel_4(B,A)
          & v4_waybel_4(B,A)
          & v5_waybel_4(B,A)
          & v6_waybel_4(B,A) ) ) )).

fof(rc2_waybel_6,axiom,(
    ! [A,B] : 
      ( ( reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & with_suprema_relstr(A)
        & with_infima_relstr(A)
        & complete_relstr(A)
        & rel_str(A)
        & reflexive_relstr(B)
        & transitive_relstr(B)
        & antisymmetric_relstr(B)
        & with_suprema_relstr(B)
        & with_infima_relstr(B)
        & complete_relstr(B)
        & rel_str(B) )
     => ? [C] : 
          ( relation_of2(C,the_carrier(A),the_carrier(B))
          & relation(C)
          & function(C)
          & quasi_total(C,the_carrier(A),the_carrier(B))
          & sups_preserving(C,A,B)
          & join_preserving(C,A,B)
          & directed_sups_preserving(C,A,B) ) ) )).

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

fof(rc3_waybel_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( relation_of2(B,the_carrier(A),the_carrier(A))
          & relation(B)
          & function(B)
          & ~ empty(B)
          & quasi_total(B,the_carrier(A),the_carrier(A))
          & v1_partfun1(B,the_carrier(A),the_carrier(A))
          & projection_on_relstr(B,A)
          & kernel_on_relstr(B,A) ) ) )).

fof(rc3_waybel_3,axiom,(
    ! [A] : 
    ? [B] : 
      ( m1_pboole(B,A)
      & relation(B)
      & function(B)
      & relstr_yielding(B)
      & v2_pralg_1(B)
      & v4_waybel_3(B)
      & v5_waybel_3(B) ) )).

fof(rc3_waybel_6,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & lower_bounded_relstr(A)
        & up_complete_relstr(A)
        & with_suprema_relstr(A)
        & with_infima_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & filtered_subset(B,A)
          & upper_relstr_subset(B,A)
          & v1_waybel_6(B,A) ) ) )).

fof(rc3_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ? [B] : 
          ( subrelstr(B,A)
          & strict_rel_str(B)
          & full_subrelstr(B,A) ) ) )).

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

fof(rc4_waybel_0,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ? [B] : 
          ( net_str(B,A)
          & strict_net_str(B,A) ) ) )).

fof(rc4_waybel_1,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & lower_bounded_relstr(A)
      & upper_bounded_relstr(A)
      & bounded_relstr(A)
      & distributive_relstr(A)
      & heyting_relstr(A)
      & complemented_relstr(A)
      & boolean_relstr(A) ) )).

fof(rc4_waybel_3,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & topological_space(A)
      & compact_top_space(A)
      & top_space_T2(A)
      & top_space_T3(A)
      & top_space_T4(A)
      & v6_waybel_3(A) ) )).

fof(rc4_waybel_6,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & antisymmetric_relstr(A)
        & upper_bounded_relstr(A)
        & with_infima_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,the_carrier(A))
          & v2_waybel_6(B,A) ) ) )).

fof(rc4_yellow_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ? [B] : 
          ( subrelstr(B,A)
          & ~ empty_carrier(B)
          & strict_rel_str(B)
          & full_subrelstr(B,A) ) ) )).

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

fof(rc5_waybel_1,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & upper_bounded_relstr(A)
      & distributive_relstr(A)
      & heyting_relstr(A) ) )).

fof(rc5_waybel_6,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & antisymmetric_relstr(A)
        & upper_bounded_relstr(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,the_carrier(A))
          & v5_waybel_6(B,A) ) ) )).

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

fof(rc6_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & closed_subset(B,A) ) ) )).

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

fof(rc8_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & lower_relstr_subset(B,A)
          & upper_relstr_subset(B,A) ) ) )).

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

fof(t44_yellow_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & antisymmetric_relstr(A)
        & lower_bounded_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => related(A,bottom_of_relstr(A),B) ) ) )).

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

fof(t5_tex_2,axiom,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => ( ~ ( proper_element(B,powerset(A))
            & B = A )
        & ~ ( B != A
            & ~ proper_element(B,powerset(A)) ) ) ) )).

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

fof(t8_waybel_7,conjecture,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & lower_bounded_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( ( ~ empty(B)
            & filtered_subset(B,A)
            & upper_relstr_subset(B,A)
            & element(B,powerset(the_carrier(A))) )
         => ( ~ ( proper_element(B,powerset(the_carrier(A)))
                & in(bottom_of_relstr(A),B) )
            & ~ ( ~ in(bottom_of_relstr(A),B)
                & ~ proper_element(B,powerset(the_carrier(A))) ) ) ) ) )).
%------------------------------------------------------------------------------
