% Mizar problem: t33_yellow19,yellow19,1473,27 
fof(t33_yellow19, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (v1_compts_1(A) <=>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, k3_yellow_1(k2_struct_0(A))) &  (v13_waybel_0(B, k3_yellow_1(k2_struct_0(A))) &  (v3_waybel_7(B, k3_yellow_1(k2_struct_0(A))) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A)))))) ) ) )  =>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) & r2_waybel_7(A, B, C)) ) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k12_lattice3(A, C, B)) ) ).
fof(commutativity_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k13_lattice3(A, B, C)=k13_lattice3(A, C, B)) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d10_setfam_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  ( ( ~ (B=k1_xboole_0)  => k8_setfam_1(A, B)=k6_setfam_1(A, B))  &  (B=k1_xboole_0 => k8_setfam_1(A, B)=A) ) ) ) ) ).
fof(d12_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) => k4_yellow_0(A)=k2_yellow_0(A, k1_xboole_0)) ) ).
fof(d16_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (C=k4_waybel_0(A, B) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, C) <=>  (? [E] :  (m1_subset_1(E, u1_struct_0(A)) &  (r1_orders_2(A, E, D) & r2_hidden(E, B)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d1_setfam_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (A=k1_xboole_0)  =>  (B=k1_setfam_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (! [D] :  (r2_hidden(D, A) => r2_hidden(C, D)) ) ) ) ) )  &  (A=k1_xboole_0 =>  (B=k1_setfam_1(A) <=> B=k1_xboole_0) ) ) ) ) ).
fof(d28_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => k12_waybel_0(A, B)=a_2_3_waybel_0(A, B)) ) ) ) ).
fof(d2_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (v2_tops_2(B, A) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(C, B) => v4_pre_topc(C, A)) ) ) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d3_finset_1, axiom,  (! [A] :  (v3_finset_1(A) <=>  ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ ( ( ~ (B=k1_xboole_0)  &  (r1_tarski(B, A) &  (v1_finset_1(B) & k1_setfam_1(B)=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(d3_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k2_struct_0(A)=u1_struct_0(A)) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d5_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, B)=k4_xboole_0(A, B)) ) ) ).
fof(d5_waybel_7, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (! [C] :  (r2_waybel_7(A, B, C) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v3_pre_topc(D, A) & r2_hidden(C, D))  => r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_k10_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k10_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k11_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k11_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k12_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k12_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k12_waybel_0(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k13_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_setfam_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k2_pre_topc(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k2_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k2_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k3_subset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k3_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(k3_yellow_0(A), u1_struct_0(A))) ) ).
fof(dt_k3_yellow_1, axiom,  (! [A] :  (v1_orders_2(k3_yellow_1(A)) & l1_orders_2(k3_yellow_1(A))) ) ).
fof(dt_k4_waybel_0, axiom,  (! [A, B] :  ( (l1_orders_2(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k4_waybel_0(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k4_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(k4_yellow_0(A), u1_struct_0(A))) ) ).
fof(dt_k6_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k6_setfam_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k6_subset_1, axiom,  (! [A, B] : m1_subset_1(k6_subset_1(A, B), k1_zfmisc_1(A))) ).
fof(dt_k8_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k8_setfam_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k9_setfam_1, axiom,  (! [A] : m1_subset_1(k9_setfam_1(A), k1_zfmisc_1(k1_zfmisc_1(A)))) ).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(A))) )  =>  (! [C] :  (m2_subset_1(C, A, B) => m1_subset_1(C, A)) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_o_2_12_yellow19, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  &  ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, k3_yellow_1(k2_struct_0(A))) &  (v13_waybel_0(B, k3_yellow_1(k2_struct_0(A))) &  (v3_waybel_7(B, k3_yellow_1(k2_struct_0(A))) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(A)))))) ) ) ) )  => m2_subset_1(o_2_12_yellow19(A, B), u1_struct_0(k3_yellow_1(k2_struct_0(A))), B)) ) ).
fof(dt_o_2_9_yellow19, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))))  => m1_subset_1(o_2_9_yellow19(A, B), k6_setfam_1(u1_struct_0(A), B))) ) ).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(A))) )  =>  (? [C] : m2_subset_1(C, A, B)) ) ) ).
fof(fraenkel_a_2_11_yellow19, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  &  ( ~ (v1_xboole_0(C))  &  (v2_waybel_0(C, k3_yellow_1(k2_struct_0(B))) &  (v13_waybel_0(C, k3_yellow_1(k2_struct_0(B))) &  (v3_waybel_7(C, k3_yellow_1(k2_struct_0(B))) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(k3_yellow_1(k2_struct_0(B)))))) ) ) ) )  =>  (r2_hidden(A, a_2_11_yellow19(B, C)) <=>  (? [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) &  (A=k2_pre_topc(B, D) & r2_hidden(D, C)) ) ) ) ) ) ).
fof(fraenkel_a_2_3_waybel_0, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))))  =>  (r2_hidden(A, a_2_3_waybel_0(B, C)) <=>  (? [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(C)))  &  (A=k2_yellow_0(B, D) & r2_yellow_0(B, D)) ) ) ) ) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(involutiveness_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, k3_subset_1(A, B))=B) ) ).
fof(projectivity_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => k2_pre_topc(A, k2_pre_topc(A, B))=k2_pre_topc(A, B)) ) ).
fof(redefinition_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k11_lattice3(A, B, C)) ) ).
fof(redefinition_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k13_lattice3(A, B, C)=k10_lattice3(A, B, C)) ) ).
fof(redefinition_k6_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => k6_setfam_1(A, B)=k1_setfam_1(B)) ) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(redefinition_m2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(A))) )  =>  (! [C] :  (m2_subset_1(C, A, B) <=> m1_subset_1(C, B)) ) ) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t11_waybel_7, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) =>  (v13_waybel_0(B, k3_yellow_1(A)) <=>  (! [C] :  (! [D] :  ( (r1_tarski(C, D) &  (r1_tarski(D, A) & r2_hidden(C, B)) )  => r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(t13_compts_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (v1_compts_1(A) <=>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ~ ( (v3_finset_1(B) &  (v2_tops_2(B, A) & k6_setfam_1(u1_struct_0(A), B)=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(t15_waybel_7, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v13_waybel_0(B, k3_yellow_1(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A))))) )  =>  (v2_waybel_0(B, k3_yellow_1(A)) <=>  (! [C] :  ( (v1_finset_1(C) & m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(A))))  =>  (r1_tarski(C, B) => r2_hidden(k8_setfam_1(A, C), B)) ) ) ) ) ) ) ).
fof(t17_yellow_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, u1_struct_0(k3_yellow_1(A))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k3_yellow_1(A))) =>  (k13_lattice3(k3_yellow_1(A), B, C)=k2_xboole_0(B, C) & k12_lattice3(k3_yellow_1(A), B, C)=k3_xboole_0(B, C)) ) ) ) ) ) ).
fof(t18_yellow_1, axiom,  (! [A] : k3_yellow_0(k3_yellow_1(A))=k1_xboole_0) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t20_yellow_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))))  => k2_yellow_0(k3_yellow_1(A), B)=k1_setfam_1(B)) ) ) ).
fof(t22_yellow_5, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v5_orders_2(A) &  (v1_yellow_0(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (r1_orders_2(A, B, k3_yellow_0(A)) => B=k3_yellow_0(A)) ) ) ) ) ).
fof(t25_waybel_7, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, k3_yellow_1(A)) &  (v13_waybel_0(B, k3_yellow_1(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A))))) ) )  =>  (v2_waybel_7(B, k3_yellow_1(A)) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (r2_hidden(C, B) | r2_hidden(k6_subset_1(A, C), B)) ) ) ) ) ) ) ).
fof(t26_waybel_7, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v11_waybel_1(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, A) &  (v13_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  ( (v1_subset_1(B, u1_struct_0(A)) & v2_waybel_7(B, A))  <=> v3_waybel_7(B, A)) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t2_yellow19, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_subset_1(B, u1_struct_0(k3_yellow_1(A))) &  (v2_waybel_0(B, k3_yellow_1(A)) &  (v13_waybel_0(B, k3_yellow_1(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A))))) ) ) )  =>  (! [C] :  ~ ( (r2_hidden(C, B) & v1_xboole_0(C)) ) ) ) ) ) ) ).
fof(t30_waybel_7, axiom,  (! [A] :  ( ( ~ (v7_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v11_waybel_1(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_subset_1(B, u1_struct_0(A)) &  (v2_waybel_0(B, A) &  (v13_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) ) )  =>  (? [C] :  ( ( ~ (v1_xboole_0(C))  &  (v2_waybel_0(C, A) &  (v13_waybel_0(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) )  &  (r1_tarski(B, C) & v3_waybel_7(C, A)) ) ) ) ) ) ) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t41_waybel_0, axiom,  (! [A] :  ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  =>  (! [B] :  ( (v13_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v2_waybel_0(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r2_hidden(C, B) & r2_hidden(D, B))  => r2_hidden(k12_lattice3(A, C, D), B)) ) ) ) ) ) ) ) ) ) ).
fof(t48_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => r1_tarski(B, k2_pre_topc(A, B))) ) ) ) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t4_waybel_7, axiom,  (! [A] : u1_struct_0(k3_yellow_1(A))=k9_setfam_1(A)) ).
fof(t52_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v4_pre_topc(B, A) => k2_pre_topc(A, B)=B)  &  ( (v2_pre_topc(A) & k2_pre_topc(A, B)=B)  => v4_pre_topc(B, A)) ) ) ) ) ) ).
fof(t54_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r2_hidden(C, k2_pre_topc(A, B)) <=>  ( ~ (v2_struct_0(A))  &  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (v3_pre_topc(D, A) &  (r2_hidden(C, D) & r1_xboole_0(B, D)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t5_waybel_7, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v5_orders_2(A) &  (v3_yellow_0(A) & l1_orders_2(A)) ) )  =>  (v7_struct_0(A) <=> k4_yellow_0(A)=k3_yellow_0(A)) ) ) ).
fof(t62_waybel_0, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (r1_tarski(B, k4_waybel_0(A, k12_waybel_0(A, B))) &  (! [C] :  ( ( ~ (v1_xboole_0(C))  &  (v2_waybel_0(C, A) &  (v13_waybel_0(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (r1_tarski(B, C) => r1_tarski(k4_waybel_0(A, k12_waybel_0(A, B)), C)) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_waybel_7, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_yellow_0(A) & l1_orders_2(A)) ) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, A) &  (v13_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (v1_subset_1(B, u1_struct_0(A)) <=>  ~ (r2_hidden(k3_yellow_0(A), B)) ) ) ) ) ) ).
fof(cc11_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & v3_lattice3(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v24_waybel_0(A) & v25_waybel_0(A)) ) ) ) ) ) ).
fof(cc14_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v5_orders_2(A) & v25_waybel_0(A)) ) )  =>  ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v5_orders_2(A) & v2_lattice3(A)) ) ) ) ) ) ).
fof(cc15_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v5_orders_2(A) &  (v2_yellow_0(A) & v25_waybel_0(A)) ) ) )  =>  ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & v2_yellow_0(A)) ) ) ) ) ) ) ).
fof(cc1_finset_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_finset_1(A)) ) ).
fof(cc1_waybel_7, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, A) &  (v13_waybel_0(B, A) & v3_waybel_7(B, A)) ) )  =>  ( ~ (v1_xboole_0(B))  &  (v1_subset_1(B, u1_struct_0(A)) &  (v2_waybel_0(B, A) & v13_waybel_0(B, A)) ) ) ) ) ) ) ) ).
fof(cc3_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  ( ( ~ (v2_struct_0(A))  & v3_lattice3(A))  =>  ( ~ (v2_struct_0(A))  & v3_yellow_0(A)) ) ) ) ).
fof(cc4_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (v3_yellow_0(A) =>  (v1_yellow_0(A) & v2_yellow_0(A)) ) ) ) ).
fof(fc11_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v4_orders_2(A) & l1_orders_2(A)) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => v13_waybel_0(k4_waybel_0(A, B), A)) ) ).
fof(fc12_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ~ (v1_subset_1(k2_struct_0(A), u1_struct_0(A))) ) ) ).
fof(fc16_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) & l1_orders_2(A)) ) )  &  (v2_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  => v2_waybel_0(k4_waybel_0(A, B), A)) ) ).
fof(fc18_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v5_orders_2(A) &  (v2_yellow_0(A) & l1_orders_2(A)) ) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  ~ (v1_xboole_0(k12_waybel_0(A, B))) ) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc1_tops_1, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => v4_pre_topc(k2_pre_topc(A, B), A)) ) ).
fof(fc1_waybel_7, axiom,  (! [A] :  (v1_orders_2(k3_yellow_1(A)) & v11_waybel_1(k3_yellow_1(A))) ) ).
fof(fc22_waybel_0, axiom,  (! [A, B] :  ( ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => v2_waybel_0(k12_waybel_0(A, B), A)) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc2_waybel_7, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  ( ~ (v7_struct_0(k3_yellow_1(A)))  & v1_orders_2(k3_yellow_1(A))) ) ) ).
fof(fc3_tops_1, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  &  (v3_pre_topc(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  => v4_pre_topc(k3_subset_1(u1_struct_0(A), B), A)) ) ).
fof(fc7_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  =>  ~ (v1_xboole_0(k4_waybel_0(A, B))) ) ) ).
fof(fc7_yellow_1, axiom,  (! [A] :  ( ~ (v2_struct_0(k3_yellow_1(A)))  &  (v1_orders_2(k3_yellow_1(A)) &  (v3_orders_2(k3_yellow_1(A)) &  (v4_orders_2(k3_yellow_1(A)) & v5_orders_2(k3_yellow_1(A))) ) ) ) ) ).
fof(fc8_yellow_1, axiom,  (! [A] :  (v1_orders_2(k3_yellow_1(A)) & v3_lattice3(k3_yellow_1(A))) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(rc5_waybel_7, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k3_yellow_1(A)))) &  ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, k3_yellow_1(A)) &  (v13_waybel_0(B, k3_yellow_1(A)) & v3_waybel_7(B, k3_yellow_1(A))) ) ) ) ) ) ) ).
