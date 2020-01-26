% Mizar problem: t49_yellow_6,yellow_6,2337,33 
fof(t49_yellow_6, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  (m4_yellow_6(B, A) => r1_tarski(B, k12_yellow_6(k13_yellow_6(A, B)))) ) ) ) ).
fof(abstractness_v1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_pre_topc(A) => A=g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) ) ) ).
fof(abstractness_v6_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v6_waybel_0(B, A) => B=g1_waybel_0(A, u1_struct_0(B), u1_orders_2(B), u1_waybel_0(A, B))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d11_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (r1_waybel_0(A, B, C) <=>  (? [D] :  (m1_subset_1(D, u1_struct_0(B)) &  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (r1_orders_2(B, D, E) => r2_hidden(k2_waybel_0(A, B, E), C)) ) ) ) ) ) ) ) ) ) ) ).
fof(d14_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  (B=k6_yellow_6(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  ( ( ~ (v2_struct_0(D))  &  (v4_orders_2(D) &  (v6_waybel_0(D, A) &  (v7_waybel_0(D) & l1_waybel_0(D, A)) ) ) )  &  (D=C & r2_hidden(u1_struct_0(D), k1_yellow_6(u1_struct_0(A)))) ) ) ) ) ) ) ) ) ).
fof(d18_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (C=k10_yellow_6(A, B) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, C) <=>  (! [E] :  (m1_connsp_2(E, A, D) => r1_waybel_0(A, B, E)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d1_connsp_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (m1_connsp_2(C, A, B) <=> r2_hidden(B, k1_tops_1(A, C))) ) ) ) ) ) ) ).
fof(d21_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  (m4_yellow_6(B, A) <=> r1_tarski(B, k2_zfmisc_1(k6_yellow_6(A), u1_struct_0(A)))) ) ) ) ).
fof(d22_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m4_yellow_6(B, A) =>  (B=k12_yellow_6(A) <=>  (! [C] :  ( ( ~ (v2_struct_0(C))  &  (v4_orders_2(C) &  (v7_waybel_0(C) & l1_waybel_0(C, A)) ) )  =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(k4_tarski(C, D), B) <=>  (r2_hidden(C, k6_yellow_6(A)) & r2_hidden(D, k10_yellow_6(A, C))) ) ) ) ) ) ) ) ) ) ) ).
fof(d27_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  (m4_yellow_6(B, A) =>  (! [C] :  ( (v1_pre_topc(C) & l1_pre_topc(C))  =>  (C=k13_yellow_6(A, B) <=>  (u1_struct_0(C)=u1_struct_0(A) & u1_pre_topc(C)=a_2_1_yellow_6(A, B)) ) ) ) ) ) ) ) ).
fof(d3_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), A) => r2_hidden(k4_tarski(C, D), B)) ) ) ) ) ) ) ).
fof(d5_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v3_pre_topc(B, A) <=> r2_hidden(B, u1_pre_topc(A))) ) ) ) ) ).
fof(d8_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(B)) => k2_waybel_0(A, B, C)=k3_funct_2(u1_struct_0(B), u1_struct_0(A), u1_waybel_0(A, B), C)) ) ) ) ) ) ).
fof(dt_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v1_pre_topc(g1_pre_topc(A, B)) & l1_pre_topc(g1_pre_topc(A, B))) ) ) ).
fof(dt_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (v6_waybel_0(g1_waybel_0(A, B, C, D), A) & l1_waybel_0(g1_waybel_0(A, B, C, D), A)) ) ) ).
fof(dt_k10_yellow_6, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  &  ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) ) )  => m1_subset_1(k10_yellow_6(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k12_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  => m4_yellow_6(k12_yellow_6(A), A)) ) ).
fof(dt_k13_yellow_6, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  & m4_yellow_6(B, A))  =>  (v1_pre_topc(k13_yellow_6(A, B)) & l1_pre_topc(k13_yellow_6(A, B))) ) ) ).
fof(dt_k1_classes1, axiom, $true).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_tops_1, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k1_tops_1(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_6, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_waybel_0, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  &  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  & m1_subset_1(C, u1_struct_0(B))) )  => m1_subset_1(k2_waybel_0(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => m1_subset_1(k3_funct_2(A, B, C, D), B)) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k5_classes1, axiom, $true).
fof(dt_k6_yellow_6, axiom, $true).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_m1_connsp_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  =>  (! [C] :  (m1_connsp_2(C, A, B) => m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m4_yellow_6, axiom, $true).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => m1_subset_1(u1_pre_topc(A), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u1_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v1_funct_1(u1_waybel_0(A, B)) &  (v1_funct_2(u1_waybel_0(A, B), u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(u1_waybel_0(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) ) ) ) ).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (? [B] : l1_waybel_0(B, A)) ) ) ).
fof(existence_m1_connsp_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  =>  (? [C] : m1_connsp_2(C, A, B)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m4_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (? [B] : m4_yellow_6(B, A)) ) ) ).
fof(fraenkel_a_2_1_yellow_6, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  & l1_struct_0(B))  & m4_yellow_6(C, B))  =>  (r2_hidden(A, a_2_1_yellow_6(B, C)) <=>  (? [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) &  (A=D &  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (r2_hidden(E, D) =>  (! [F] :  ( ( ~ (v2_struct_0(F))  &  (v4_orders_2(F) &  (v7_waybel_0(F) & l1_waybel_0(F, B)) ) )  =>  (r2_hidden(k4_tarski(F, E), C) => r1_waybel_0(B, F, D)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(free_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C, D] :  (g1_pre_topc(A, B)=g1_pre_topc(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(free_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (! [E, F, G, H] :  (g1_waybel_0(A, B, C, D)=g1_waybel_0(E, F, G, H) =>  (A=E &  (B=F &  (C=G & D=H) ) ) ) ) ) ) ).
fof(l53_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_struct_0(B))  =>  (u1_struct_0(A)=u1_struct_0(B) => k6_yellow_6(A)=k6_yellow_6(B)) ) ) ) ) ).
fof(projectivity_k1_tops_1, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => k1_tops_1(A, k1_tops_1(A, B))=k1_tops_1(A, B)) ) ).
fof(redefinition_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => k3_funct_2(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t44_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => r1_tarski(k1_tops_1(A, B), B)) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (! [D] :  (r1_tarski(C, D) =>  ( (r1_waybel_0(A, B, C) => r1_waybel_0(A, B, D))  &  (r2_waybel_0(A, B, C) => r2_waybel_0(A, B, D)) ) ) ) ) ) ) ) ) ).
fof(t9_domain_1, axiom,  (! [A] :  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( ~ (v1_xboole_0(C))  =>  ~ ( (r2_hidden(A, k2_zfmisc_1(B, C)) &  (! [D] :  (m1_subset_1(D, B) =>  (! [E] :  (m1_subset_1(E, C) =>  ~ (A=k4_tarski(D, E)) ) ) ) ) ) ) ) ) ) ) ) ).
