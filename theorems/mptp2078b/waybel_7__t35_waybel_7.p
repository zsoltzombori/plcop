% Mizar problem: t35_waybel_7,waybel_7,1534,73 
fof(t35_waybel_7, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( (v1_tops_2(B, A) &  (v2_cantor_1(B, A) & m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) =>  (r1_tarski(C, D) =>  (r1_waybel_3(k2_yellow_1(u1_pre_topc(A)), C, D) <=>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(B)) =>  ~ ( (r1_tarski(D, k3_tarski(E)) &  (! [F] :  ( (v1_finset_1(F) & m1_subset_1(F, k1_zfmisc_1(E)))  =>  ~ (r1_tarski(C, k3_tarski(F))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d1_cantor_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (C=k1_cantor_1(A, B) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(A)) =>  (r2_hidden(D, C) <=>  (? [E] :  (m1_subset_1(E, k1_zfmisc_1(k1_zfmisc_1(A))) &  (r1_tarski(E, B) & D=k5_setfam_1(A, E)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d1_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (v1_tops_2(B, A) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(C, B) => v3_pre_topc(C, A)) ) ) ) ) ) ) ) ).
fof(d1_xboole_0, axiom,  (! [A] :  (v1_xboole_0(A) <=>  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ).
fof(d1_yellow_1, axiom,  (! [A] : k2_yellow_1(A)=g1_orders_2(A, k1_yellow_1(A))) ).
fof(d2_cantor_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (v1_cantor_1(B, A) <=> r1_tarski(u1_pre_topc(A), k1_cantor_1(u1_struct_0(A), B))) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d4_cantor_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (C=k2_cantor_1(A, B) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(A)) =>  (r2_hidden(D, C) <=>  (? [E] :  (m1_subset_1(E, k1_zfmisc_1(k1_zfmisc_1(A))) &  (r1_tarski(E, B) &  (v1_finset_1(E) & D=k8_setfam_1(A, E)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d4_tarski, axiom,  (! [A] :  (! [B] :  (B=k3_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(C, D) & r2_hidden(D, A)) ) ) ) ) ) ) ).
fof(d5_cantor_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (v2_cantor_1(B, A) <=>  (? [C] :  ( (v1_tops_2(C, A) &  (v1_cantor_1(C, A) & m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) )  & r1_tarski(C, k2_cantor_1(u1_struct_0(A), B))) ) ) ) ) ) ) ).
fof(d5_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d5_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v3_pre_topc(B, A) <=> r2_hidden(B, u1_pre_topc(A))) ) ) ) ) ).
fof(d5_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, B)=k4_xboole_0(A, B)) ) ) ).
fof(d5_waybel_7, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (! [C] :  (r2_waybel_7(A, B, C) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v3_pre_topc(D, A) & r2_hidden(C, D))  => r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_k1_cantor_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k1_cantor_1(A, B), k1_zfmisc_1(k1_zfmisc_1(A)))) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_wellord2, axiom,  (! [A] : v1_relat_1(k1_wellord2(A))) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k1_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_yellow_1, axiom,  (! [A] :  (v1_relat_2(k1_yellow_1(A)) &  (v4_relat_2(k1_yellow_1(A)) &  (v8_relat_2(k1_yellow_1(A)) &  (v1_partfun1(k1_yellow_1(A), A) & m1_subset_1(k1_yellow_1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ) ) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_cantor_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k2_cantor_1(A, B), k1_zfmisc_1(k1_zfmisc_1(A)))) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_yellow_1, axiom,  (! [A] :  (v1_orders_2(k2_yellow_1(A)) & l1_orders_2(k2_yellow_1(A))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k3_subset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k3_tarski, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k3_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(k3_yellow_0(A), u1_struct_0(A))) ) ).
fof(dt_k3_yellow_1, axiom,  (! [A] :  (v1_orders_2(k3_yellow_1(A)) & l1_orders_2(k3_yellow_1(A))) ) ).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k5_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k5_setfam_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k6_subset_1, axiom,  (! [A, B] : m1_subset_1(k6_subset_1(A, B), k1_zfmisc_1(A))) ).
fof(dt_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k7_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k8_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k8_setfam_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k9_setfam_1, axiom,  (! [A] : m1_subset_1(k9_setfam_1(A), k1_zfmisc_1(k1_zfmisc_1(A)))) ).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_o_4_0_waybel_7, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  &  ( (v1_tops_2(B, A) &  (v2_cantor_1(B, A) & m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) )  &  (m1_subset_1(C, k1_zfmisc_1(B)) &  (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(C))) ) ) )  => m1_subset_1(o_4_0_waybel_7(A, B, C, D), D)) ) ).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => m1_subset_1(u1_pre_topc(A), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(involutiveness_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, k3_subset_1(A, B))=B) ) ).
fof(redefinition_k1_yellow_1, axiom,  (! [A] : k1_yellow_1(A)=k1_wellord2(A)) ).
fof(redefinition_k5_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => k5_setfam_1(A, B)=k3_tarski(B)) ) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
fof(redefinition_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k7_subset_1(A, B, C)=k4_xboole_0(B, C)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(s1_wellord2__e4_49_2__waybel_7, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  &  ( (v1_tops_2(B, A) &  (v2_cantor_1(B, A) & m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) )  &  (m1_subset_1(C, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) &  ( ~ (v1_xboole_0(D))  &  (v2_waybel_0(D, k3_yellow_1(u1_struct_0(A))) &  (v13_waybel_0(D, k3_yellow_1(u1_struct_0(A))) &  (v3_waybel_7(D, k3_yellow_1(u1_struct_0(A))) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(k3_yellow_1(u1_struct_0(A)))))) ) ) ) ) ) )  =>  ( (! [E] :  ~ ( (r2_hidden(E, C) &  (! [F] :  ~ ( (r2_hidden(F, B) &  (r2_hidden(E, F) &  ~ (r2_hidden(F, D)) ) ) ) ) ) ) )  =>  (? [E] :  ( (v1_relat_1(E) & v1_funct_1(E))  &  (k1_relat_1(E)=C &  (r1_tarski(k2_relat_1(E), B) &  (! [F] :  (r2_hidden(F, C) =>  (r2_hidden(F, k1_funct_1(E, F)) &  ~ (r2_hidden(k1_funct_1(E, F), D)) ) ) ) ) ) ) ) ) ) ) ).
fof(s3_funct_1__e11_49_2__waybel_7, axiom,  (! [A, B, C, D, E] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  &  ( (v1_tops_2(B, A) &  (v2_cantor_1(B, A) & m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) )  &  (m1_subset_1(C, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) &  (m1_subset_1(D, k1_zfmisc_1(B)) &  (v1_finset_1(E) & m1_subset_1(E, k1_zfmisc_1(D))) ) ) ) )  =>  (? [F] :  ( (v1_relat_1(F) & v1_funct_1(F))  &  (k1_relat_1(F)=E &  (! [G] :  (r2_hidden(G, E) => k1_funct_1(F, G)=k6_subset_1(C, G)) ) ) ) ) ) ) ).
fof(t11_waybel_7, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) =>  (v13_waybel_0(B, k3_yellow_1(A)) <=>  (! [C] :  (! [D] :  ( (r1_tarski(C, D) &  (r1_tarski(D, A) & r2_hidden(C, B)) )  => r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(t13_waybel_7, axiom,  (! [A] :  (! [B] :  ( (v13_waybel_0(B, k3_yellow_1(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))))  =>  (v2_waybel_0(B, k3_yellow_1(A)) <=>  (! [C] :  (! [D] :  ( (r2_hidden(C, B) & r2_hidden(D, B))  => r2_hidden(k3_xboole_0(C, D), B)) ) ) ) ) ) ) ).
fof(t15_waybel_7, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v13_waybel_0(B, k3_yellow_1(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A))))) )  =>  (v2_waybel_0(B, k3_yellow_1(A)) <=>  (! [C] :  ( (v1_finset_1(C) & m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(A))))  =>  (r1_tarski(C, B) => r2_hidden(k8_setfam_1(A, C), B)) ) ) ) ) ) ) ).
fof(t18_yellow_1, axiom,  (! [A] : k3_yellow_0(k3_yellow_1(A))=k1_xboole_0) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t25_waybel_7, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, k3_yellow_1(A)) &  (v13_waybel_0(B, k3_yellow_1(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A))))) ) )  =>  (v2_waybel_7(B, k3_yellow_1(A)) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (r2_hidden(C, B) | r2_hidden(k6_subset_1(A, C), B)) ) ) ) ) ) ) ).
fof(t26_finset_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_finset_1(k1_relat_1(A)) => v1_finset_1(k2_relat_1(A))) ) ) ).
fof(t26_waybel_7, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v11_waybel_1(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, A) &  (v13_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  ( (v1_subset_1(B, u1_struct_0(A)) & v2_waybel_7(B, A))  <=> v3_waybel_7(B, A)) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_zfmisc_1, axiom, k3_tarski(k1_xboole_0)=k1_xboole_0).
fof(t32_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k7_subset_1(A, B, C)=k9_subset_1(A, B, k3_subset_1(A, C))) ) ) ) ) ).
fof(t34_waybel_3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) =>  (r1_waybel_3(k2_yellow_1(u1_pre_topc(A)), B, C) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ~ ( (v1_tops_2(D, A) &  (r1_tarski(C, k5_setfam_1(u1_struct_0(A), D)) &  (! [E] :  ( (v1_finset_1(E) & m1_subset_1(E, k1_zfmisc_1(D)))  =>  ~ (r1_tarski(B, k3_tarski(E))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t34_waybel_7, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k2_yellow_1(u1_pre_topc(A)))) =>  ( (r1_tarski(B, C) &  (! [D] :  ( ( ~ (v1_xboole_0(D))  &  (v2_waybel_0(D, k3_yellow_1(u1_struct_0(A))) &  (v13_waybel_0(D, k3_yellow_1(u1_struct_0(A))) &  (v3_waybel_7(D, k3_yellow_1(u1_struct_0(A))) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(k3_yellow_1(u1_struct_0(A)))))) ) ) )  =>  ~ ( (r2_hidden(B, D) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ~ ( (r2_hidden(E, C) & r2_waybel_7(A, D, E)) ) ) ) ) ) ) ) )  => r1_waybel_3(k2_yellow_1(u1_pre_topc(A)), B, C)) ) ) ) ) ) ) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t4_yellow_1, axiom,  (! [A] : k3_yellow_1(A)=k2_yellow_1(k9_setfam_1(A))) ).
fof(t58_setfam_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (r2_hidden(B, A) =>  (r2_hidden(B, k8_setfam_1(A, C)) <=>  (! [D] :  (r2_hidden(D, C) => r2_hidden(B, D)) ) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t78_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (v1_tops_2(B, A) <=> r1_tarski(B, u1_pre_topc(A))) ) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_waybel_7, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_yellow_0(A) & l1_orders_2(A)) ) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, A) &  (v13_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (v1_subset_1(B, u1_struct_0(A)) <=>  ~ (r2_hidden(k3_yellow_0(A), B)) ) ) ) ) ) ).
fof(t92_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => r1_tarski(A, k3_tarski(B))) ) ) ).
fof(cc11_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & v3_lattice3(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v24_waybel_0(A) & v25_waybel_0(A)) ) ) ) ) ) ).
fof(cc12_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & v25_waybel_0(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & v1_yellow_0(A)) ) ) ) ) ).
fof(cc1_finset_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_finset_1(A)) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(cc1_waybel_7, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, A) &  (v13_waybel_0(B, A) & v3_waybel_7(B, A)) ) )  =>  ( ~ (v1_xboole_0(B))  &  (v1_subset_1(B, u1_struct_0(A)) &  (v2_waybel_0(B, A) & v13_waybel_0(B, A)) ) ) ) ) ) ) ) ).
fof(cc8_waybel_1, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  & v11_waybel_1(A))  =>  ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) &  (v3_yellow_0(A) &  (v2_waybel_1(A) & v10_waybel_1(A)) ) ) ) ) ) ) ) ) ) ) ).
fof(fc1_waybel_7, axiom,  (! [A] :  (v1_orders_2(k3_yellow_1(A)) & v11_waybel_1(k3_yellow_1(A))) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc2_waybel_7, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  ( ~ (v7_struct_0(k3_yellow_1(A)))  & v1_orders_2(k3_yellow_1(A))) ) ) ).
fof(fc5_yellow_1, axiom,  (! [A] :  (v1_orders_2(k2_yellow_1(A)) &  (v3_orders_2(k2_yellow_1(A)) &  (v4_orders_2(k2_yellow_1(A)) & v5_orders_2(k2_yellow_1(A))) ) ) ) ).
fof(fc9_yellow_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  ( ~ (v7_struct_0(k2_yellow_1(u1_pre_topc(A))))  &  (v1_orders_2(k2_yellow_1(u1_pre_topc(A))) & v3_lattice3(k2_yellow_1(u1_pre_topc(A)))) ) ) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(rc5_waybel_7, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) &  ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, k3_yellow_1(A)) &  (v13_waybel_0(B, k3_yellow_1(A)) & v3_waybel_7(B, k3_yellow_1(A))) ) ) ) ) ) ) ).
