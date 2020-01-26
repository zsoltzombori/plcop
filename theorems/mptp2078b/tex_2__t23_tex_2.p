% Mizar problem: t23_tex_2,tex_2,551,76 
fof(t23_tex_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v7_struct_0(B) & m1_pre_topc(B, A)) )  =>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) & g1_pre_topc(u1_struct_0(B), u1_pre_topc(B))=g1_pre_topc(u1_struct_0(k1_tex_2(A, C)), u1_pre_topc(k1_tex_2(A, C)))) ) ) ) ) ) ).
fof(abstractness_v1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_pre_topc(A) => A=g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d1_tex_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (v7_struct_0(A) <=>  (? [B] :  (m1_subset_1(B, u1_struct_0(A)) & u1_struct_0(A)=k6_domain_1(u1_struct_0(A), B)) ) ) ) ) ).
fof(d4_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( ~ (v2_struct_0(C))  &  (v1_pre_topc(C) & m1_pre_topc(C, A)) )  =>  (C=k1_tex_2(A, B) <=> u1_struct_0(C)=k6_domain_1(u1_struct_0(A), B)) ) ) ) ) ) ) ).
fof(dt_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v1_pre_topc(g1_pre_topc(A, B)) & l1_pre_topc(g1_pre_topc(A, B))) ) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_tex_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  & m1_subset_1(B, u1_struct_0(A)))  =>  ( ~ (v2_struct_0(k1_tex_2(A, B)))  &  (v1_pre_topc(k1_tex_2(A, B)) & m1_pre_topc(k1_tex_2(A, B), A)) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => m1_subset_1(k6_domain_1(A, B), k1_zfmisc_1(A))) ) ).
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
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(free_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C, D] :  (g1_pre_topc(A, B)=g1_pre_topc(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(l17_tex_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => m1_subset_1(u1_struct_0(B), k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ).
fof(rc1_tex_2, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t37_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t5_tsep_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_pre_topc(C, A) =>  (u1_struct_0(B)=u1_struct_0(C) => g1_pre_topc(u1_struct_0(B), u1_pre_topc(B))=g1_pre_topc(u1_struct_0(C), u1_pre_topc(C))) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
