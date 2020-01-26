fof(t63_tex_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  ( (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  => v5_pre_topc(C, A, B)) ) ) )  => v1_tdlat_3(A)) ) ) ).
fof(abstractness_v1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_pre_topc(A) => A=g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) ) ) ).
fof(cc1_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v1_partfun1(C, A) => v1_funct_2(C, A, B)) ) ) ) ).
fof(cc1_tdlat_3, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_tdlat_3(A) => v2_pre_topc(A)) ) ) ).
fof(d3_subset_1, axiom,  (! [A] : k2_subset_1(A)=A) ).
fof(d5_compts_1, axiom,  (! [A] : k1_compts_1(A)=g1_pre_topc(A, k2_subset_1(k9_setfam_1(A)))) ).
fof(d6_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (l1_pre_topc(B) =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (v5_pre_topc(C, A, B) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) =>  (v4_pre_topc(D, B) => v4_pre_topc(k8_relset_1(u1_struct_0(A), u1_struct_0(B), C, D), A)) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_compts_1, axiom,  (! [A] : l1_pre_topc(k1_compts_1(A))) ).
fof(dt_k6_partfun1, axiom,  (! [A] :  (v1_partfun1(k6_partfun1(A), A) & m1_subset_1(k6_partfun1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_u1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => m1_subset_1(u1_pre_topc(A), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ).
fof(fc1_compts_1, axiom,  (! [A] :  (v1_pre_topc(k1_compts_1(A)) & v2_pre_topc(k1_compts_1(A))) ) ).
fof(fc2_compts_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  ~ (v2_struct_0(k1_compts_1(A))) ) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc3_funct_1, axiom,  (! [A] :  (v1_relat_1(k4_relat_1(A)) & v1_funct_1(k4_relat_1(A))) ) ).
fof(fc4_tex_1, axiom,  (! [A] : v1_tdlat_3(k1_compts_1(A))) ).
fof(free_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C, D] :  (g1_pre_topc(A, B)=g1_pre_topc(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(redefinition_k6_partfun1, axiom,  (! [A] : k6_partfun1(A)=k4_relat_1(A)) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(t16_tdlat_3, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (v1_tdlat_3(A) <=>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => v4_pre_topc(B, A)) ) ) ) ) ).
fof(t94_funct_2, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k8_relset_1(A, A, k6_partfun1(A), B)=B) ) ) ).
