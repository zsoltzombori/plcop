fof(t17_tex_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  ( (v13_struct_0(B, np__1) & m1_pre_topc(B, A))  =>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) & g1_pre_topc(u1_struct_0(B), u1_pre_topc(B))=g1_pre_topc(u1_struct_0(k1_tex_2(A, C)), u1_pre_topc(k1_tex_2(A, C)))) ) ) ) ) ) ).
fof(cc11_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v13_struct_0(A, np__1) =>  ( ~ (v2_struct_0(A))  & v7_struct_0(A)) ) ) ) ).
fof(d1_tex_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (v7_struct_0(A) <=>  (? [B] :  (m1_subset_1(B, u1_struct_0(A)) & u1_struct_0(A)=k6_domain_1(u1_struct_0(A), B)) ) ) ) ) ).
fof(d2_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( ~ (v2_struct_0(C))  &  (v1_pre_topc(C) & m1_pre_topc(C, A)) )  =>  (C=k1_tex_2(A, B) <=> u1_struct_0(C)=k6_domain_1(u1_struct_0(A), B)) ) ) ) ) ) ) ).
fof(dt_k1_tex_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  & m1_subset_1(B, u1_struct_0(A)))  =>  ( ~ (v2_struct_0(k1_tex_2(A, B)))  &  (v1_pre_topc(k1_tex_2(A, B)) & m1_pre_topc(k1_tex_2(A, B), A)) ) ) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => l1_pre_topc(B)) ) ) ) ).
fof(fc1_struct_0, axiom,  (! [A] :  ( (v2_struct_0(A) & l1_struct_0(A))  => v1_xboole_0(u1_struct_0(A))) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(l10_tex_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => m1_subset_1(u1_struct_0(B), k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_tsep_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_pre_topc(C, A) =>  (u1_struct_0(B)=u1_struct_0(C) => g1_pre_topc(u1_struct_0(B), u1_pre_topc(B))=g1_pre_topc(u1_struct_0(C), u1_pre_topc(C))) ) ) ) ) ) ) ).
