% Mizar problem: t27_connsp_2,connsp_2,765,69 
fof(t27_connsp_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  ( (v1_connsp_2(A) & v10_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  (v4_pre_topc(B, A) &  (v4_pre_topc(C, A) &  (r1_xboole_0(B, C) &  (v2_connsp_1(B, A) &  (v2_connsp_1(C, A) &  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (v2_connsp_1(D, A) &  (v2_connsp_1(E, A) &  (v3_pre_topc(D, A) &  (v3_pre_topc(E, A) &  (r1_tarski(B, D) &  (r1_tarski(C, E) & r1_xboole_0(D, E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(abstractness_v1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_pre_topc(A) => A=g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d10_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  ( (v1_pre_topc(C) & m1_pre_topc(C, A))  =>  (C=k1_pre_topc(A, B) <=> k2_struct_0(C)=B) ) ) ) ) ) ) ).
fof(d3_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k2_struct_0(A)=u1_struct_0(A)) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, B)=k4_xboole_0(A, B)) ) ) ).
fof(d6_connsp_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r3_connsp_1(A, B, C) <=>  (? [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(k1_pre_topc(A, B)))) &  (D=C & v3_connsp_1(D, k1_pre_topc(A, B))) ) ) ) ) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(dt_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v1_pre_topc(g1_pre_topc(A, B)) & l1_pre_topc(g1_pre_topc(A, B))) ) ) ).
fof(dt_k1_connsp_1, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, u1_struct_0(A)))  => m1_subset_1(k1_connsp_1(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k1_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v1_pre_topc(k1_pre_topc(A, B)) & m1_pre_topc(k1_pre_topc(A, B), A)) ) ) ).
fof(dt_k1_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k1_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k2_pre_topc(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k2_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k3_subset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k7_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => l1_pre_topc(B)) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_u1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => m1_subset_1(u1_pre_topc(A), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (? [B] : m1_pre_topc(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(free_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C, D] :  (g1_pre_topc(A, B)=g1_pre_topc(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(involutiveness_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, k3_subset_1(A, B))=B) ) ).
fof(projectivity_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => k2_pre_topc(A, k2_pre_topc(A, B))=k2_pre_topc(A, B)) ) ).
fof(redefinition_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k7_subset_1(A, B, C)=k4_xboole_0(B, C)) ) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t22_pre_topc, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => k7_subset_1(u1_struct_0(A), k2_struct_0(A), k7_subset_1(u1_struct_0(A), k2_struct_0(A), B))=B) ) ) ) ).
fof(t23_pre_topc, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( ~ ( ( ~ (B=k2_struct_0(A))  & k7_subset_1(u1_struct_0(A), k2_struct_0(A), B)=k1_xboole_0) )  &  ~ ( ( ~ (k7_subset_1(u1_struct_0(A), k2_struct_0(A), B)=k1_xboole_0)  & B=k2_struct_0(A)) ) ) ) ) ) ) ).
fof(t24_connsp_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) =>  (C=D =>  (v2_connsp_1(C, A) <=> v2_connsp_1(D, B)) ) ) ) ) ) ) ) ) ) ).
fof(t24_connsp_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (v1_connsp_2(A) <=>  (! [B] :  ( ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v3_pre_topc(B, A) & r3_connsp_1(A, B, C))  => v3_pre_topc(C, A)) ) ) ) ) ) ) ) ).
fof(t26_connsp_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (v10_pre_topc(A) <=>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( ( ~ (B=k1_xboole_0)  &  ( ~ (C=k2_struct_0(A))  &  (r1_tarski(B, C) &  (v4_pre_topc(B, A) &  (v3_pre_topc(C, A) &  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (v3_pre_topc(D, A) &  (r1_tarski(B, D) & r1_tarski(k2_pre_topc(A, D), C)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t27_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_tarski(k3_xboole_0(A, C), k3_xboole_0(B, D))) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t38_connsp_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v2_connsp_1(B, A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (v3_connsp_1(C, A) &  ( ~ (r1_xboole_0(B, C))  &  ~ (r1_tarski(B, C)) ) ) ) ) ) ) ) ) ) ) ).
fof(t39_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))) => m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ) ) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t40_connsp_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => r2_hidden(B, k1_connsp_1(A, B))) ) ) ) ).
fof(t41_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( ( ~ (B=k1_struct_0(A))  &  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  ~ (r2_hidden(C, B)) ) ) ) ) ) ) ) ) ).
fof(t43_connsp_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v3_connsp_1(B, A) <=>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) & B=k1_connsp_1(A, C)) ) ) ) ) ) ) ).
fof(t43_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (r1_xboole_0(B, C) <=> r1_tarski(B, k3_subset_1(A, C))) ) ) ) ) ) ).
fof(t48_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => r1_tarski(B, k2_pre_topc(A, B))) ) ) ) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t79_xboole_1, axiom,  (! [A] :  (! [B] : r1_xboole_0(k4_xboole_0(A, B), B)) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(fc1_tops_1, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => v4_pre_topc(k2_pre_topc(A, B), A)) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc2_connsp_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  =>  ( ~ (v1_xboole_0(k1_connsp_1(A, B)))  & v2_connsp_1(k1_connsp_1(A, B), A)) ) ) ).
fof(fc2_pre_topc, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  =>  ( ~ (v2_struct_0(k1_pre_topc(A, B)))  & v1_pre_topc(k1_pre_topc(A, B))) ) ) ).
fof(fc2_tops_1, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  &  (v4_pre_topc(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  => v3_pre_topc(k3_subset_1(u1_struct_0(A), B), A)) ) ).
fof(rc6_tops_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  ~ (v2_tops_1(B, A)) ) ) ) ) ) ).
