% Mizar problem: t12_compts_1,compts_1,300,66 
fof(t12_compts_1, conjecture,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( (B=k1_xboole_0 =>  (v2_compts_1(B, A) <=> v1_compts_1(k1_pre_topc(A, B))) )  &  (v2_pre_topc(A) =>  (B=k1_xboole_0 |  (v2_compts_1(B, A) <=> v1_compts_1(k1_pre_topc(A, B))) ) ) ) ) ) ) ) ).
fof(abstractness_v1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_pre_topc(A) => A=g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d10_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  ( (v1_pre_topc(C) & m1_pre_topc(C, A))  =>  (C=k1_pre_topc(A, B) <=> k2_struct_0(C)=B) ) ) ) ) ) ) ).
fof(dt_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v1_pre_topc(g1_pre_topc(A, B)) & l1_pre_topc(g1_pre_topc(A, B))) ) ) ).
fof(dt_k1_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v1_pre_topc(k1_pre_topc(A, B)) & m1_pre_topc(k1_pre_topc(A, B), A)) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k2_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => l1_pre_topc(B)) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => m1_subset_1(u1_pre_topc(A), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (? [B] : m1_pre_topc(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(free_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C, D] :  (g1_pre_topc(A, B)=g1_pre_topc(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(t10_compts_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_compts_1(A) <=> v2_compts_1(k2_struct_0(A), A)) ) ) ).
fof(t11_compts_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r1_tarski(C, k2_struct_0(B)) =>  (v2_compts_1(C, A) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) =>  (D=C => v2_compts_1(D, B)) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_compts_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) => v2_compts_1(B, A)) ) ) ) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(cc4_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) =>  (v2_struct_0(A) & v8_struct_0(A)) ) ) ) ).
fof(fc17_finset_1, axiom,  (! [A] :  (v1_finset_1(A) => v1_finset_1(k1_zfmisc_1(A))) ) ).
fof(fc1_struct_0, axiom,  (! [A] :  ( (v2_struct_0(A) & l1_struct_0(A))  => v1_xboole_0(u1_struct_0(A))) ) ).
fof(rc3_tops_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  (v3_pre_topc(B, A) & v4_pre_topc(B, A)) ) ) ) ) ) ).
