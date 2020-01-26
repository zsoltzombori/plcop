fof(t22_compts_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( (v1_tops_2(B, A) & m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))))  <=>  (v1_tops_2(B, g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) & m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))))))) ) ) ) ) ).
fof(abstractness_v1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_pre_topc(A) => A=g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) ) ) ).
fof(dt_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v1_pre_topc(g1_pre_topc(A, B)) & l1_pre_topc(g1_pre_topc(A, B))) ) ) ).
fof(dt_u1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => m1_subset_1(u1_pre_topc(A), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ).
fof(fc7_pre_topc, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  ( ~ (v2_struct_0(g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))))  & v1_pre_topc(g1_pre_topc(u1_struct_0(A), u1_pre_topc(A)))) ) ) ).
fof(free_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C, D] :  (g1_pre_topc(A, B)=g1_pre_topc(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(t64_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (v1_tops_2(B, A) <=> r1_tarski(B, u1_pre_topc(A))) ) ) ) ) ).
