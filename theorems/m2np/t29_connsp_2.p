fof(t29_connsp_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m2_connsp_2(C, A, B) => r1_tarski(B, C)) ) ) ) ) ) ).
fof(d2_connsp_2, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (m2_connsp_2(C, A, B) <=> r1_tarski(B, k1_tops_1(A, C))) ) ) ) ) ) ) ).
fof(dt_m2_connsp_2, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (! [C] :  (m2_connsp_2(C, A, B) => m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ).
fof(t16_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => r1_tarski(k1_tops_1(A, B), B)) ) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
