fof(t30_tex_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => v2_tex_2(k6_domain_1(u1_struct_0(A), B), A)) ) ) ) ).
fof(d2_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( ~ (v2_struct_0(C))  &  (v1_pre_topc(C) & m1_pre_topc(C, A)) )  =>  (C=k1_tex_2(A, B) <=> u1_struct_0(C)=k6_domain_1(u1_struct_0(A), B)) ) ) ) ) ) ) ).
fof(dt_k1_tex_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  & m1_subset_1(B, u1_struct_0(A)))  =>  ( ~ (v2_struct_0(k1_tex_2(A, B)))  &  (v1_pre_topc(k1_tex_2(A, B)) & m1_pre_topc(k1_tex_2(A, B), A)) ) ) ) ).
fof(dt_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => m1_subset_1(k6_domain_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc3_tex_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  =>  ( ~ (v2_struct_0(k1_tex_2(A, B)))  &  (v1_pre_topc(k1_tex_2(A, B)) & v2_pre_topc(k1_tex_2(A, B))) ) ) ) ).
fof(fc4_tex_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  =>  ( ~ (v2_struct_0(k1_tex_2(A, B)))  &  (v1_pre_topc(k1_tex_2(A, B)) &  (v1_tdlat_3(k1_tex_2(A, B)) & v2_tdlat_3(k1_tex_2(A, B))) ) ) ) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(t20_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (C=u1_struct_0(B) =>  (v2_tex_2(C, A) <=> v1_tdlat_3(B)) ) ) ) ) ) ) ) ).
