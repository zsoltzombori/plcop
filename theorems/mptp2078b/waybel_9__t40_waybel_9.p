% Mizar problem: t40_waybel_9,waybel_9,2284,46 
fof(t40_waybel_9, conjecture,  (! [A] :  ( (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) &  (v1_compts_1(A) & l1_waybel_9(A)) ) ) ) ) ) ) )  =>  ( (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => v5_pre_topc(k4_waybel_1(A, B), A, A)) )  => v3_yellow_0(A)) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(abstractness_v6_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v6_waybel_0(B, A) => B=g1_waybel_0(A, u1_struct_0(B), u1_orders_2(B), u1_waybel_0(A, B))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d1_waybel_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (l1_waybel_0(B, A) => k1_waybel_2(A, B)=k4_yellow_2(A, u1_waybel_0(A, B))) ) ) ) ).
fof(d2_waybel_9, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (l1_waybel_0(B, A) => k1_waybel_9(A, B)=k5_yellow_2(A, u1_waybel_0(A, B))) ) ) ) ).
fof(d3_waybel_9, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (l1_waybel_0(B, A) =>  (r1_waybel_9(A, B) <=> r1_yellow_0(A, k2_relset_1(u1_struct_0(B), u1_struct_0(A), u1_waybel_0(A, B)))) ) ) ) ) ).
fof(d4_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k3_struct_0(A)=k6_partfun1(u1_struct_0(A))) ) ).
fof(d4_waybel_9, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (l1_waybel_0(B, A) =>  (r2_waybel_9(A, B) <=> r2_yellow_0(A, k2_relset_1(u1_struct_0(B), u1_struct_0(A), u1_waybel_0(A, B)))) ) ) ) ) ).
fof(d4_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_yellow_0(A) <=>  (? [B] :  (m1_subset_1(B, u1_struct_0(A)) & r1_lattice3(A, u1_struct_0(A), B)) ) ) ) ) ).
fof(d5_waybel_9, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  ( (v6_waybel_0(B, A) & l1_waybel_0(B, A))  =>  (B=k2_waybel_9(A) <=>  (g1_orders_2(u1_struct_0(B), u1_orders_2(B))=g1_orders_2(u1_struct_0(A), u1_orders_2(A)) & u1_waybel_0(A, B)=k3_struct_0(A)) ) ) ) ) ) ).
fof(d5_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (v2_yellow_0(A) <=>  (? [B] :  (m1_subset_1(B, u1_struct_0(A)) & r2_lattice3(A, u1_struct_0(A), B)) ) ) ) ) ).
fof(d5_yellow_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (v1_relat_1(B) => k4_yellow_2(A, B)=k1_yellow_0(A, k2_relat_1(B))) ) ) ) ).
fof(d6_waybel_9, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  ( (v6_waybel_0(B, A) & l1_waybel_0(B, A))  =>  (B=k3_waybel_9(A) <=>  (u1_struct_0(B)=u1_struct_0(A) &  (u1_orders_2(B)=k3_relset_1(u1_struct_0(A), u1_struct_0(A), u1_orders_2(A)) & u1_waybel_0(A, B)=k3_struct_0(A)) ) ) ) ) ) ) ).
fof(d6_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (v3_yellow_0(A) <=>  (v1_yellow_0(A) & v2_yellow_0(A)) ) ) ) ).
fof(d6_yellow_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (v1_relat_1(B) => k5_yellow_2(A, B)=k2_yellow_0(A, k2_relat_1(B))) ) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (v6_waybel_0(g1_waybel_0(A, B, C, D), A) & l1_waybel_0(g1_waybel_0(A, B, C, D), A)) ) ) ).
fof(dt_k10_yellow_6, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  &  ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) ) )  => m1_subset_1(k10_yellow_6(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_waybel_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & l1_waybel_0(B, A))  => m1_subset_1(k1_waybel_2(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_waybel_9, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & l1_waybel_0(B, A))  => m1_subset_1(k1_waybel_9(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k1_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k2_relset_1(A, B, C), k1_zfmisc_1(B))) ) ).
fof(dt_k2_waybel_9, axiom,  (! [A] :  (l1_orders_2(A) =>  (v6_waybel_0(k2_waybel_9(A), A) & l1_waybel_0(k2_waybel_9(A), A)) ) ) ).
fof(dt_k2_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k2_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k3_relset_1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, A)))) ) ).
fof(dt_k3_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v1_funct_1(k3_struct_0(A)) &  (v1_funct_2(k3_struct_0(A), u1_struct_0(A), u1_struct_0(A)) & m1_subset_1(k3_struct_0(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ) ) ).
fof(dt_k3_waybel_9, axiom,  (! [A] :  (l1_orders_2(A) =>  (v6_waybel_0(k3_waybel_9(A), A) & l1_waybel_0(k3_waybel_9(A), A)) ) ) ).
fof(dt_k4_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => v1_relat_1(k4_relat_1(A))) ) ).
fof(dt_k4_waybel_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & m1_subset_1(B, u1_struct_0(A)))  =>  (v1_funct_1(k4_waybel_1(A, B)) &  (v1_funct_2(k4_waybel_1(A, B), u1_struct_0(A), u1_struct_0(A)) & m1_subset_1(k4_waybel_1(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ) ) ).
fof(dt_k4_yellow_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & v1_relat_1(B))  => m1_subset_1(k4_yellow_2(A, B), u1_struct_0(A))) ) ).
fof(dt_k5_yellow_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & v1_relat_1(B))  => m1_subset_1(k5_yellow_2(A, B), u1_struct_0(A))) ) ).
fof(dt_k6_partfun1, axiom,  (! [A] :  (v1_partfun1(k6_partfun1(A), A) & m1_subset_1(k6_partfun1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_l1_waybel_9, axiom,  (! [A] :  (l1_waybel_9(A) =>  (l1_pre_topc(A) & l1_orders_2(A)) ) ) ).
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
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(free_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (! [E, F, G, H] :  (g1_waybel_0(A, B, C, D)=g1_waybel_0(E, F, G, H) =>  (A=E &  (B=F &  (C=G & D=H) ) ) ) ) ) ) ).
fof(involutiveness_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_relset_1(A, B, k3_relset_1(A, B, C))=C) ) ).
fof(involutiveness_k4_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k4_relat_1(k4_relat_1(A))=A) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k2_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_relset_1(A, B, C)=k4_relat_1(C)) ) ).
fof(redefinition_k6_partfun1, axiom,  (! [A] : k6_partfun1(A)=k6_relat_1(A)) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t30_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( (B=k1_yellow_0(A, C) & r1_yellow_0(A, C))  =>  (r2_lattice3(A, C, B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, C, D) => r1_orders_2(A, B, D)) ) ) ) )  &  ( (r2_lattice3(A, C, B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, C, D) => r1_orders_2(A, B, D)) ) ) )  =>  (B=k1_yellow_0(A, C) & r1_yellow_0(A, C)) ) ) ) ) ) ) ) ).
fof(t31_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( (B=k2_yellow_0(A, C) & r2_yellow_0(A, C))  =>  (r1_lattice3(A, C, B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r1_lattice3(A, C, D) => r1_orders_2(A, D, B)) ) ) ) )  &  ( (r1_lattice3(A, C, B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r1_lattice3(A, C, D) => r1_orders_2(A, D, B)) ) ) )  =>  (B=k2_yellow_0(A, C) & r2_yellow_0(A, C)) ) ) ) ) ) ) ) ).
fof(t38_waybel_9, axiom,  (! [A] :  ( (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) &  (v1_compts_1(A) & l1_waybel_9(A)) ) ) ) ) ) ) )  =>  ( (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => v5_pre_topc(k4_waybel_1(A, B), A, A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (v10_waybel_0(B, A) =>  (r1_waybel_9(A, B) & r2_hidden(k1_waybel_2(A, B), k10_yellow_6(A, B))) ) ) ) ) ) ) ).
fof(t39_waybel_9, axiom,  (! [A] :  ( (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) &  (v1_compts_1(A) & l1_waybel_9(A)) ) ) ) ) ) ) )  =>  ( (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => v5_pre_topc(k4_waybel_1(A, B), A, A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (v11_waybel_0(B, A) =>  (r2_waybel_9(A, B) & r2_hidden(k1_waybel_9(A, B), k10_yellow_6(A, B))) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t71_relat_1, axiom,  (! [A] :  (k1_relat_1(k6_relat_1(A))=A & k2_relat_1(k6_relat_1(A))=A) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
