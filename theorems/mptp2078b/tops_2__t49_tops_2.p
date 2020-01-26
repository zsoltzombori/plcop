% Mizar problem: t49_tops_2,tops_2,818,73 
fof(t49_tops_2, conjecture,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(B)))) =>  ~ ( (v1_tops_2(C, B) &  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ~ ( (v1_tops_2(D, A) &  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) =>  (E=k2_struct_0(B) => C=k1_tops_2(A, E, D)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(abstractness_v1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_pre_topc(A) => A=g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d10_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  ( (v1_pre_topc(C) & m1_pre_topc(C, A))  =>  (C=k1_pre_topc(A, B) <=> k2_struct_0(C)=B) ) ) ) ) ) ) ).
fof(d1_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (v1_tops_2(B, A) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(C, B) => v3_pre_topc(C, A)) ) ) ) ) ) ) ) ).
fof(d3_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k2_struct_0(A)=u1_struct_0(A)) ) ).
fof(d3_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(A, B))))) =>  (D=k1_tops_2(A, B, C) <=>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(k1_pre_topc(A, B)))) =>  (r2_hidden(E, D) <=>  (? [F] :  (m1_subset_1(F, k1_zfmisc_1(u1_struct_0(A))) &  (r2_hidden(F, C) & k9_subset_1(u1_struct_0(A), F, B)=E) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d9_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (l1_pre_topc(B) =>  (m1_pre_topc(B, A) <=>  (r1_tarski(k2_struct_0(B), k2_struct_0(A)) &  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))) =>  (r2_hidden(C, u1_pre_topc(B)) <=>  (? [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) &  (r2_hidden(D, u1_pre_topc(A)) & C=k9_subset_1(u1_struct_0(B), D, k2_struct_0(B))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v1_pre_topc(g1_pre_topc(A, B)) & l1_pre_topc(g1_pre_topc(A, B))) ) ) ).
fof(dt_k1_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v1_pre_topc(k1_pre_topc(A, B)) & m1_pre_topc(k1_pre_topc(A, B), A)) ) ) ).
fof(dt_k1_tops_2, axiom,  (! [A, B, C] :  ( (l1_pre_topc(A) &  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) )  => m1_subset_1(k1_tops_2(A, B, C), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(A, B)))))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k2_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k9_setfam_1, axiom,  (! [A] : m1_subset_1(k9_setfam_1(A), k1_zfmisc_1(k1_zfmisc_1(A)))) ).
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
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(s3_subset_1__e4_51__tops_2, axiom,  (! [A, B, C, D] :  ( (l1_pre_topc(A) &  (m1_pre_topc(B, A) &  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(B)))) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (? [E] :  (m1_subset_1(E, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) &  (! [F] :  (m1_subset_1(F, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(F, E) <=>  (? [G] :  (m1_subset_1(G, k1_zfmisc_1(u1_struct_0(A))) &  (G=F &  (v3_pre_topc(G, A) & r2_hidden(k9_subset_1(u1_struct_0(A), F, D), C)) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t32_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))) =>  (v3_pre_topc(C, B) <=>  (? [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) &  (v3_pre_topc(D, A) & k9_subset_1(u1_struct_0(B), D, k2_struct_0(B))=C) ) ) ) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
