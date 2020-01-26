fof(t66_tops_1, conjecture,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (l1_pre_topc(B) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) =>  ( ( (v4_pre_topc(D, B) & v4_tops_1(D, B))  => v5_tops_1(D, B))  &  (v5_tops_1(C, A) =>  (v4_pre_topc(C, A) & v4_tops_1(C, A)) ) ) ) ) ) ) ) ) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d6_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v4_tops_1(B, A) <=>  (r1_tarski(k1_tops_1(A, k2_pre_topc(A, B)), B) & r1_tarski(B, k2_pre_topc(A, k1_tops_1(A, B)))) ) ) ) ) ) ).
fof(d7_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v5_tops_1(B, A) <=> B=k2_pre_topc(A, k1_tops_1(A, B))) ) ) ) ) ).
fof(dt_k1_tops_1, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k1_tops_1(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(fc1_tops_1, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => v4_pre_topc(k2_pre_topc(A, B), A)) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t16_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => r1_tarski(k1_tops_1(A, B), B)) ) ) ) ).
fof(t19_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r1_tarski(B, C) => r1_tarski(k2_pre_topc(A, B), k2_pre_topc(A, C))) ) ) ) ) ) ) ).
fof(t22_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v4_pre_topc(B, A) => k2_pre_topc(A, B)=B)  &  ( (v2_pre_topc(A) & k2_pre_topc(A, B)=B)  => v4_pre_topc(B, A)) ) ) ) ) ) ).
