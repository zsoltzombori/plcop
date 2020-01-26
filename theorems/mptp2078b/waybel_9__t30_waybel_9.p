% Mizar problem: t30_waybel_9,waybel_9,1477,55 
fof(t30_waybel_9, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v1_compts_1(A) & l1_pre_topc(A)) ) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) & r3_waybel_9(A, B, C)) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_finsub_1, axiom,  (! [A, B, C] :  ( ( ( ~ (v1_xboole_0(A))  & v4_finsub_1(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k3_finsub_1(A, B, C)=k3_finsub_1(A, C, B)) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d11_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (r1_waybel_0(A, B, C) <=>  (? [D] :  (m1_subset_1(D, u1_struct_0(B)) &  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (r1_orders_2(B, D, E) => r2_hidden(k2_waybel_0(A, B, E), C)) ) ) ) ) ) ) ) ) ) ) ).
fof(d13_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (C=k2_pre_topc(A, B) <=>  (! [D] :  (r2_hidden(D, u1_struct_0(A)) =>  (r2_hidden(D, C) <=>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (v3_pre_topc(E, A) &  (r2_hidden(D, E) & r1_xboole_0(B, E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d1_connsp_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (m1_connsp_2(C, A, B) <=> r2_hidden(B, k1_tops_1(A, C))) ) ) ) ) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( (B=k1_xboole_0 => A=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, B, C)) )  &  (B=k1_xboole_0 =>  (A=k1_xboole_0 |  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(d1_setfam_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (A=k1_xboole_0)  =>  (B=k1_setfam_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (! [D] :  (r2_hidden(D, A) => r2_hidden(C, D)) ) ) ) ) )  &  (A=k1_xboole_0 =>  (B=k1_setfam_1(A) <=> B=k1_xboole_0) ) ) ) ) ).
fof(d1_xboole_0, axiom,  (! [A] :  (v1_xboole_0(A) <=>  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ).
fof(d2_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (v2_tops_2(B, A) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(C, B) => v4_pre_topc(C, A)) ) ) ) ) ) ) ) ).
fof(d3_finset_1, axiom,  (! [A] :  (v3_finset_1(A) <=>  ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ ( ( ~ (B=k1_xboole_0)  &  (r1_tarski(B, A) &  (v1_finset_1(B) & k1_setfam_1(B)=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(d3_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k2_struct_0(A)=u1_struct_0(A)) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(d6_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (v7_waybel_0(A) <=> v1_waybel_0(k2_struct_0(A), A)) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(d9_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r2_lattice3(A, B, C) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, B) => r1_orders_2(A, D, C)) ) ) ) ) ) ) ) ) ).
fof(d9_waybel_9, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r3_waybel_9(A, B, C) <=>  (! [D] :  (m1_connsp_2(D, A, C) => r2_waybel_0(A, B, D)) ) ) ) ) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_setfam_1, axiom, $true).
fof(dt_k1_tops_1, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k1_tops_1(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k2_pre_topc(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k2_relset_1(A, B, C), k1_zfmisc_1(B))) ) ).
fof(dt_k2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k2_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_waybel_0, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  &  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  & m1_subset_1(C, u1_struct_0(B))) )  => m1_subset_1(k2_waybel_0(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_finsub_1, axiom,  (! [A, B, C] :  ( ( ( ~ (v1_xboole_0(A))  & v4_finsub_1(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => m1_subset_1(k3_finsub_1(A, B, C), A)) ) ).
fof(dt_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => m1_subset_1(k3_funct_2(A, B, C, D), B)) ) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k6_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k6_setfam_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k6_subset_1, axiom,  (! [A, B] : m1_subset_1(k6_subset_1(A, B), k1_zfmisc_1(A))) ).
fof(dt_k9_setfam_1, axiom,  (! [A] : m1_subset_1(k9_setfam_1(A), k1_zfmisc_1(k1_zfmisc_1(A)))) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_m1_connsp_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  =>  (! [C] :  (m1_connsp_2(C, A, B) => m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_o_1_0_waybel_9, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  => m1_subset_1(o_1_0_waybel_9(A), A)) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u1_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v1_funct_1(u1_waybel_0(A, B)) &  (v1_funct_2(u1_waybel_0(A, B), u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(u1_waybel_0(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) ) ) ) ).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (? [B] : l1_waybel_0(B, A)) ) ) ).
fof(existence_m1_connsp_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  =>  (? [C] : m1_connsp_2(C, A, B)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fraenkel_a_2_6_waybel_9, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) &  (v8_pre_topc(B) &  (v1_compts_1(B) & l1_pre_topc(B)) ) ) )  &  ( ~ (v2_struct_0(C))  &  (v4_orders_2(C) &  (v7_waybel_0(C) & l1_waybel_0(C, B)) ) ) )  =>  (r2_hidden(A, a_2_6_waybel_9(B, C)) <=>  (? [D] :  (m1_subset_1(D, u1_struct_0(C)) &  (A=D &  (? [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(B))) &  (? [F] :  (m1_subset_1(F, k1_zfmisc_1(u1_struct_0(B))) &  (E=a_3_1_waybel_9(B, C, D) & F=k2_pre_topc(B, E)) ) ) ) ) ) ) ) ) ) ) ).
fof(fraenkel_a_3_1_waybel_9, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) &  (v8_pre_topc(B) &  (v1_compts_1(B) & l1_pre_topc(B)) ) ) )  &  ( ( ~ (v2_struct_0(C))  &  (v4_orders_2(C) &  (v7_waybel_0(C) & l1_waybel_0(C, B)) ) )  & m1_subset_1(D, u1_struct_0(C))) )  =>  (r2_hidden(A, a_3_1_waybel_9(B, C, D)) <=>  (? [E] :  (m1_subset_1(E, u1_struct_0(C)) &  (A=k2_waybel_0(B, C, E) & r1_orders_2(C, D, E)) ) ) ) ) ) ).
fof(idempotence_k3_finsub_1, axiom,  (! [A, B, C] :  ( ( ( ~ (v1_xboole_0(A))  & v4_finsub_1(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k3_finsub_1(A, B, B)=B) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(projectivity_k1_tops_1, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => k1_tops_1(A, k1_tops_1(A, B))=k1_tops_1(A, B)) ) ).
fof(projectivity_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => k2_pre_topc(A, k2_pre_topc(A, B))=k2_pre_topc(A, B)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k2_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_k3_finsub_1, axiom,  (! [A, B, C] :  ( ( ( ~ (v1_xboole_0(A))  & v4_finsub_1(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k3_finsub_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(redefinition_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => k3_funct_2(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(redefinition_k6_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => k6_setfam_1(A, B)=k1_setfam_1(B)) ) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(s3_funct_2__e17_83_2__waybel_9, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v1_compts_1(A) & l1_pre_topc(A)) ) ) )  &  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  &  ( ~ (v1_xboole_0(C))  &  ~ (v1_xboole_0(D)) ) ) )  =>  ( (! [E] :  (m1_subset_1(E, C) =>  (? [F] :  (m1_subset_1(F, D) &  (? [G] :  (m1_subset_1(G, u1_struct_0(B)) &  (? [H] :  (m1_subset_1(H, k1_zfmisc_1(u1_struct_0(A))) &  (? [I] :  (m1_subset_1(I, k1_zfmisc_1(u1_struct_0(A))) &  (G=F &  (I=E &  (H=a_3_1_waybel_9(A, B, G) & I=k2_pre_topc(A, H)) ) ) ) ) ) ) ) ) ) ) ) )  =>  (? [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, C, D) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(C, D)))) )  &  (! [F] :  (m1_subset_1(F, C) =>  (? [J] :  (m1_subset_1(J, u1_struct_0(B)) &  (? [K] :  (m1_subset_1(K, k1_zfmisc_1(u1_struct_0(A))) &  (? [L] :  (m1_subset_1(L, k1_zfmisc_1(u1_struct_0(A))) &  (J=k3_funct_2(C, D, E, F) &  (L=F &  (K=a_3_1_waybel_9(A, B, J) & L=k2_pre_topc(A, K)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(s3_funct_2__e2_83__waybel_9, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v1_compts_1(A) & l1_pre_topc(A)) ) ) )  &  ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) ) )  =>  ( (! [C] :  (m1_subset_1(C, u1_struct_0(B)) =>  (? [D] :  (m1_subset_1(D, k9_setfam_1(u1_struct_0(A))) &  (? [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) &  (? [F] :  (m1_subset_1(F, u1_struct_0(B)) &  (F=C &  (E=a_3_1_waybel_9(A, B, F) & D=k2_pre_topc(A, E)) ) ) ) ) ) ) ) ) )  =>  (? [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(B), k9_setfam_1(u1_struct_0(A))) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), k9_setfam_1(u1_struct_0(A)))))) )  &  (! [D] :  (m1_subset_1(D, u1_struct_0(B)) =>  (? [G] :  (m1_subset_1(G, k1_zfmisc_1(u1_struct_0(A))) &  (? [H] :  (m1_subset_1(H, u1_struct_0(B)) &  (H=D &  (G=a_3_1_waybel_9(A, B, H) & k3_funct_2(u1_struct_0(B), k9_setfam_1(u1_struct_0(A)), C, D)=k2_pre_topc(A, G)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t10_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (r2_waybel_0(A, B, C) <=>  ~ (r1_waybel_0(A, B, k6_subset_1(u1_struct_0(A), C))) ) ) ) ) ) ) ).
fof(t13_compts_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (v1_compts_1(A) <=>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ~ ( (v3_finset_1(B) &  (v2_tops_2(B, A) & k6_setfam_1(u1_struct_0(A), B)=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v4_orders_2(A) & l1_orders_2(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( ( ~ (v1_xboole_0(B))  & v1_waybel_0(B, A))  <=>  (! [C] :  ( (v1_finset_1(C) & m1_subset_1(C, k1_zfmisc_1(B)))  =>  (? [D] :  (m1_subset_1(D, u1_struct_0(A)) &  (r2_hidden(D, B) & r2_lattice3(A, C, D)) ) ) ) ) ) ) ) ) ) ).
fof(t26_finset_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_finset_1(k1_relat_1(A)) => v1_finset_1(k2_relat_1(A))) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t2_xboole_1, axiom,  (! [A] : r1_tarski(k1_xboole_0, A)) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t44_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => r1_tarski(k1_tops_1(A, B), B)) ) ) ) ).
fof(t48_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => r1_tarski(B, k2_pre_topc(A, B))) ) ) ) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t63_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_xboole_0(B, C))  => r1_xboole_0(A, C)) ) ) ) ).
fof(t65_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (k1_relat_1(A)=k1_xboole_0 <=> k2_relat_1(A)=k1_xboole_0) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
