%------------------------------------------------------------------------------
% File     : yellow_6__t19_yellow_6

% Syntax   : Number of formulae    :  297 (  47 unit)
%            Number of atoms       : 1327 (  55 equality)
%            Maximal formula depth :   26 (   6 average)
%            Number of connectives : 1219 ( 189 ~  ;   1  |; 760  &)
%                                         (   2 <=>; 267 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :  142 (   1 propositional; 0-6 arity)
%            Number of functors    :   43 (   4 constant; 0-8 arity)
%            Number of variables   :  538 (   2 singleton; 420 !; 118 ?)
%            Maximal term depth    :    6 (   1 average)
%------------------------------------------------------------------------------
fof(abstractness_v1_ami_1,axiom,(
    ! [A,B] : 
      ( l1_ami_1(B,A)
     => ( v1_ami_1(B,A)
       => B = g1_ami_1(A,the_carrier(B),the_Instruction_Counter(A,B),the_Instruction_Locations(A,B),the_Instruction_Codes(A,B),the_Instructions(A,B),the_Object_Kind(A,B),the_Execution(A,B)) ) ) )).

fof(abstractness_v1_cat_1,axiom,(
    ! [A] : 
      ( cat_str(A)
     => ( strict_cat_str(A)
       => A = cat_str_of(the_objects(A),the_morphisms(A),the_dom__cat(A),the_cod__cat(A),the_comp__cat(A),the_id(A)) ) ) )).

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

fof(cc1_card_1,axiom,(
    ! [A] : 
      ( v1_card_1(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A) ) ) )).

fof(cc1_classes2,axiom,(
    ! [A] : 
      ( v2_classes1(A)
     => v1_classes1(A) ) )).

fof(cc1_fraenkel,axiom,(
    ! [A] : 
      ( v1_fraenkel(A)
     => ! [B] : 
          ( element(B,A)
         => ( relation(B)
            & function(B) ) ) ) )).

fof(cc1_funct_1,axiom,(
    ! [A] : 
      ( empty(A)
     => function(A) ) )).

fof(cc1_index_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ! [B] : 
          ( m1_pboole(B,A)
         => ( relation_non_empty(B)
           => ~ relation_empty_yielding(B) ) ) ) )).

fof(cc1_lattice3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( with_suprema_relstr(A)
       => ~ empty_carrier(A) ) ) )).

fof(cc1_pboole,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ! [B] : 
          ( m1_pboole(B,A)
         => ( relation_non_empty(B)
           => ~ relation_empty_yielding(B) ) ) ) )).

fof(cc1_pralg_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A)
        & v1_pralg_1(A) )
     => ( relation(A)
        & function(A)
        & v2_pralg_1(A) ) ) )).

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

fof(cc1_seqm_3,axiom,(
    ! [A] : 
      ( relation_of2(A,k5_numbers,k1_numbers)
     => ( ( function(A)
          & v1_seqm_3(A) )
       => ( function(A)
          & v1_seq_1(A)
          & v3_seqm_3(A) ) ) ) )).

fof(cc1_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( infs_inheriting_subrelstr(B,A)
           => filtered_infs_inheriting(B,A) ) ) ) )).

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

fof(cc1_yellow_3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( empty_carrier(A)
       => v1_yellow_3(A) ) ) )).

fof(cc1_yellow_6,axiom,(
    ! [A] : 
      ( v1_classes2(A)
     => ( epsilon_transitive(A)
        & v1_classes1(A)
        & v2_classes1(A)
        & v1_classes2(A) ) ) )).

fof(cc2_card_1,axiom,(
    ! [A] : 
      ( element(A,k5_numbers)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A)
        & natural(A)
        & v1_xcmplx_0(A)
        & v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_card_1(A) ) ) )).

fof(cc2_classes2,axiom,(
    ! [A] : 
      ( v1_classes2(A)
     => ( epsilon_transitive(A)
        & v1_classes1(A)
        & v2_classes1(A) ) ) )).

fof(cc2_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & empty(A)
        & function(A) )
     => ( relation(A)
        & function(A)
        & one_to_one(A) ) ) )).

fof(cc2_index_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ! [B] : 
          ( m1_pboole(B,A)
         => ~ empty(B) ) ) )).

fof(cc2_lattice3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( with_infima_relstr(A)
       => ~ empty_carrier(A) ) ) )).

fof(cc2_pboole,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ! [B] : 
          ( m1_pboole(B,A)
         => ( relation_empty_yielding(B)
           => ~ relation_non_empty(B) ) ) ) )).

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

fof(cc2_yellow_3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ~ v1_yellow_3(A)
       => ~ empty_carrier(A) ) ) )).

fof(cc2_yellow_6,axiom,(
    ! [A] : 
      ( ( epsilon_transitive(A)
        & v2_classes1(A) )
     => ( epsilon_transitive(A)
        & v1_classes1(A)
        & v2_classes1(A)
        & v1_classes2(A) ) ) )).

fof(cc3_card_1,axiom,(
    ! [A] : 
      ( element(A,k5_numbers)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A)
        & natural(A)
        & v1_xcmplx_0(A)
        & finite(A)
        & v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_card_1(A) ) ) )).

fof(cc3_classes2,axiom,(
    ! [A] : 
      ( ( epsilon_transitive(A)
        & v2_classes1(A) )
     => v1_classes2(A) ) )).

fof(cc3_seqm_3,axiom,(
    ! [A] : 
      ( relation_of2(A,k5_numbers,k1_numbers)
     => ( ( function(A)
          & v5_seqm_3(A) )
       => ( function(A)
          & v1_seq_1(A)
          & v3_seqm_3(A)
          & v4_seqm_3(A) ) ) ) )).

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

fof(cc3_yellow_3,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A) )
       => ( ~ empty_carrier(A)
          & ~ v1_yellow_3(A) ) ) ) )).

fof(cc4_seqm_3,axiom,(
    ! [A] : 
      ( relation_of2(A,k5_numbers,k1_numbers)
     => ( ( function(A)
          & v3_seqm_3(A)
          & v4_seqm_3(A) )
       => ( function(A)
          & v1_seq_1(A)
          & v5_seqm_3(A) ) ) ) )).

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

fof(cc6_yellow_0,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( subrelstr(B,A)
         => ( full_subrelstr(B,A)
           => ( reflexive_relstr(B)
              & full_subrelstr(B,A) ) ) ) ) )).

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

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(commutativity_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,B) = set_union2(B,A) )).

fof(d13_yellow_0,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ! [B] : 
          ( rel_str(B)
         => ( ~ ( subrelstr(B,A)
                & ~ ( subset(the_carrier(B),the_carrier(A))
                    & subset(the_InternalRel(B),the_InternalRel(A)) ) )
            & ~ ( subset(the_carrier(B),the_carrier(A))
                & subset(the_InternalRel(B),the_InternalRel(A))
                & ~ subrelstr(B,A) ) ) ) ) )).

fof(d8_yellow_6,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ! [B] : 
          ( net_str(B,A)
         => ! [C] : 
              ( net_str(C,A)
             => ( ~ ( subnetstr(C,A,B)
                    & ~ ( subrelstr(C,B)
                        & the_mapping(A,C) = relation_dom_restr_as_relation_of(the_carrier(B),the_carrier(A),the_mapping(A,B),the_carrier(C)) ) )
                & ~ ( subrelstr(C,B)
                    & the_mapping(A,C) = relation_dom_restr_as_relation_of(the_carrier(B),the_carrier(A),the_mapping(A,B),the_carrier(C))
                    & ~ subnetstr(C,A,B) ) ) ) ) ) )).

fof(dt_g1_ami_1,axiom,(
    ! [A,B,C,D,E,F,G,H] : 
      ( ( element(C,B)
        & element(D,powerset(B))
        & ~ empty(E)
        & ~ empty(F)
        & element(F,powerset(cartesian_product2(E,k13_finseq_1(set_union2(union(A),B)))))
        & function(G)
        & quasi_total(G,B,set_union2(A,unordered_pair(F,D)))
        & relation_of2(G,B,set_union2(A,unordered_pair(F,D)))
        & function(H)
        & quasi_total(H,F,k1_funct_2(k4_card_3(G),k4_card_3(G)))
        & relation_of2(H,F,k1_funct_2(k4_card_3(G),k4_card_3(G))) )
     => ( v1_ami_1(g1_ami_1(A,B,C,D,E,F,G,H),A)
        & l1_ami_1(g1_ami_1(A,B,C,D,E,F,G,H),A) ) ) )).

fof(dt_g1_cat_1,axiom,(
    ! [A,B,C,D,E,F] : 
      ( ( ~ empty(A)
        & ~ empty(B)
        & function(C)
        & quasi_total(C,B,A)
        & relation_of2(C,B,A)
        & function(D)
        & quasi_total(D,B,A)
        & relation_of2(D,B,A)
        & function(E)
        & relation_of2(E,cartesian_product2(B,B),B)
        & function(F)
        & quasi_total(F,A,B)
        & relation_of2(F,A,B) )
     => ( strict_cat_str(cat_str_of(A,B,C,D,E,F))
        & cat_str(cat_str_of(A,B,C,D,E,F)) ) ) )).

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

fof(dt_k13_finseq_1,axiom,(
    $true )).

fof(dt_k1_funct_2,axiom,(
    $true )).

fof(dt_k1_numbers,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_k2_xboole_0,axiom,(
    $true )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_finseq_2,axiom,(
    ! [A] : 
      ( ~ empty(k3_finseq_2(A))
      & m1_finseq_2(k3_finseq_2(A),A) ) )).

fof(dt_k3_tarski,axiom,(
    $true )).

fof(dt_k4_card_3,axiom,(
    $true )).

fof(dt_k5_numbers,axiom,(
    element(k5_numbers,powerset(k1_numbers)) )).

fof(dt_k5_ordinal2,axiom,(
    $true )).

fof(dt_k7_ami_1,axiom,(
    $true )).

fof(dt_k7_relat_1,axiom,(
    ! [A,B] : 
      ( relation(A)
     => relation(relation_dom_restriction(A,B)) ) )).

fof(dt_k8_relset_1,axiom,(
    ! [A,B,C,D] : 
      ( relation_of2(C,A,B)
     => relation_of2_as_subset(relation_dom_restr_as_relation_of(A,B,C,D),A,B) ) )).

fof(dt_l1_ami_1,axiom,(
    ! [A,B] : 
      ( l1_ami_1(B,A)
     => one_sorted_str(B) ) )).

fof(dt_l1_cat_1,axiom,(
    $true )).

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

fof(dt_m1_ami_1,axiom,(
    ! [A,B] : 
      ( l1_ami_1(B,A)
     => ! [C] : 
          ( m1_ami_1(C,A,B)
         => element(C,k7_ami_1(the_Object_Kind(A,B))) ) ) )).

fof(dt_m1_finseq_1,axiom,(
    ! [A,B] : 
      ( m1_finseq_1(B,A)
     => ( relation(B)
        & function(B)
        & v1_finseq_1(B) ) ) )).

fof(dt_m1_finseq_2,axiom,(
    $true )).

fof(dt_m1_index_1,axiom,(
    $true )).

fof(dt_m1_pboole,axiom,(
    ! [A,B] : 
      ( m1_pboole(B,A)
     => ( relation(B)
        & function(B) ) ) )).

fof(dt_m1_pralg_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & relation_non_empty(B)
        & m1_pboole(B,A) )
     => ! [C] : 
          ( m1_pralg_1(C,A,B)
         => ( function_yielding(C)
            & m1_pboole(C,A) ) ) ) )).

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

fof(dt_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) )).

fof(dt_m3_index_1,axiom,(
    ! [A,B,C,D] : 
      ( ( ~ empty(A)
        & ~ empty(B)
        & function(C)
        & quasi_total(C,B,A)
        & relation_of2(C,B,A)
        & function(D)
        & quasi_total(D,B,A)
        & relation_of2(D,B,A) )
     => ! [E] : 
          ( m3_index_1(E,A,B,C,D)
         => ( v2_index_1(E,A,B)
            & m1_index_1(E,A,B) ) ) ) )).

fof(dt_m4_index_1,axiom,(
    ! [A,B,C,D,E] : 
      ( ( ~ empty(A)
        & ~ empty(B)
        & function(C)
        & quasi_total(C,B,A)
        & relation_of2(C,B,A)
        & function(D)
        & quasi_total(D,B,A)
        & relation_of2(D,B,A)
        & m3_index_1(E,A,B,C,D) )
     => ! [F] : 
          ( m4_index_1(F,A,B,C,D,E)
         => ( category_like(F)
            & v3_cat_5(F)
            & cat_str(F) ) ) ) )).

fof(dt_m4_pboole,axiom,(
    ! [A,B] : 
      ( m1_pboole(B,A)
     => ! [C] : 
          ( m4_pboole(C,A,B)
         => m1_pboole(C,A) ) ) )).

fof(dt_u1_ami_1,axiom,(
    ! [A,B] : 
      ( l1_ami_1(B,A)
     => element(the_Instruction_Counter(A,B),the_carrier(B)) ) )).

fof(dt_u1_cat_1,axiom,(
    ! [A] : 
      ( cat_str(A)
     => ~ empty(the_objects(A)) ) )).

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

fof(dt_u2_ami_1,axiom,(
    ! [A,B] : 
      ( l1_ami_1(B,A)
     => element(the_Instruction_Locations(A,B),powerset(the_carrier(B))) ) )).

fof(dt_u2_cat_1,axiom,(
    ! [A] : 
      ( cat_str(A)
     => ~ empty(the_morphisms(A)) ) )).

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

fof(dt_u3_ami_1,axiom,(
    ! [A,B] : 
      ( l1_ami_1(B,A)
     => ~ empty(the_Instruction_Codes(A,B)) ) )).

fof(dt_u3_cat_1,axiom,(
    ! [A] : 
      ( cat_str(A)
     => ( function(the_dom__cat(A))
        & quasi_total(the_dom__cat(A),the_morphisms(A),the_objects(A))
        & relation_of2_as_subset(the_dom__cat(A),the_morphisms(A),the_objects(A)) ) ) )).

fof(dt_u4_ami_1,axiom,(
    ! [A,B] : 
      ( l1_ami_1(B,A)
     => ( ~ empty(the_Instructions(A,B))
        & element(the_Instructions(A,B),powerset(cartesian_product2(the_Instruction_Codes(A,B),k13_finseq_1(set_union2(union(A),the_carrier(B)))))) ) ) )).

fof(dt_u4_cat_1,axiom,(
    ! [A] : 
      ( cat_str(A)
     => ( function(the_cod__cat(A))
        & quasi_total(the_cod__cat(A),the_morphisms(A),the_objects(A))
        & relation_of2_as_subset(the_cod__cat(A),the_morphisms(A),the_objects(A)) ) ) )).

fof(dt_u5_ami_1,axiom,(
    ! [A,B] : 
      ( l1_ami_1(B,A)
     => ( function(the_Object_Kind(A,B))
        & quasi_total(the_Object_Kind(A,B),the_carrier(B),set_union2(A,unordered_pair(the_Instructions(A,B),the_Instruction_Locations(A,B))))
        & relation_of2_as_subset(the_Object_Kind(A,B),the_carrier(B),set_union2(A,unordered_pair(the_Instructions(A,B),the_Instruction_Locations(A,B)))) ) ) )).

fof(dt_u5_cat_1,axiom,(
    ! [A] : 
      ( cat_str(A)
     => ( function(the_comp__cat(A))
        & relation_of2_as_subset(the_comp__cat(A),cartesian_product2(the_morphisms(A),the_morphisms(A)),the_morphisms(A)) ) ) )).

fof(dt_u6_ami_1,axiom,(
    ! [A,B] : 
      ( l1_ami_1(B,A)
     => ( function(the_Execution(A,B))
        & quasi_total(the_Execution(A,B),the_Instructions(A,B),k1_funct_2(k4_card_3(the_Object_Kind(A,B)),k4_card_3(the_Object_Kind(A,B))))
        & relation_of2_as_subset(the_Execution(A,B),the_Instructions(A,B),k1_funct_2(k4_card_3(the_Object_Kind(A,B)),k4_card_3(the_Object_Kind(A,B)))) ) ) )).

fof(dt_u6_cat_1,axiom,(
    ! [A] : 
      ( cat_str(A)
     => ( function(the_id(A))
        & quasi_total(the_id(A),the_objects(A),the_morphisms(A))
        & relation_of2_as_subset(the_id(A),the_objects(A),the_morphisms(A)) ) ) )).

fof(existence_l1_ami_1,axiom,(
    ! [A] : 
    ? [B] : l1_ami_1(B,A) )).

fof(existence_l1_cat_1,axiom,(
    ? [A] : cat_str(A) )).

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

fof(existence_m1_ami_1,axiom,(
    ! [A,B] : 
      ( l1_ami_1(B,A)
     => ? [C] : m1_ami_1(C,A,B) ) )).

fof(existence_m1_finseq_1,axiom,(
    ! [A] : 
    ? [B] : m1_finseq_1(B,A) )).

fof(existence_m1_finseq_2,axiom,(
    ! [A] : 
    ? [B] : m1_finseq_2(B,A) )).

fof(existence_m1_index_1,axiom,(
    ! [A,B] : 
    ? [C] : m1_index_1(C,A,B) )).

fof(existence_m1_pboole,axiom,(
    ! [A] : 
    ? [B] : m1_pboole(B,A) )).

fof(existence_m1_pralg_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & relation_non_empty(B)
        & m1_pboole(B,A) )
     => ? [C] : m1_pralg_1(C,A,B) ) )).

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

fof(existence_m2_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2_as_subset(C,A,B) )).

fof(existence_m3_index_1,axiom,(
    ! [A,B,C,D] : 
      ( ( ~ empty(A)
        & ~ empty(B)
        & function(C)
        & quasi_total(C,B,A)
        & relation_of2(C,B,A)
        & function(D)
        & quasi_total(D,B,A)
        & relation_of2(D,B,A) )
     => ? [E] : m3_index_1(E,A,B,C,D) ) )).

fof(existence_m4_index_1,axiom,(
    ! [A,B,C,D,E] : 
      ( ( ~ empty(A)
        & ~ empty(B)
        & function(C)
        & quasi_total(C,B,A)
        & relation_of2(C,B,A)
        & function(D)
        & quasi_total(D,B,A)
        & relation_of2(D,B,A)
        & m3_index_1(E,A,B,C,D) )
     => ? [F] : m4_index_1(F,A,B,C,D,E) ) )).

fof(existence_m4_pboole,axiom,(
    ! [A,B] : 
      ( m1_pboole(B,A)
     => ? [C] : m4_pboole(C,A,B) ) )).

fof(fc10_ami_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ( ~ empty(k7_ami_1(A))
        & v1_fraenkel(k7_ami_1(A)) ) ) )).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set)
    & relation_empty_yielding(empty_set) )).

fof(fc13_relat_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & relation_empty_yielding(A) )
     => ( relation(relation_dom_restriction(A,B))
        & relation_empty_yielding(relation_dom_restriction(A,B)) ) ) )).

fof(fc13_yellow_3,axiom,(
    ! [A] : 
      ( ( ~ v1_yellow_3(A)
        & rel_str(A) )
     => ( ~ empty(the_InternalRel(A))
        & relation(the_InternalRel(A)) ) ) )).

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

fof(fc1_fraenkel,axiom,(
    ! [A,B] : v1_fraenkel(k1_funct_2(A,B)) )).

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

fof(fc2_ami_1,axiom,(
    ! [A,B] : 
      ( ( ~ v2_ami_1(B,A)
        & l1_ami_1(B,A) )
     => ~ empty(the_Instruction_Locations(A,B)) ) )).

fof(fc2_complsp1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & element(B,powerset(powerset(A))) )
     => ( ~ empty_carrier(top_str_of(A,B))
        & strict_top_str(top_str_of(A,B)) ) ) )).

fof(fc2_fraenkel,axiom,(
    ! [A,B] : 
      ( ( finite(A)
        & finite(B) )
     => ( finite(k1_funct_2(A,B))
        & v1_fraenkel(k1_funct_2(A,B)) ) ) )).

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

fof(fc2_relat_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & relation(B) )
     => relation(set_union2(A,B)) ) )).

fof(fc3_ami_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => v1_fraenkel(k4_card_3(A)) ) )).

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

fof(fc3_pralg_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & relation_non_empty(B)
        & m1_pboole(B,A) )
     => ( ~ empty(k4_card_3(B))
        & v1_fraenkel(k4_card_3(B)) ) ) )).

fof(fc3_subset_1,axiom,(
    ! [A,B] : ~ empty(unordered_pair(A,B)) )).

fof(fc4_ami_1,axiom,(
    ! [A,B,C] : 
      ( ( with_non_empty_elements(B)
        & function(C)
        & quasi_total(C,A,B)
        & relation_of2(C,A,B) )
     => ( ~ empty(k4_card_3(C))
        & v1_fraenkel(k4_card_3(C)) ) ) )).

fof(fc4_funct_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & function(A) )
     => ( relation(relation_dom_restriction(A,B))
        & function(relation_dom_restriction(A,B)) ) ) )).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) )).

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

fof(free_g1_ami_1,axiom,(
    ! [A,B,C,D,E,F,G,H] : 
      ( ( element(C,B)
        & element(D,powerset(B))
        & ~ empty(E)
        & ~ empty(F)
        & element(F,powerset(cartesian_product2(E,k13_finseq_1(set_union2(union(A),B)))))
        & function(G)
        & quasi_total(G,B,set_union2(A,unordered_pair(F,D)))
        & relation_of2(G,B,set_union2(A,unordered_pair(F,D)))
        & function(H)
        & quasi_total(H,F,k1_funct_2(k4_card_3(G),k4_card_3(G)))
        & relation_of2(H,F,k1_funct_2(k4_card_3(G),k4_card_3(G))) )
     => ! [I,J,K,L,M,N,O,P] : 
          ( g1_ami_1(A,B,C,D,E,F,G,H) = g1_ami_1(I,J,K,L,M,N,O,P)
         => ( A = I
            & B = J
            & C = K
            & D = L
            & E = M
            & F = N
            & G = O
            & H = P ) ) ) )).

fof(free_g1_cat_1,axiom,(
    ! [A,B,C,D,E,F] : 
      ( ( ~ empty(A)
        & ~ empty(B)
        & function(C)
        & quasi_total(C,B,A)
        & relation_of2(C,B,A)
        & function(D)
        & quasi_total(D,B,A)
        & relation_of2(D,B,A)
        & function(E)
        & relation_of2(E,cartesian_product2(B,B),B)
        & function(F)
        & quasi_total(F,A,B)
        & relation_of2(F,A,B) )
     => ! [G,H,I,J,K,L] : 
          ( cat_str_of(A,B,C,D,E,F) = cat_str_of(G,H,I,J,K,L)
         => ( A = G
            & B = H
            & C = I
            & D = J
            & E = K
            & F = L ) ) ) )).

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

fof(idempotence_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,A) = A )).

fof(rc10_ami_1,axiom,(
    ! [A] : 
      ( with_non_empty_elements(A)
     => ? [B] : 
          ( l1_ami_1(B,A)
          & ~ empty_carrier(B)
          & v1_ami_1(B,A)
          & ~ v2_ami_1(B,A)
          & v4_ami_1(B,A)
          & v5_ami_1(B,A)
          & v6_ami_1(B,A)
          & v7_ami_1(B,A)
          & v8_ami_1(B,A)
          & v10_ami_1(B,A)
          & v13_ami_1(B,A) ) ) )).

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

fof(rc11_ami_1,axiom,(
    ! [A,B] : 
      ( ( with_non_empty_elements(A)
        & ~ empty_carrier(B)
        & ~ v2_ami_1(B,A)
        & v5_ami_1(B,A)
        & v8_ami_1(B,A)
        & v13_ami_1(B,A)
        & l1_ami_1(B,A) )
     => ? [C] : 
          ( m1_ami_1(C,A,B)
          & ~ empty(C)
          & relation(C)
          & function(C)
          & v11_ami_1(C,A,B) ) ) )).

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

fof(rc12_ami_1,axiom,(
    ! [A,B] : 
      ( ( with_non_empty_elements(A)
        & ~ empty_carrier(B)
        & ~ v2_ami_1(B,A)
        & v4_ami_1(B,A)
        & v5_ami_1(B,A)
        & v8_ami_1(B,A)
        & v10_ami_1(B,A)
        & l1_ami_1(B,A) )
     => ? [C] : 
          ( m1_ami_1(C,A,B)
          & relation(C)
          & function(C)
          & v11_ami_1(C,A,B)
          & v12_ami_1(C,A,B) ) ) )).

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

fof(rc1_ami_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( l1_ami_1(B,A)
      & v1_ami_1(B,A) ) )).

fof(rc1_card_1,axiom,(
    ? [A] : v1_card_1(A) )).

fof(rc1_classes2,axiom,(
    ? [A] : 
      ( epsilon_transitive(A)
      & ~ empty(A)
      & v1_classes1(A)
      & v2_classes1(A)
      & v1_classes2(A) ) )).

fof(rc1_fraenkel,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & v1_fraenkel(A) ) )).

fof(rc1_funcop_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & function_yielding(A) ) )).

fof(rc1_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A) ) )).

fof(rc1_index_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( m1_pboole(B,A)
          & relation(B)
          & ~ relation_empty_yielding(B)
          & function(B) ) ) )).

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

fof(rc1_pboole,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) )).

fof(rc1_pcomps_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & topological_space(A)
      & v2_pcomps_1(A) ) )).

fof(rc1_pralg_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( m1_finseq_1(B,A)
          & ~ empty(B)
          & relation(B)
          & function(B)
          & v1_finseq_1(B) ) ) )).

fof(rc1_pre_topc,axiom,(
    ? [A] : 
      ( top_str(A)
      & strict_top_str(A) ) )).

fof(rc1_relat_1,axiom,(
    ? [A] : 
      ( empty(A)
      & relation(A) ) )).

fof(rc1_seqm_3,axiom,(
    ? [A] : 
      ( relation_of2(A,k5_numbers,k1_numbers)
      & relation(A)
      & function(A)
      & quasi_total(A,k5_numbers,k1_numbers)
      & v1_seq_1(A)
      & v1_seqm_3(A)
      & v3_seqm_3(A)
      & v7_seqm_3(A) ) )).

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

fof(rc1_yellow_6,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & relation(A)
      & function(A)
      & v5_seqm_3(A) ) )).

fof(rc2_ami_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( l1_ami_1(B,A)
      & ~ empty_carrier(B)
      & ~ v2_ami_1(B,A) ) )).

fof(rc2_card_1,axiom,(
    ? [A] : 
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & finite(A)
      & v1_card_1(A) ) )).

fof(rc2_classes2,axiom,(
    ! [A] : 
      ( ( ~ empty(A)
        & v1_classes2(A) )
     => ? [B] : 
          ( element(B,A)
          & ~ empty(B) ) ) )).

fof(rc2_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & empty(A)
      & function(A) ) )).

fof(rc2_index_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & v1_index_1(A) ) )).

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

fof(rc2_pboole,axiom,(
    ! [A] : 
    ? [B] : 
      ( m1_pboole(B,A)
      & relation(B)
      & relation_empty_yielding(B)
      & function(B) ) )).

fof(rc2_pcomps_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & top_space_T2(A) ) )).

fof(rc2_pralg_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,k3_finseq_2(A))
          & ~ empty(B)
          & relation(B)
          & function(B)
          & v1_finseq_1(B) ) ) )).

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

fof(rc3_ami_1,axiom,(
    ! [A] : 
      ( with_non_empty_elements(A)
     => ? [B] : 
          ( l1_ami_1(B,A)
          & ~ v2_ami_1(B,A)
          & v4_ami_1(B,A) ) ) )).

fof(rc3_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A) ) )).

fof(rc3_index_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( m1_pboole(B,A)
      & relation(B)
      & function(B)
      & v1_index_1(B) ) )).

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

fof(rc3_pboole,axiom,(
    ! [A] : 
    ? [B] : 
      ( m1_pboole(B,A)
      & relation(B)
      & relation_non_empty(B)
      & function(B) ) )).

fof(rc3_pcomps_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & v3_pcomps_1(A) ) )).

fof(rc3_pralg_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & v1_pralg_1(A) ) )).

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

fof(rc4_ami_1,axiom,(
    ! [A,B] : 
      ( ( with_non_empty_elements(A)
        & ~ v2_ami_1(B,A)
        & v4_ami_1(B,A)
        & l1_ami_1(B,A) )
     => ? [C] : 
          ( element(C,the_Instructions(A,B))
          & v3_ami_1(C,A,B) ) ) )).

fof(rc4_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) )).

fof(rc4_index_1,axiom,(
    ! [A,B] : 
    ? [C] : 
      ( m1_index_1(C,A,B)
      & v2_index_1(C,A,B)
      & v3_index_1(C,A,B) ) )).

fof(rc4_pboole,axiom,(
    ! [A] : 
    ? [B] : 
      ( m1_pboole(B,A)
      & relation(B)
      & function(B)
      & function_yielding(B) ) )).

fof(rc4_pralg_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( m1_pboole(B,A)
      & relation(B)
      & function(B)
      & v2_pralg_1(B) ) )).

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

fof(rc5_ami_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( l1_ami_1(B,A)
      & v1_ami_1(B,A)
      & v6_ami_1(B,A) ) )).

fof(rc5_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_non_empty(A)
      & function(A) ) )).

fof(rc5_index_1,axiom,(
    ! [A,B,C,D,E] : 
      ( ( ~ empty(A)
        & ~ empty(B)
        & function(C)
        & quasi_total(C,B,A)
        & relation_of2(C,B,A)
        & function(D)
        & quasi_total(D,B,A)
        & relation_of2(D,B,A)
        & m3_index_1(E,A,B,C,D) )
     => ? [F] : 
          ( m4_index_1(F,A,B,C,D,E)
          & strict_cat_str(F)
          & category_like(F)
          & v1_cat_5(F)
          & v3_cat_5(F)
          & v4_cat_5(F) ) ) )).

fof(rc5_pboole,axiom,(
    ! [A,B] : 
      ( ( relation_non_empty(B)
        & m1_pboole(B,A) )
     => ? [C] : 
          ( m4_pboole(C,A,B)
          & relation(C)
          & relation_non_empty(C)
          & function(C) ) ) )).

fof(rc5_pralg_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( m1_pboole(B,A)
          & relation(B)
          & function(B)
          & v1_pralg_1(B)
          & v2_pralg_1(B)
          & v3_pralg_1(B) ) ) )).

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

fof(rc6_ami_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( l1_ami_1(B,A)
      & ~ empty_carrier(B)
      & v1_ami_1(B,A)
      & ~ v2_ami_1(B,A)
      & v5_ami_1(B,A)
      & v6_ami_1(B,A)
      & v8_ami_1(B,A) ) )).

fof(rc6_pralg_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & relation_non_empty(B)
        & m1_pboole(B,A) )
     => ? [C] : 
          ( m1_pralg_1(C,A,B)
          & relation(C)
          & function(C)
          & function_yielding(C)
          & v4_pralg_1(C) ) ) )).

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

fof(rc6_yellow_6,axiom,(
    ! [A,B] : 
      ( ( one_sorted_str(A)
        & net_str(B,A) )
     => ? [C] : 
          ( subnetstr(C,A,B)
          & strict_net_str(C,A)
          & full_subnetstr(C,A,B) ) ) )).

fof(rc7_ami_1,axiom,(
    ! [A] : 
      ( with_non_empty_elements(A)
     => ? [B] : 
          ( l1_ami_1(B,A)
          & ~ empty_carrier(B)
          & v1_ami_1(B,A)
          & ~ v2_ami_1(B,A)
          & v4_ami_1(B,A)
          & v5_ami_1(B,A)
          & v6_ami_1(B,A)
          & v7_ami_1(B,A)
          & v8_ami_1(B,A) ) ) )).

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

fof(rc8_ami_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( l1_ami_1(B,A)
      & v1_ami_1(B,A)
      & v6_ami_1(B,A)
      & v10_ami_1(B,A) ) )).

fof(rc8_waybel_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & rel_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & lower_relstr_subset(B,A)
          & upper_relstr_subset(B,A) ) ) )).

fof(rc9_ami_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( l1_ami_1(B,A)
      & ~ empty_carrier(B)
      & v1_ami_1(B,A)
      & ~ v2_ami_1(B,A)
      & v5_ami_1(B,A)
      & v6_ami_1(B,A)
      & v8_ami_1(B,A)
      & v10_ami_1(B,A) ) )).

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

fof(redefinition_k3_finseq_2,axiom,(
    ! [A] : k3_finseq_2(A) = k13_finseq_1(A) )).

fof(redefinition_k5_numbers,axiom,(
    k5_numbers = omega )).

fof(redefinition_k8_relset_1,axiom,(
    ! [A,B,C,D] : 
      ( relation_of2(C,A,B)
     => relation_dom_restr_as_relation_of(A,B,C,D) = relation_dom_restriction(C,D) ) )).

fof(redefinition_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t19_yellow_6,conjecture,(
    ! [A] : 
      ( one_sorted_str(A)
     => ! [B] : 
          ( net_str(B,A)
         => ! [C] : 
              ( subnetstr(C,A,B)
             => subset(the_carrier(C),the_carrier(B)) ) ) ) )).

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
%------------------------------------------------------------------------------
