%------------------------------------------------------------------------------
% File     : pre_topc__t45_pre_topc

% Syntax   : Number of formulae    :   93 (  14 unit)
%            Number of atoms       :  310 (  23 equality)
%            Maximal formula depth :   24 (   5 average)
%            Number of connectives :  274 (  57 ~  ;   1  |; 118  &)
%                                         (   4 <=>;  94 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   28 (   1 propositional; 0-2 arity)
%            Number of functors    :   13 (   1 constant; 0-3 arity)
%            Number of variables   :  161 (   1 singleton; 141 !;  20 ?)
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

fof(cc11_membered,axiom,(
    ! [A] : 
      ( v2_membered(A)
     => ! [B] : 
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B) ) ) ) )).

fof(cc12_membered,axiom,(
    ! [A] : 
      ( v3_membered(A)
     => ! [B] : 
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_rat_1(B) ) ) ) )).

fof(cc13_membered,axiom,(
    ! [A] : 
      ( v4_membered(A)
     => ! [B] : 
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B) ) ) ) )).

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

fof(cc15_membered,axiom,(
    ! [A] : 
      ( empty(A)
     => ( v1_membered(A)
        & v2_membered(A)
        & v3_membered(A)
        & v4_membered(A)
        & v5_membered(A) ) ) )).

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

fof(cc1_membered,axiom,(
    ! [A] : 
      ( v5_membered(A)
     => v4_membered(A) ) )).

fof(cc1_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => topological_space(B) ) ) )).

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

fof(cc2_membered,axiom,(
    ! [A] : 
      ( v4_membered(A)
     => v3_membered(A) ) )).

fof(cc3_membered,axiom,(
    ! [A] : 
      ( v3_membered(A)
     => v2_membered(A) ) )).

fof(cc4_membered,axiom,(
    ! [A] : 
      ( v2_membered(A)
     => v1_membered(A) ) )).

fof(d13_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ! [C] : 
              ( element(C,powerset(the_carrier(A)))
             => ( ~ ( C = topstr_closure(A,B)
                    & ~ ! [D] : 
                          ~ ( in(D,the_carrier(A))
                            & ~ ( ~ ( in(D,C)
                                    & ~ ! [E] : 
                                          ( element(E,powerset(the_carrier(A)))
                                         => ~ ( open_subset(E,A)
                                              & in(D,E)
                                              & disjoint(B,E) ) ) )
                                & ~ ( ! [E] : 
                                        ( element(E,powerset(the_carrier(A)))
                                       => ~ ( open_subset(E,A)
                                            & in(D,E)
                                            & disjoint(B,E) ) )
                                    & ~ in(D,C) ) ) ) )
                & ~ ( ! [D] : 
                        ~ ( in(D,the_carrier(A))
                          & ~ ( ~ ( in(D,C)
                                  & ~ ! [E] : 
                                        ( element(E,powerset(the_carrier(A)))
                                       => ~ ( open_subset(E,A)
                                            & in(D,E)
                                            & disjoint(B,E) ) ) )
                              & ~ ( ! [E] : 
                                      ( element(E,powerset(the_carrier(A)))
                                     => ~ ( open_subset(E,A)
                                          & in(D,E)
                                          & disjoint(B,E) ) )
                                  & ~ in(D,C) ) ) )
                    & C != topstr_closure(A,B) ) ) ) ) ) )).

fof(d3_pre_topc,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => cast_as_carrier_subset(A) = the_carrier(A) ) )).

fof(d4_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_difference(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            & ~ in(D,B) ) ) ) )).

fof(d6_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( ~ ( closed_subset(B,A)
                & ~ open_subset(subset_difference(the_carrier(A),cast_as_carrier_subset(A),B),A) )
            & ~ ( open_subset(subset_difference(the_carrier(A),cast_as_carrier_subset(A),B),A)
                & ~ closed_subset(B,A) ) ) ) ) )).

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

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_pre_topc,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => element(cast_as_carrier_subset(A),powerset(the_carrier(A))) ) )).

fof(dt_k3_subset_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => element(subset_complement(A,B),powerset(A)) ) )).

fof(dt_k4_xboole_0,axiom,(
    $true )).

fof(dt_k6_pre_topc,axiom,(
    ! [A,B] : 
      ( ( top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => element(topstr_closure(A,B),powerset(the_carrier(A))) ) )).

fof(dt_k6_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => element(subset_difference(A,B,C),powerset(A)) ) )).

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

fof(dt_m1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => top_str(B) ) ) )).

fof(dt_m1_subset_1,axiom,(
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

fof(existence_m1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ? [B] : m1_pre_topc(B,A) ) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(fc1_struct_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(the_carrier(A)) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc2_pre_topc,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(cast_as_carrier_subset(A)) ) )).

fof(fc37_membered,axiom,(
    ! [A,B] : 
      ( v1_membered(A)
     => v1_membered(set_difference(A,B)) ) )).

fof(fc38_membered,axiom,(
    ! [A,B] : 
      ( v2_membered(A)
     => ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B)) ) ) )).

fof(fc39_membered,axiom,(
    ! [A,B] : 
      ( v3_membered(A)
     => ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B)) ) ) )).

fof(fc40_membered,axiom,(
    ! [A,B] : 
      ( v4_membered(A)
     => ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B)) ) ) )).

fof(fc41_membered,axiom,(
    ! [A,B] : 
      ( v5_membered(A)
     => ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v5_membered(set_difference(A,B)) ) ) )).

fof(fc5_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => closed_subset(cast_as_carrier_subset(A),A) ) )).

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

fof(involutiveness_k3_subset_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => subset_complement(A,subset_complement(A,B)) = B ) )).

fof(rc1_membered,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & v1_membered(A)
      & v2_membered(A)
      & v3_membered(A)
      & v4_membered(A)
      & v5_membered(A) ) )).

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

fof(redefinition_k6_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_difference(A,B,C) = set_difference(B,C) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(symmetry_r1_xboole_0,axiom,(
    ! [A,B] : 
      ( disjoint(A,B)
     => disjoint(B,A) ) )).

fof(t17_pre_topc,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => subset_complement(the_carrier(A),B) = subset_difference(the_carrier(A),cast_as_carrier_subset(A),B) ) ) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t22_pre_topc,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => subset_difference(the_carrier(A),cast_as_carrier_subset(A),subset_difference(the_carrier(A),cast_as_carrier_subset(A),B)) = B ) ) )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t3_boole,axiom,(
    ! [A] : set_difference(A,empty_set) = A )).

fof(t3_subset,axiom,(
    ! [A,B] : 
      ( element(A,powerset(B))
    <=> subset(A,B) ) )).

fof(t43_subset_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => ! [C] : 
          ( element(C,powerset(A))
         => ( disjoint(B,C)
          <=> subset(B,subset_complement(A,C)) ) ) ) )).

fof(t45_pre_topc,conjecture,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ! [C] : 
              ~ ( in(C,the_carrier(A))
                & ~ ( ~ ( in(C,topstr_closure(A,B))
                        & ~ ! [D] : 
                              ( element(D,powerset(the_carrier(A)))
                             => ~ ( closed_subset(D,A)
                                  & subset(B,D)
                                  & ~ in(C,D) ) ) )
                    & ~ ( ! [D] : 
                            ( element(D,powerset(the_carrier(A)))
                           => ~ ( closed_subset(D,A)
                                & subset(B,D)
                                & ~ in(C,D) ) )
                        & ~ in(C,topstr_closure(A,B)) ) ) ) ) ) )).

fof(t4_boole,axiom,(
    ! [A] : set_difference(empty_set,A) = empty_set )).

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
