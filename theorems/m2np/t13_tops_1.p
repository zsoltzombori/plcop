fof(t13_tops_1, conjecture,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (v3_pre_topc(B, A) => r1_tarski(k9_subset_1(u1_struct_0(A), B, k2_pre_topc(A, C)), k2_pre_topc(A, k9_subset_1(u1_struct_0(A), B, C)))) ) ) ) ) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(dt_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k2_pre_topc(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k3_subset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(fc3_tops_1, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  &  (v3_pre_topc(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  => v4_pre_topc(k3_subset_1(u1_struct_0(A), B), A)) ) ).
fof(involutiveness_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, k3_subset_1(A, B))=B) ) ).
fof(redefinition_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k7_subset_1(A, B, C)=k4_xboole_0(B, C)) ) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(t13_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k7_subset_1(A, B, C)=k9_subset_1(A, B, k3_subset_1(A, C))) ) ) ) ) ).
fof(t22_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v4_pre_topc(B, A) => k2_pre_topc(A, B)=B)  &  ( (v2_pre_topc(A) & k2_pre_topc(A, B)=B)  => v4_pre_topc(B, A)) ) ) ) ) ) ).
fof(t6_tops_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) => r1_tarski(k7_subset_1(u1_struct_0(A), k2_pre_topc(A, B), k2_pre_topc(A, C)), k2_pre_topc(A, k7_subset_1(u1_struct_0(A), B, C)))) ) ) ) ) ) ).
