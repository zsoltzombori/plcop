fof(t91_tmap_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => r2_hidden(B, k5_tmap_1(A, B))) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v2_pre_topc(A) <=>  (r2_hidden(u1_struct_0(A), u1_pre_topc(A)) &  ( (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (r1_tarski(B, u1_pre_topc(A)) => r2_hidden(k5_setfam_1(u1_struct_0(A), B), u1_pre_topc(A))) ) )  &  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ( (r2_hidden(B, u1_pre_topc(A)) & r2_hidden(C, u1_pre_topc(A)))  => r2_hidden(k9_subset_1(u1_struct_0(A), B, C), u1_pre_topc(A))) ) ) ) ) ) ) ) ) ) ).
fof(d2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k1_struct_0(A)=k1_xboole_0) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d7_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => k5_tmap_1(A, B)=a_2_0_tmap_1(A, B)) ) ) ) ).
fof(dt_k1_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k1_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(fraenkel_a_2_0_tmap_1, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))))  =>  (r2_hidden(A, a_2_0_tmap_1(B, C)) <=>  (? [D, E] :  ( (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) & m1_subset_1(E, k1_zfmisc_1(u1_struct_0(B))))  &  (A=k4_subset_1(u1_struct_0(B), D, k9_subset_1(u1_struct_0(B), E, C)) &  (r2_hidden(D, u1_pre_topc(B)) & r2_hidden(E, u1_pre_topc(B))) ) ) ) ) ) ) ).
fof(redefinition_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k2_xboole_0(B, C)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_pre_topc, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  => r2_hidden(k1_xboole_0, u1_pre_topc(A))) ) ).
fof(t1_tsep_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => m1_subset_1(u1_struct_0(B), k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ).
fof(t28_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => k3_xboole_0(A, B)=A) ) ) ).
fof(t2_tsep_1, axiom,  (! [A] :  (l1_pre_topc(A) => m1_pre_topc(A, A)) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
