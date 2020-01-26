% Mizar problem: t34_waybel_7,waybel_7,1402,42 
fof(t34_waybel_7, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) =>  ( (r1_tarski(B, C) &  (! [D] :  ( ( ~ (v1_xboole_0(D))  &  (v2_waybel_0(D, k3_yellow_1(u1_struct_0(A))) &  (v13_waybel_0(D, k3_yellow_1(u1_struct_0(A))) &  (v3_waybel_7(D, k3_yellow_1(u1_struct_0(A))) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(k3_yellow_1(u1_struct_0(A)))))) ) ) )  =>  ~ ( (r2_hidden(B, D) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ~ ( (r2_hidden(E, C) & r2_waybel_7(A, D, E)) ) ) ) ) ) ) ) )  => r1_waybel_3(k2_yellow_1(u1_pre_topc(A)), B, C)) ) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d12_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) => k4_yellow_0(A)=k2_yellow_0(A, k1_xboole_0)) ) ).
fof(d16_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (C=k4_waybel_0(A, B) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, C) <=>  (? [E] :  (m1_subset_1(E, u1_struct_0(A)) &  (r1_orders_2(A, E, D) & r2_hidden(E, B)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d1_setfam_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (A=k1_xboole_0)  =>  (B=k1_setfam_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (! [D] :  (r2_hidden(D, A) => r2_hidden(C, D)) ) ) ) ) )  &  (A=k1_xboole_0 =>  (B=k1_setfam_1(A) <=> B=k1_xboole_0) ) ) ) ) ).
fof(d1_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (v1_tops_2(B, A) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(C, B) => v3_pre_topc(C, A)) ) ) ) ) ) ) ) ).
fof(d1_yellow_1, axiom,  (! [A] : k2_yellow_1(A)=g1_orders_2(A, k1_yellow_1(A))) ).
fof(d28_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => k12_waybel_0(A, B)=a_2_3_waybel_0(A, B)) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d4_tarski, axiom,  (! [A] :  (! [B] :  (B=k3_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(C, D) & r2_hidden(D, A)) ) ) ) ) ) ) ).
fof(d5_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d5_waybel_7, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (! [C] :  (r2_waybel_7(A, B, C) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v3_pre_topc(D, A) & r2_hidden(C, D))  => r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_k12_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k12_waybel_0(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_setfam_1, axiom, $true).
fof(dt_k1_wellord2, axiom,  (! [A] : v1_relat_1(k1_wellord2(A))) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k1_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_yellow_1, axiom,  (! [A] :  (v1_relat_2(k1_yellow_1(A)) &  (v4_relat_2(k1_yellow_1(A)) &  (v8_relat_2(k1_yellow_1(A)) &  (v1_partfun1(k1_yellow_1(A), A) & m1_subset_1(k1_yellow_1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ) ) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k2_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k2_yellow_1, axiom,  (! [A] :  (v1_orders_2(k2_yellow_1(A)) & l1_orders_2(k2_yellow_1(A))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_tarski, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k3_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(k3_yellow_0(A), u1_struct_0(A))) ) ).
fof(dt_k3_yellow_1, axiom,  (! [A] :  (v1_orders_2(k3_yellow_1(A)) & l1_orders_2(k3_yellow_1(A))) ) ).
fof(dt_k4_waybel_0, axiom,  (! [A, B] :  ( (l1_orders_2(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k4_waybel_0(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k4_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(k4_yellow_0(A), u1_struct_0(A))) ) ).
fof(dt_k5_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k5_setfam_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k6_subset_1, axiom,  (! [A, B] : m1_subset_1(k6_subset_1(A, B), k1_zfmisc_1(A))) ).
fof(dt_k9_setfam_1, axiom,  (! [A] : m1_subset_1(k9_setfam_1(A), k1_zfmisc_1(k1_zfmisc_1(A)))) ).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_o_2_2_waybel_7, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))))  => m1_subset_1(o_2_2_waybel_7(A, B), B)) ) ).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => m1_subset_1(u1_pre_topc(A), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fraenkel_a_2_3_waybel_0, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))))  =>  (r2_hidden(A, a_2_3_waybel_0(B, C)) <=>  (? [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(C)))  &  (A=k2_yellow_0(B, D) & r2_yellow_0(B, D)) ) ) ) ) ) ).
fof(fraenkel_a_3_3_waybel_7, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  &  (m1_subset_1(C, u1_struct_0(k2_yellow_1(u1_pre_topc(B)))) & m1_subset_1(D, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(B))))) )  =>  (r2_hidden(A, a_3_3_waybel_7(B, C, D)) <=>  (? [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(B))) &  (A=k6_subset_1(C, E) & r2_hidden(E, D)) ) ) ) ) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(redefinition_k1_yellow_1, axiom,  (! [A] : k1_yellow_1(A)=k1_wellord2(A)) ).
fof(redefinition_k5_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => k5_setfam_1(A, B)=k3_tarski(B)) ) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(s1_wellord2__e10_48_3__waybel_7, axiom,  (! [A, B, C, D, E] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  &  (m1_subset_1(B, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) &  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) &  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(k3_yellow_1(u1_struct_0(A))))) &  (v1_finset_1(E) & m1_subset_1(E, k1_zfmisc_1(D))) ) ) ) )  =>  ( (! [F] :  ~ ( (r2_hidden(F, E) &  (! [G] :  ~ ( (r2_hidden(G, C) & F=k6_subset_1(B, G)) ) ) ) ) )  =>  (? [F] :  ( (v1_relat_1(F) & v1_funct_1(F))  &  (k1_relat_1(F)=E &  (r1_tarski(k2_relat_1(F), C) &  (! [G] :  (r2_hidden(G, E) => G=k6_subset_1(B, k1_funct_1(F, G))) ) ) ) ) ) ) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t11_waybel_7, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) =>  (v13_waybel_0(B, k3_yellow_1(A)) <=>  (! [C] :  (! [D] :  ( (r1_tarski(C, D) &  (r1_tarski(D, A) & r2_hidden(C, B)) )  => r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(t13_waybel_7, axiom,  (! [A] :  (! [B] :  ( (v13_waybel_0(B, k3_yellow_1(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))))  =>  (v2_waybel_0(B, k3_yellow_1(A)) <=>  (! [C] :  (! [D] :  ( (r2_hidden(C, B) & r2_hidden(D, B))  => r2_hidden(k3_xboole_0(C, D), B)) ) ) ) ) ) ) ).
fof(t18_yellow_1, axiom,  (! [A] : k3_yellow_0(k3_yellow_1(A))=k1_xboole_0) ).
fof(t19_yellow_1, axiom,  (! [A] : k4_yellow_0(k3_yellow_1(A))=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t20_yellow_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))))  => k2_yellow_0(k3_yellow_1(A), B)=k1_setfam_1(B)) ) ) ).
fof(t26_finset_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_finset_1(k1_relat_1(A)) => v1_finset_1(k2_relat_1(A))) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t2_yellow_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, u1_struct_0(k3_yellow_1(A))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k3_yellow_1(A))) =>  (r3_orders_2(k3_yellow_1(A), B, C) <=> r1_tarski(B, C)) ) ) ) ) ) ).
fof(t2_zfmisc_1, axiom, k3_tarski(k1_xboole_0)=k1_xboole_0).
fof(t30_waybel_7, axiom,  (! [A] :  ( ( ~ (v7_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v11_waybel_1(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_subset_1(B, u1_struct_0(A)) &  (v2_waybel_0(B, A) &  (v13_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) ) )  =>  (? [C] :  ( ( ~ (v1_xboole_0(C))  &  (v2_waybel_0(C, A) &  (v13_waybel_0(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) )  &  (r1_tarski(B, C) & v3_waybel_7(C, A)) ) ) ) ) ) ) ).
fof(t35_waybel_3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) =>  ( (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ~ ( (v1_tops_2(D, A) &  (r1_tarski(C, k5_setfam_1(u1_struct_0(A), D)) &  (! [E] :  ( (v1_finset_1(E) & m1_subset_1(E, k1_zfmisc_1(D)))  =>  ~ (r1_tarski(B, k3_tarski(E))) ) ) ) ) ) ) )  => r1_waybel_3(k2_yellow_1(u1_pre_topc(A)), B, C)) ) ) ) ) ) ) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t4_yellow_1, axiom,  (! [A] : k3_yellow_1(A)=k2_yellow_1(k9_setfam_1(A))) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t62_waybel_0, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (r1_tarski(B, k4_waybel_0(A, k12_waybel_0(A, B))) &  (! [C] :  ( ( ~ (v1_xboole_0(C))  &  (v2_waybel_0(C, A) &  (v13_waybel_0(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (r1_tarski(B, C) => r1_tarski(k4_waybel_0(A, k12_waybel_0(A, B)), C)) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t79_xboole_1, axiom,  (! [A] :  (! [B] : r1_xboole_0(k4_xboole_0(A, B), B)) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_waybel_7, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_yellow_0(A) & l1_orders_2(A)) ) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, A) &  (v13_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (v1_subset_1(B, u1_struct_0(A)) <=>  ~ (r2_hidden(k3_yellow_0(A), B)) ) ) ) ) ) ).
fof(cc10_waybel_1, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  & v11_waybel_1(A))  =>  ( ~ (v2_struct_0(A))  & v9_waybel_1(A)) ) ) ) ).
fof(cc11_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & v3_lattice3(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v24_waybel_0(A) & v25_waybel_0(A)) ) ) ) ) ) ).
fof(cc12_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & v25_waybel_0(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & v1_yellow_0(A)) ) ) ) ) ).
fof(cc1_finset_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_finset_1(A)) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(cc1_waybel_7, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, A) &  (v13_waybel_0(B, A) & v3_waybel_7(B, A)) ) )  =>  ( ~ (v1_xboole_0(B))  &  (v1_subset_1(B, u1_struct_0(A)) &  (v2_waybel_0(B, A) & v13_waybel_0(B, A)) ) ) ) ) ) ) ) ).
fof(cc7_waybel_1, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  & v9_waybel_1(A))  =>  ( ~ (v2_struct_0(A))  & v2_yellow_0(A)) ) ) ) ).
fof(cc8_waybel_1, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  & v11_waybel_1(A))  =>  ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) &  (v3_yellow_0(A) &  (v2_waybel_1(A) & v10_waybel_1(A)) ) ) ) ) ) ) ) ) ) ) ).
fof(fc11_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v4_orders_2(A) & l1_orders_2(A)) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => v13_waybel_0(k4_waybel_0(A, B), A)) ) ).
fof(fc16_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) & l1_orders_2(A)) ) )  &  (v2_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  => v2_waybel_0(k4_waybel_0(A, B), A)) ) ).
fof(fc18_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v5_orders_2(A) &  (v2_yellow_0(A) & l1_orders_2(A)) ) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  ~ (v1_xboole_0(k12_waybel_0(A, B))) ) ) ).
fof(fc1_waybel_7, axiom,  (! [A] :  (v1_orders_2(k3_yellow_1(A)) & v11_waybel_1(k3_yellow_1(A))) ) ).
fof(fc22_waybel_0, axiom,  (! [A, B] :  ( ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => v2_waybel_0(k12_waybel_0(A, B), A)) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc2_waybel_7, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  ( ~ (v7_struct_0(k3_yellow_1(A)))  & v1_orders_2(k3_yellow_1(A))) ) ) ).
fof(fc5_yellow_1, axiom,  (! [A] :  (v1_orders_2(k2_yellow_1(A)) &  (v3_orders_2(k2_yellow_1(A)) &  (v4_orders_2(k2_yellow_1(A)) & v5_orders_2(k2_yellow_1(A))) ) ) ) ).
fof(fc7_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  =>  ~ (v1_xboole_0(k4_waybel_0(A, B))) ) ) ).
fof(fc9_yellow_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  ( ~ (v7_struct_0(k2_yellow_1(u1_pre_topc(A))))  &  (v1_orders_2(k2_yellow_1(u1_pre_topc(A))) & v3_lattice3(k2_yellow_1(u1_pre_topc(A)))) ) ) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(rc5_waybel_7, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) &  ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, k3_yellow_1(A)) &  (v13_waybel_0(B, k3_yellow_1(A)) & v3_waybel_7(B, k3_yellow_1(A))) ) ) ) ) ) ) ).
