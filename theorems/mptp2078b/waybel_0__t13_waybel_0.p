% Mizar problem: t13_waybel_0,waybel_0,911,64 
fof(t13_waybel_0, conjecture,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (l1_orders_2(B) =>  (g1_orders_2(u1_struct_0(A), u1_orders_2(A))=g1_orders_2(u1_struct_0(B), u1_orders_2(B)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) =>  (C=D =>  (k3_waybel_0(A, C)=k3_waybel_0(B, D) & k4_waybel_0(A, C)=k4_waybel_0(B, D)) ) ) ) ) ) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc1_finset_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_finset_1(A)) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc1_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) => v7_struct_0(A)) ) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(cc1_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) =>  (v1_waybel_0(B, A) & v2_waybel_0(B, A)) ) ) ) ) ) ).
fof(cc2_finset_1, axiom,  (! [A] :  (v1_finset_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_finset_1(B)) ) ) ) ).
fof(cc2_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) => v6_orders_2(B, A)) ) ) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(cc2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v7_struct_0(A))  =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(cc2_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ~ (v1_subset_1(B, A))  =>  ~ (v1_xboole_0(B)) ) ) ) ) ) ).
fof(cc3_relset_1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_xboole_0(C)) ) ) ) ).
fof(cc3_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (v1_xboole_0(B) => v1_subset_1(B, A)) ) ) ) ) ).
fof(cc4_relset_1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) => v1_xboole_0(C)) ) ) ) ).
fof(cc4_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) =>  (v2_struct_0(A) & v8_struct_0(A)) ) ) ) ).
fof(cc4_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ~ (v1_subset_1(B, A)) ) ) ) ) ).
fof(cc5_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ( ~ (v2_struct_0(A))  &  ~ (v8_struct_0(A)) ) ) ) ) ).
fof(cc6_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v7_struct_0(A) => v8_struct_0(A)) ) ) ).
fof(cc7_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ~ (v7_struct_0(A)) ) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d15_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (C=k3_waybel_0(A, B) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, C) <=>  (? [E] :  (m1_subset_1(E, u1_struct_0(A)) &  (r1_orders_2(A, D, E) & r2_hidden(E, B)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d16_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (C=k4_waybel_0(A, B) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, C) <=>  (? [E] :  (m1_subset_1(E, u1_struct_0(A)) &  (r1_orders_2(A, E, D) & r2_hidden(E, B)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_waybel_0, axiom,  (! [A, B] :  ( (l1_orders_2(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k3_waybel_0(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k4_waybel_0, axiom,  (! [A, B] :  ( (l1_orders_2(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k4_waybel_0(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fc10_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  ~ (v1_xboole_0(k2_zfmisc_1(A, B))) ) ) ).
fof(fc14_finset_1, axiom,  (! [A, B] :  ( (v1_finset_1(A) & v1_finset_1(B))  => v1_finset_1(k2_zfmisc_1(A, B))) ) ).
fof(fc17_finset_1, axiom,  (! [A] :  (v1_finset_1(A) => v1_finset_1(k1_zfmisc_1(A))) ) ).
fof(fc1_orders_2, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))))  =>  ( ~ (v2_struct_0(g1_orders_2(A, B)))  & v1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(fc1_struct_0, axiom,  (! [A] :  ( (v2_struct_0(A) & l1_struct_0(A))  => v1_xboole_0(u1_struct_0(A))) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc6_struct_0, axiom,  (! [A] :  ( ( ~ (v7_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_zfmisc_1(u1_struct_0(A))) ) ) ).
fof(fc7_struct_0, axiom,  (! [A] :  ( (v7_struct_0(A) & l1_struct_0(A))  => v1_zfmisc_1(u1_struct_0(A))) ) ).
fof(fc8_struct_0, axiom,  (! [A] :  ( (v8_struct_0(A) & l1_struct_0(A))  => v1_finset_1(u1_struct_0(A))) ) ).
fof(fc9_struct_0, axiom,  (! [A] :  ( ( ~ (v8_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_finset_1(u1_struct_0(A))) ) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(irreflexivity_r2_orders_2, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  ~ (r2_orders_2(A, B, B)) ) ) ).
fof(rc10_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  &  ~ (v7_struct_0(A)) ) ) ) ).
fof(rc1_finset_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v1_finset_1(A)) ) ).
fof(rc1_orders_2, axiom,  (? [A] :  (l1_orders_2(A) & v1_orders_2(A)) ) ).
fof(rc1_relset_1, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_xboole_0(C) &  (v1_relat_1(C) &  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ) ) ).
fof(rc1_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(rc1_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  (v1_waybel_0(B, A) & v2_waybel_0(B, A)) ) ) ) ) ).
fof(rc1_xboole_0, axiom,  (? [A] : v1_xboole_0(A)) ).
fof(rc20_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ).
fof(rc2_finset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  & v1_finset_1(B)) ) ) ) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(rc2_xboole_0, axiom,  (? [A] :  ~ (v1_xboole_0(A)) ) ).
fof(rc3_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & v6_orders_2(B, A)) ) ) ) ).
fof(rc3_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_subset_1(B, A)) ) ) ) ).
fof(rc4_orders_2, axiom,  (? [A] :  (l1_orders_2(A) &  (v2_struct_0(A) & v1_orders_2(A)) ) ) ).
fof(rc4_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(rc4_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_subset_1(B, A)) ) ) ) ).
fof(rc9_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  & v7_struct_0(A)) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (l1_orders_2(B) =>  (g1_orders_2(u1_struct_0(A), u1_orders_2(A))=g1_orders_2(u1_struct_0(B), u1_orders_2(B)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(B)) =>  ( (C=E & D=F)  =>  ( (r1_orders_2(A, C, D) => r1_orders_2(B, E, F))  &  (r2_orders_2(A, C, D) => r2_orders_2(B, E, F)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
