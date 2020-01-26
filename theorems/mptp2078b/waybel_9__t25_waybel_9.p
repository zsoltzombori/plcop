% Mizar problem: t25_waybel_9,waybel_9,1352,75 
fof(t25_waybel_9, conjecture,  (! [A] :  ( (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_waybel_9(A)) ) ) ) ) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) &  (v3_yellow_6(B, A) & l1_waybel_0(B, A)) ) ) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(A)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) )  =>  (v5_pre_topc(C, A, A) => r2_hidden(k2_yellow_6(u1_struct_0(A), A, C, k11_yellow_6(A, B)), k10_yellow_6(A, k6_waybel_9(A, A, C, B)))) ) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(abstractness_v6_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v6_waybel_0(B, A) => B=g1_waybel_0(A, u1_struct_0(B), u1_orders_2(B), u1_waybel_0(A, B))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d11_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (r1_waybel_0(A, B, C) <=>  (? [D] :  (m1_subset_1(D, u1_struct_0(B)) &  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (r1_orders_2(B, D, E) => r2_hidden(k2_waybel_0(A, B, E), C)) ) ) ) ) ) ) ) ) ) ) ).
fof(d12_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  (C=k9_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (r2_hidden(E, k1_relat_1(A)) &  (r2_hidden(E, B) & D=k1_funct_1(A, E)) ) ) ) ) ) ) ) ) ) ).
fof(d18_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (C=k10_yellow_6(A, B) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, C) <=>  (! [E] :  (m1_connsp_2(E, A, D) => r1_waybel_0(A, B, E)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( (B=k1_xboole_0 => A=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, B, C)) )  &  (B=k1_xboole_0 =>  (A=k1_xboole_0 |  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(d20_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v8_pre_topc(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) &  (v3_yellow_6(B, A) & l1_waybel_0(B, A)) ) ) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (C=k11_yellow_6(A, B) <=> r2_hidden(C, k10_yellow_6(A, B))) ) ) ) ) ) ) ).
fof(d3_borsuk_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (v5_pre_topc(C, A, B) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_connsp_2(E, B, k3_funct_2(u1_struct_0(A), u1_struct_0(B), C, D)) =>  (? [F] :  (m1_connsp_2(F, A, D) & r1_tarski(k7_relset_1(u1_struct_0(A), u1_struct_0(B), C, F), E)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d8_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(B)) => k2_waybel_0(A, B, C)=k3_funct_2(u1_struct_0(B), u1_struct_0(A), u1_waybel_0(A, B), C)) ) ) ) ) ) ).
fof(d8_waybel_9, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  (l1_struct_0(B) =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (! [D] :  (l1_waybel_0(D, A) =>  (! [E] :  ( (v6_waybel_0(E, B) & l1_waybel_0(E, B))  =>  (E=k6_waybel_9(A, B, C, D) <=>  (g1_orders_2(u1_struct_0(E), u1_orders_2(E))=g1_orders_2(u1_struct_0(D), u1_orders_2(D)) & u1_waybel_0(B, E)=k1_partfun1(u1_struct_0(D), u1_struct_0(A), u1_struct_0(A), u1_struct_0(B), u1_waybel_0(A, D), C)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (v6_waybel_0(g1_waybel_0(A, B, C, D), A) & l1_waybel_0(g1_waybel_0(A, B, C, D), A)) ) ) ).
fof(dt_k10_yellow_6, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  &  ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) ) )  => m1_subset_1(k10_yellow_6(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k11_yellow_6, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v8_pre_topc(A) & l1_pre_topc(A)) ) )  &  ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) &  (v3_yellow_6(B, A) & l1_waybel_0(B, A)) ) ) ) )  => m1_subset_1(k11_yellow_6(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_partfun1, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) )  =>  (v1_funct_1(k1_partfun1(A, B, C, D, E, F)) & m1_subset_1(k1_partfun1(A, B, C, D, E, F), k1_zfmisc_1(k2_zfmisc_1(A, D)))) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_waybel_0, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  &  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  & m1_subset_1(C, u1_struct_0(B))) )  => m1_subset_1(k2_waybel_0(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k2_yellow_6, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, u1_struct_0(B))))) )  & m1_subset_1(D, A)) ) )  => m1_subset_1(k2_yellow_6(A, B, C, D), u1_struct_0(B))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => m1_subset_1(k3_funct_2(A, B, C, D), B)) ) ).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k6_waybel_9, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  &  (l1_struct_0(B) &  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  & l1_waybel_0(D, A)) ) )  =>  (v6_waybel_0(k6_waybel_9(A, B, C, D), B) & l1_waybel_0(k6_waybel_9(A, B, C, D), B)) ) ) ).
fof(dt_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k7_relset_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_l1_waybel_9, axiom,  (! [A] :  (l1_waybel_9(A) =>  (l1_pre_topc(A) & l1_orders_2(A)) ) ) ).
fof(dt_m1_connsp_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  =>  (! [C] :  (m1_connsp_2(C, A, B) => m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u1_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v1_funct_1(u1_waybel_0(A, B)) &  (v1_funct_2(u1_waybel_0(A, B), u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(u1_waybel_0(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) ) ) ) ).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (? [B] : l1_waybel_0(B, A)) ) ) ).
fof(existence_l1_waybel_9, axiom,  (? [A] : l1_waybel_9(A)) ).
fof(existence_m1_connsp_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  =>  (? [C] : m1_connsp_2(C, A, B)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(free_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (! [E, F, G, H] :  (g1_waybel_0(A, B, C, D)=g1_waybel_0(E, F, G, H) =>  (A=E &  (B=F &  (C=G & D=H) ) ) ) ) ) ) ).
fof(irreflexivity_r2_orders_2, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  ~ (r2_orders_2(A, B, B)) ) ) ).
fof(redefinition_k1_partfun1, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) )  => k1_partfun1(A, B, C, D, E, F)=k5_relat_1(E, F)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k2_yellow_6, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, u1_struct_0(B))))) )  & m1_subset_1(D, A)) ) )  => k2_yellow_6(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(redefinition_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => k3_funct_2(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k9_relat_1(C, D)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (l1_orders_2(B) =>  (g1_orders_2(u1_struct_0(A), u1_orders_2(A))=g1_orders_2(u1_struct_0(B), u1_orders_2(B)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(B)) =>  ( (C=E & D=F)  =>  ( (r1_orders_2(A, C, D) => r1_orders_2(B, E, F))  &  (r2_orders_2(A, C, D) => r2_orders_2(B, E, F)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t23_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, k1_relat_1(B)) => k1_funct_1(k5_relat_1(B, C), A)=k1_funct_1(C, k1_funct_1(B, A))) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
