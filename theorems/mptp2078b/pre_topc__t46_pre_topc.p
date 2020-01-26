% Mizar problem: t46_pre_topc,pre_topc,834,75 
fof(t46_pre_topc, conjecture,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) &  ( (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(D, C) <=>  (v4_pre_topc(D, A) & r1_tarski(B, D)) ) ) )  & k2_pre_topc(A, B)=k6_setfam_1(u1_struct_0(A), C)) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d1_setfam_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (A=k1_xboole_0)  =>  (B=k1_setfam_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (! [D] :  (r2_hidden(D, A) => r2_hidden(C, D)) ) ) ) ) )  &  (A=k1_xboole_0 =>  (B=k1_setfam_1(A) <=> B=k1_xboole_0) ) ) ) ) ).
fof(d3_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k2_struct_0(A)=u1_struct_0(A)) ) ).
fof(dt_k1_setfam_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k2_pre_topc(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k2_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k6_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k6_setfam_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(projectivity_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => k2_pre_topc(A, k2_pre_topc(A, B))=k2_pre_topc(A, B)) ) ).
fof(redefinition_k6_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => k6_setfam_1(A, B)=k1_setfam_1(B)) ) ).
fof(s3_subset_1__e1_67__pre_topc, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) &  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(D, C) <=>  (? [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) &  (E=D &  (v4_pre_topc(E, A) & r1_tarski(B, D)) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t45_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (r2_hidden(C, u1_struct_0(A)) =>  (r2_hidden(C, k2_pre_topc(A, B)) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v4_pre_topc(D, A) & r1_tarski(B, D))  => r2_hidden(C, D)) ) ) ) ) ) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc4_pre_topc, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  => v4_pre_topc(k2_struct_0(A), A)) ) ).
