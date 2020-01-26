%------------------------------------------------------------------------------
% File     : tex_2__t5_tex_2

% Syntax   : Number of formulae    :  164 (  19 unit)
%            Number of atoms       :  751 (  20 equality)
%            Maximal formula depth :   15 (   6 average)
%            Number of connectives :  723 ( 136 ~  ;   1  |; 420  &)
%                                         (   1 <=>; 165 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   60 (   1 propositional; 0-3 arity)
%            Number of functors    :   11 (   1 constant; 0-2 arity)
%            Number of variables   :  256 (   1 singleton; 187 !;  69 ?)
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

fof(cc10_membered,axiom,(
    ! [A] : 
      ( v1_membered(A)
     => ! [B] : 
          ( element(B,A)
         => v1_xcmplx_0(B) ) ) )).

fof(cc10_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v3_tdlat_3(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => ( v1_tsep_1(B,A)
           => ( topological_space(B)
              & v1_borsuk_1(B,A) ) ) ) ) )).

fof(cc11_membered,axiom,(
    ! [A] : 
      ( v2_membered(A)
     => ! [B] : 
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B) ) ) ) )).

fof(cc11_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v3_tdlat_3(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => ( v1_borsuk_1(B,A)
           => ( topological_space(B)
              & v1_tsep_1(B,A) ) ) ) ) )).

fof(cc12_membered,axiom,(
    ! [A] : 
      ( v3_membered(A)
     => ! [B] : 
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_rat_1(B) ) ) ) )).

fof(cc12_tdlat_3,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ( ~ empty_carrier(A)
          & topological_space(A)
          & v5_tdlat_3(A) )
       => ( ~ empty_carrier(A)
          & topological_space(A)
          & v4_tdlat_3(A) ) ) ) )).

fof(cc13_membered,axiom,(
    ! [A] : 
      ( v4_membered(A)
     => ! [B] : 
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B) ) ) ) )).

fof(cc13_tdlat_3,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ( ~ empty_carrier(A)
          & topological_space(A)
          & v3_tdlat_3(A) )
       => ( ~ empty_carrier(A)
          & topological_space(A)
          & v5_tdlat_3(A) ) ) ) )).

fof(cc14_membered,axiom,(
    ! [A] : 
      ( v5_membered(A)
     => ! [B] : 
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & natural(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B) ) ) ) )).

fof(cc14_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v4_tdlat_3(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => ( ( ~ empty_carrier(B)
              & v1_tsep_1(B,A) )
           => ( ~ empty_carrier(B)
              & topological_space(B)
              & v4_tdlat_3(B) ) ) ) ) )).

fof(cc15_membered,axiom,(
    ! [A] : 
      ( empty(A)
     => ( v1_membered(A)
        & v2_membered(A)
        & v3_membered(A)
        & v4_membered(A)
        & v5_membered(A) ) ) )).

fof(cc15_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v5_tdlat_3(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => ( ~ empty_carrier(B)
           => ( ~ empty_carrier(B)
              & topological_space(B)
              & v4_tdlat_3(B)
              & v5_tdlat_3(B) ) ) ) ) )).

fof(cc16_membered,axiom,(
    ! [A] : 
      ( v1_membered(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => v1_membered(B) ) ) )).

fof(cc17_membered,axiom,(
    ! [A] : 
      ( v2_membered(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B) ) ) ) )).

fof(cc18_membered,axiom,(
    ! [A] : 
      ( v3_membered(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B) ) ) ) )).

fof(cc19_membered,axiom,(
    ! [A] : 
      ( v4_membered(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B)
            & v4_membered(B) ) ) ) )).

fof(cc1_funct_2,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
     => ( ( function(C)
          & v1_partfun1(C,A,B) )
       => ( function(C)
          & quasi_total(C,A,B) ) ) ) )).

fof(cc1_membered,axiom,(
    ! [A] : 
      ( v5_membered(A)
     => v4_membered(A) ) )).

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

fof(cc1_realset1,axiom,(
    ! [A] : 
      ( ~ v1_realset1(A)
     => ~ empty(A) ) )).

fof(cc1_tdlat_3,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( v1_tdlat_3(A)
       => topological_space(A) ) ) )).

fof(cc1_tex_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ( ~ empty_carrier(A)
          & trivial_carrier(A)
          & topological_space(A) )
       => ( ~ empty_carrier(A)
          & topological_space(A)
          & v1_tdlat_3(A)
          & v2_tdlat_3(A)
          & v3_tdlat_3(A)
          & v4_tdlat_3(A)
          & v5_tdlat_3(A) ) ) ) )).

fof(cc1_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( empty(B)
           => ( open_subset(B,A)
              & closed_subset(B,A) ) ) ) ) )).

fof(cc20_membered,axiom,(
    ! [A] : 
      ( v5_membered(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B)
            & v4_membered(B)
            & v5_membered(B) ) ) ) )).

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

fof(cc2_membered,axiom,(
    ! [A] : 
      ( v4_membered(A)
     => v3_membered(A) ) )).

fof(cc2_tdlat_3,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( v2_tdlat_3(A)
       => topological_space(A) ) ) )).

fof(cc2_tex_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ( ~ empty_carrier(A)
          & topological_space(A)
          & v1_tdlat_3(A)
          & v2_tdlat_3(A) )
       => ( ~ empty_carrier(A)
          & trivial_carrier(A)
          & topological_space(A) ) ) ) )).

fof(cc2_tops_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( empty(B)
           => boundary_set(B,A) ) ) ) )).

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

fof(cc3_membered,axiom,(
    ! [A] : 
      ( v3_membered(A)
     => v2_membered(A) ) )).

fof(cc3_tdlat_3,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( v1_tdlat_3(A)
       => v3_tdlat_3(A) ) ) )).

fof(cc3_tex_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ( ~ empty_carrier(A)
          & topological_space(A)
          & ~ v1_tdlat_3(A) )
       => ( ~ empty_carrier(A)
          & ~ trivial_carrier(A)
          & topological_space(A) ) ) ) )).

fof(cc3_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( empty(B)
           => nowhere_dense(B,A) ) ) ) )).

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

fof(cc4_membered,axiom,(
    ! [A] : 
      ( v2_membered(A)
     => v1_membered(A) ) )).

fof(cc4_tdlat_3,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( v2_tdlat_3(A)
       => v3_tdlat_3(A) ) ) )).

fof(cc4_tex_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ( ~ empty_carrier(A)
          & topological_space(A)
          & ~ v2_tdlat_3(A) )
       => ( ~ empty_carrier(A)
          & ~ trivial_carrier(A)
          & topological_space(A) ) ) ) )).

fof(cc4_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( nowhere_dense(B,A)
           => boundary_set(B,A) ) ) ) )).

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

fof(cc5_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v1_tdlat_3(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => ( topological_space(B)
            & v1_borsuk_1(B,A)
            & v1_tsep_1(B,A)
            & v1_tdlat_3(B)
            & v3_tdlat_3(B) ) ) ) )).

fof(cc5_tex_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ( ~ empty_carrier(A)
          & topological_space(A)
          & ~ v3_tdlat_3(A) )
       => ( ~ empty_carrier(A)
          & ~ trivial_carrier(A)
          & topological_space(A)
          & ~ v1_tdlat_3(A)
          & ~ v2_tdlat_3(A) ) ) ) )).

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

fof(cc6_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v2_tdlat_3(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => ( topological_space(B)
            & v2_tdlat_3(B)
            & v3_tdlat_3(B) ) ) ) )).

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

fof(cc7_tdlat_3,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ( topological_space(A)
          & v1_tdlat_3(A) )
       => ( topological_space(A)
          & v3_tdlat_3(A) ) ) ) )).

fof(cc8_tdlat_3,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ( topological_space(A)
          & v2_tdlat_3(A) )
       => ( topological_space(A)
          & v3_tdlat_3(A) ) ) ) )).

fof(cc9_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v3_tdlat_3(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => ( ~ empty_carrier(B)
           => ( ~ empty_carrier(B)
              & topological_space(B)
              & v3_tdlat_3(B) ) ) ) ) )).

fof(d2_tex_2,axiom,(
    ! [A,B] : 
      ( element(B,A)
     => ( ~ ( proper_element(B,A)
            & B = union(A) )
        & ~ ( B != union(A)
            & ~ proper_element(B,A) ) ) ) )).

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

fof(dt_k1_pcomps_1,axiom,(
    ! [A] : element(k1_pcomps_1(A),powerset(powerset(A))) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_tarski,axiom,(
    $true )).

fof(dt_k5_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => element(union_of_subsets(A,B),powerset(A)) ) )).

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

fof(dt_m4_realset1,axiom,(
    $true )).

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

fof(existence_m4_realset1,axiom,(
    ! [A] : 
      ( ~ v1_realset1(A)
     => ? [B] : m4_realset1(B,A) ) )).

fof(fc1_struct_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(the_carrier(A)) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc1_tex_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ( strict_one_sorted(one_sorted_str_of(A))
        & ~ empty_carrier(one_sorted_str_of(A)) ) ) )).

fof(fc6_membered,axiom,
    ( empty(empty_set)
    & v1_membered(empty_set)
    & v2_membered(empty_set)
    & v3_membered(empty_set)
    & v4_membered(empty_set)
    & v5_membered(empty_set) )).

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

fof(rc10_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v4_tdlat_3(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & ~ empty_carrier(B)
          & strict_top_str(B)
          & topological_space(B)
          & v4_tdlat_3(B) ) ) )).

fof(rc10_tex_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & ~ trivial_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & ~ v1_tdlat_3(A)
      & ~ v2_tdlat_3(A)
      & v3_tdlat_3(A)
      & v4_tdlat_3(A)
      & v5_tdlat_3(A) ) )).

fof(rc11_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v5_tdlat_3(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & ~ empty_carrier(B)
          & strict_top_str(B)
          & topological_space(B)
          & v4_tdlat_3(B)
          & v5_tdlat_3(B) ) ) )).

fof(rc11_tex_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & ~ trivial_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & ~ v1_tdlat_3(A)
      & ~ v2_tdlat_3(A)
      & ~ v3_tdlat_3(A) ) )).

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

fof(rc1_membered,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & v1_membered(A)
      & v2_membered(A)
      & v3_membered(A)
      & v4_membered(A)
      & v5_membered(A) ) )).

fof(rc1_partfun1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A)
      & empty(A) ) )).

fof(rc1_pcomps_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & topological_space(A)
      & v2_pcomps_1(A) ) )).

fof(rc1_pre_topc,axiom,(
    ? [A] : 
      ( top_str(A)
      & strict_top_str(A) ) )).

fof(rc1_realset1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & v1_realset1(A) ) )).

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

fof(rc1_tdlat_3,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & v1_tdlat_3(A)
      & v2_tdlat_3(A) ) )).

fof(rc1_tex_1,axiom,(
    ? [A] : 
      ( one_sorted_str(A)
      & strict_one_sorted(A)
      & ~ empty_carrier(A)
      & trivial_carrier(A) ) )).

fof(rc1_tex_2,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & v1_realset1(A) ) )).

fof(rc1_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & open_subset(B,A) ) ) )).

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

fof(rc2_pcomps_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & top_space_T2(A) ) )).

fof(rc2_pre_topc,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & topological_space(A) ) )).

fof(rc2_realset1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & ~ v1_realset1(A) ) )).

fof(rc2_struct_0,axiom,(
    ? [A] : 
      ( zero_str(A)
      & strict_zero_str(A) ) )).

fof(rc2_subset_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(A))
      & empty(B) ) )).

fof(rc2_tdlat_3,axiom,(
    ? [A] : 
      ( top_str(A)
      & strict_top_str(A)
      & v3_tdlat_3(A) ) )).

fof(rc2_tex_1,axiom,(
    ? [A] : 
      ( one_sorted_str(A)
      & strict_one_sorted(A)
      & ~ empty_carrier(A)
      & ~ trivial_carrier(A) ) )).

fof(rc2_tex_2,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(A))
      & ~ proper_element(B,powerset(A)) ) )).

fof(rc2_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & open_subset(B,A)
          & closed_subset(B,A) ) ) )).

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

fof(rc3_pcomps_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & v3_pcomps_1(A) ) )).

fof(rc3_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & strict_top_str(B) ) ) )).

fof(rc3_realset1,axiom,(
    ! [A] : 
      ( ~ v1_realset1(A)
     => ? [B] : 
          ( m4_realset1(B,A)
          & ~ empty(B) ) ) )).

fof(rc3_struct_0,axiom,(
    ? [A] : 
      ( one_sorted_str(A)
      & ~ empty_carrier(A) ) )).

fof(rc3_tdlat_3,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & v1_tdlat_3(A)
      & v2_tdlat_3(A)
      & v3_tdlat_3(A) ) )).

fof(rc3_tex_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & trivial_carrier(A)
      & strict_top_str(A) ) )).

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

fof(rc4_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v1_tdlat_3(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & strict_top_str(B)
          & topological_space(B)
          & v1_borsuk_1(B,A)
          & v1_tsep_1(B,A)
          & v1_tdlat_3(B)
          & v3_tdlat_3(B) ) ) )).

fof(rc4_tex_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & ~ trivial_carrier(A)
      & strict_top_str(A) ) )).

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

fof(rc5_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v2_tdlat_3(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & topological_space(B)
          & v2_tdlat_3(B)
          & v3_tdlat_3(B) ) ) )).

fof(rc5_tex_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & trivial_carrier(A)
      & strict_top_str(A)
      & topological_space(A) ) )).

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

fof(rc6_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & closed_subset(B,A) ) ) )).

fof(rc6_tdlat_3,axiom,(
    ? [A] : 
      ( top_str(A)
      & strict_top_str(A)
      & topological_space(A)
      & v3_tdlat_3(A) ) )).

fof(rc6_tex_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & ~ trivial_carrier(A)
      & strict_top_str(A)
      & topological_space(A) ) )).

fof(rc7_pre_topc,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & closed_subset(B,A) ) ) )).

fof(rc7_tdlat_3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & v3_tdlat_3(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & ~ empty_carrier(B)
          & strict_top_str(B)
          & topological_space(B)
          & v3_tdlat_3(B) ) ) )).

fof(rc7_tex_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & ~ trivial_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & v1_tdlat_3(A)
      & ~ v2_tdlat_3(A)
      & v3_tdlat_3(A)
      & v4_tdlat_3(A)
      & v5_tdlat_3(A) ) )).

fof(rc8_tdlat_3,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & v4_tdlat_3(A) ) )).

fof(rc8_tex_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & ~ trivial_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & ~ v1_tdlat_3(A)
      & v2_tdlat_3(A)
      & v3_tdlat_3(A)
      & v4_tdlat_3(A)
      & v5_tdlat_3(A) ) )).

fof(rc9_tdlat_3,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & v5_tdlat_3(A) ) )).

fof(rc9_tex_1,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & ~ trivial_carrier(A)
      & strict_top_str(A)
      & topological_space(A)
      & ~ v1_tdlat_3(A)
      & ~ v2_tdlat_3(A) ) )).

fof(redefinition_k1_pcomps_1,axiom,(
    ! [A] : k1_pcomps_1(A) = powerset(A) )).

fof(redefinition_k5_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => union_of_subsets(A,B) = union(B) ) )).

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

fof(t5_tex_2,conjecture,(
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

fof(t99_zfmisc_1,axiom,(
    ! [A] : union(powerset(A)) = A )).
%------------------------------------------------------------------------------
