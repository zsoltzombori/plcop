% Mizar problem: t77_tex_2,tex_2,2763,8 
fof(t77_tex_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_tex_2(B, A) & m1_pre_topc(B, A)) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) &  (v5_pre_topc(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) ) )  =>  (v3_borsuk_1(C, A, B) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(B)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  (D=E => k8_relset_1(u1_struct_0(A), u1_struct_0(B), C, k6_domain_1(u1_struct_0(B), D))=k2_pre_topc(A, k6_domain_1(u1_struct_0(A), E))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(cc4_compts_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_finset_1(B) => v2_compts_1(B, A)) ) ) ) ) ).
fof(cc4_realset1, axiom,  (! [A] :  ( ~ (v1_finset_1(A))  =>  ~ (v1_zfmisc_1(A)) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(cc10_funct_1, axiom,  (! [A] :  (v4_funct_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v4_funct_1(B)) ) ) ) ).
fof(cc10_tdlat_3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  (v1_tsep_1(B, A) => v1_borsuk_1(B, A)) ) ) ) ) ).
fof(cc10_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v7_struct_0(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v2_struct_0(B))  =>  ( ~ (v2_struct_0(B))  &  ~ (v1_tex_2(B, A)) ) ) ) ) ) ) ).
fof(cc11_tdlat_3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  (v1_borsuk_1(B, A) => v1_tsep_1(B, A)) ) ) ) ) ).
fof(cc11_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v7_struct_0(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  ~ (v1_tex_2(B, A)) )  =>  ( ~ (v2_struct_0(B))  & v7_struct_0(B)) ) ) ) ) ) ).
fof(cc12_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  ( ~ (v7_struct_0(A))  & l1_pre_topc(A)) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v7_struct_0(B))  =>  ( ~ (v2_struct_0(B))  & v1_tex_2(B, A)) ) ) ) ) ) ).
fof(cc13_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  ( ~ (v7_struct_0(A))  & l1_pre_topc(A)) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  ~ (v1_tex_2(B, A)) )  =>  ( ~ (v2_struct_0(B))  &  ~ (v7_struct_0(B)) ) ) ) ) ) ) ).
fof(cc14_tdlat_3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v4_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v1_tsep_1(B, A))  =>  ( ~ (v2_struct_0(B))  & v4_tdlat_3(B)) ) ) ) ) ) ).
fof(cc1_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v1_partfun1(C, A))  =>  (v1_funct_1(C) & v1_funct_2(C, A, B)) ) ) ) ) ).
fof(cc1_realset1, axiom,  (! [A] :  ( ~ (v1_zfmisc_1(A))  =>  ~ (v1_xboole_0(A)) ) ) ).
fof(cc1_tex_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  ( ( ~ (v2_struct_0(A))  &  (v7_struct_0(A) & v2_pre_topc(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v1_tdlat_3(A) & v2_tdlat_3(A)) ) ) ) ) ) ).
fof(cc1_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (v1_subset_1(B, A) => v1_xboole_0(B)) ) ) ) ) ).
fof(cc23_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  ( ~ (v7_struct_0(B))  & v2_tdlat_3(B)) )  =>  ( ~ (v2_struct_0(B))  &  ~ (v1_tdlat_3(B)) ) ) ) ) ) ) ).
fof(cc24_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  ( ~ (v7_struct_0(B))  & v1_tdlat_3(B)) )  =>  ( ~ (v2_struct_0(B))  &  ~ (v2_tdlat_3(B)) ) ) ) ) ) ) ).
fof(cc25_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  (v7_struct_0(B) & v2_pre_topc(B)) )  =>  ( ~ (v2_struct_0(B))  &  (v1_tdlat_3(B) & v2_tdlat_3(B)) ) ) ) ) ) ) ).
fof(cc26_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v1_tex_2(B, A))  =>  (v1_borsuk_1(B, A) & v1_tsep_1(B, A)) ) ) ) ) ) ).
fof(cc27_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v1_tsep_1(B, A))  => v1_tex_2(B, A)) ) ) ) ) ).
fof(cc28_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v1_borsuk_1(B, A))  => v1_tex_2(B, A)) ) ) ) ) ).
fof(cc2_compts_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v8_pre_topc(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v2_compts_1(B, A) => v4_pre_topc(B, A)) ) ) ) ) ).
fof(cc2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v7_struct_0(A))  =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(cc2_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ~ (v1_subset_1(B, A))  =>  ~ (v1_xboole_0(B)) ) ) ) ) ) ).
fof(cc2_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ~ (v1_xboole_0(B))  =>  ~ (v1_subset_1(B, A)) ) ) ) ) ) ).
fof(cc30_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v1_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  ~ (v7_struct_0(B)) )  =>  ( ~ (v2_struct_0(B))  &  ~ (v2_tdlat_3(B)) ) ) ) ) ) ) ).
fof(cc32_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v2_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  ~ (v7_struct_0(B)) )  =>  ( ~ (v2_struct_0(B))  &  ~ (v1_tdlat_3(B)) ) ) ) ) ) ) ).
fof(cc33_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  ( ~ (v7_struct_0(A))  &  (v2_pre_topc(A) &  (v2_tdlat_3(A) & l1_pre_topc(A)) ) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v1_tex_2(B, A))  =>  ( ~ (v2_struct_0(B))  &  ( ~ (v1_borsuk_1(B, A))  &  ( ~ (v1_tsep_1(B, A))  & v1_tex_2(B, A)) ) ) ) ) ) ) ) ).
fof(cc34_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  ( ~ (v7_struct_0(A))  &  (v2_pre_topc(A) &  (v2_tdlat_3(A) & l1_pre_topc(A)) ) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v1_tdlat_3(B))  =>  ( ~ (v2_struct_0(B))  &  (v7_struct_0(B) &  (v1_tdlat_3(B) & v1_tex_2(B, A)) ) ) ) ) ) ) ) ).
fof(cc38_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v1_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  (v1_tex_2(B, A) =>  ~ (v4_tex_2(B, A)) ) ) ) ) ) ).
fof(cc39_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v1_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v1_tex_2(B, A))  => v4_tex_2(B, A)) ) ) ) ) ).
fof(cc3_compts_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  ( (v8_struct_0(A) & v2_pre_topc(A))  =>  (v2_pre_topc(A) & v1_compts_1(A)) ) ) ) ).
fof(cc3_realset1, axiom,  (! [A] :  (v1_zfmisc_1(A) => v1_finset_1(A)) ) ).
fof(cc3_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ( ~ (v1_xboole_0(B))  &  ~ (v1_subset_1(B, A)) )  =>  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ) ).
fof(cc42_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v2_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  ~ (v7_struct_0(B)) )  =>  ( ~ (v2_struct_0(B))  &  ~ (v4_tex_2(B, A)) ) ) ) ) ) ) ).
fof(cc43_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v2_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v7_struct_0(B))  =>  ( ~ (v2_struct_0(B))  & v4_tex_2(B, A)) ) ) ) ) ) ).
fof(cc46_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  ( ~ (v1_tdlat_3(A))  &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  ~ (v1_tex_2(B, A)) )  =>  ( ~ (v2_struct_0(B))  &  ~ (v4_tex_2(B, A)) ) ) ) ) ) ) ).
fof(cc48_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  ( ~ (v2_tdlat_3(A))  &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v7_struct_0(B))  =>  ( ~ (v2_struct_0(B))  &  ~ (v4_tex_2(B, A)) ) ) ) ) ) ) ).
fof(cc4_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B))  =>  ( ~ (v1_xboole_0(B))  & v1_subset_1(B, A)) ) ) ) ) ) ).
fof(cc4_tops_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v3_tops_1(B, A) => v2_tops_1(B, A)) ) ) ) ) ).
fof(cc5_funct_1, axiom,  (! [A] :  (v1_zfmisc_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_zfmisc_1(B)) ) ) ) ).
fof(cc5_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ( ~ (v2_struct_0(A))  &  ~ (v8_struct_0(A)) ) ) ) ) ).
fof(cc5_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ( ~ (v1_xboole_0(B))  &  ~ (v1_subset_1(B, A)) )  =>  ( ~ (v1_xboole_0(B))  &  ~ (v1_zfmisc_1(B)) ) ) ) ) ) ) ).
fof(cc5_tops_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v4_pre_topc(B, A) & v2_tops_1(B, A))  => v3_tops_1(B, A)) ) ) ) ) ).
fof(cc6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) )  =>  ( ~ (v1_zfmisc_1(A))  &  (v1_relat_1(A) & v1_funct_1(A)) ) ) ) ).
fof(cc6_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v7_struct_0(A) => v8_struct_0(A)) ) ) ).
fof(cc6_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v7_struct_0(A) & l1_struct_0(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( ~ (v1_xboole_0(B))  =>  ( ~ (v1_xboole_0(B))  &  ~ (v1_subset_1(B, u1_struct_0(A))) ) ) ) ) ) ) ).
fof(cc6_tops_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v3_pre_topc(B, A) & v3_tops_1(B, A))  => v1_xboole_0(B)) ) ) ) ) ).
fof(cc7_funct_1, axiom,  (! [A] :  ( (v1_zfmisc_1(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc7_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v7_pre_topc(A) => v6_pre_topc(A)) ) ) ).
fof(cc7_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ~ (v7_struct_0(A)) ) ) ) ).
fof(cc7_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v7_struct_0(A) & l1_struct_0(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( ( ~ (v1_xboole_0(B))  &  ~ (v1_subset_1(B, u1_struct_0(A))) )  =>  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ) ).
fof(cc8_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  ( ~ (v7_struct_0(A))  & l1_struct_0(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B))  =>  ( ~ (v1_xboole_0(B))  & v1_subset_1(B, u1_struct_0(A))) ) ) ) ) ) ).
fof(cc9_funct_1, axiom,  (! [A] :  (v4_funct_1(A) =>  (! [B] :  (m1_subset_1(B, A) =>  (v1_relat_1(B) & v1_funct_1(B)) ) ) ) ) ).
fof(cc9_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  ( ~ (v7_struct_0(A))  & l1_struct_0(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( ( ~ (v1_xboole_0(B))  &  ~ (v1_subset_1(B, u1_struct_0(A))) )  =>  ( ~ (v1_xboole_0(B))  &  ~ (v1_zfmisc_1(B)) ) ) ) ) ) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc6_struct_0, axiom,  (! [A] :  ( ( ~ (v7_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_zfmisc_1(u1_struct_0(A))) ) ) ).
fof(fc7_struct_0, axiom,  (! [A] :  ( (v7_struct_0(A) & l1_struct_0(A))  => v1_zfmisc_1(u1_struct_0(A))) ) ).
fof(fc8_struct_0, axiom,  (! [A] :  ( (v8_struct_0(A) & l1_struct_0(A))  => v1_finset_1(u1_struct_0(A))) ) ).
fof(fc9_struct_0, axiom,  (! [A] :  ( ( ~ (v8_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_finset_1(u1_struct_0(A))) ) ) ).
fof(rc10_pre_topc, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & v3_pre_topc(B, A)) ) ) ) ).
fof(rc10_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  &  ~ (v7_struct_0(A)) ) ) ) ).
fof(rc1_realset1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A)) ) ).
fof(rc1_tex_2, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ).
fof(rc1_tops_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & v3_pre_topc(B, A)) ) ) ) ).
fof(rc20_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ).
fof(rc2_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ).
fof(rc2_realset1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) ) ) ).
fof(rc2_relat_1, axiom,  (? [A] :  (v1_relat_1(A) & v2_relat_1(A)) ) ).
fof(rc2_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  &  (v1_zfmisc_1(B) & v1_subset_1(B, A)) ) ) ) ) ) ).
fof(rc2_tops_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  (v3_pre_topc(B, A) & v4_pre_topc(B, A)) ) ) ) ) ).
fof(rc3_compts_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  & v2_compts_1(B, A)) ) ) ) ) ).
fof(rc3_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v2_relat_1(A) & v1_funct_1(A)) ) ) ).
fof(rc3_realset1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ).
fof(rc3_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_subset_1(B, A)) ) ) ) ).
fof(rc3_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_zfmisc_1(B))  &  ~ (v1_subset_1(B, A)) ) ) ) ) ) ) ).
fof(rc3_tops_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  (v3_pre_topc(B, A) & v4_pre_topc(B, A)) ) ) ) ) ) ).
fof(rc4_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  &  (v1_relat_1(A) &  (v2_relat_1(A) & v1_funct_1(A)) ) ) ) ).
fof(rc4_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_subset_1(B, A)) ) ) ) ).
fof(rc4_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  ( ~ (v7_struct_0(A))  & l1_struct_0(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  (v1_zfmisc_1(B) & v1_subset_1(B, u1_struct_0(A))) ) ) ) ) ) ).
fof(rc5_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) ) ) ).
fof(rc5_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  ( ~ (v7_struct_0(A))  & l1_struct_0(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_zfmisc_1(B))  &  ~ (v1_subset_1(B, u1_struct_0(A))) ) ) ) ) ) ) ).
fof(rc5_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & v2_tops_1(B, A)) ) ) ) ).
fof(rc6_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  ( ~ (v7_struct_0(A))  & l1_struct_0(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  (v1_zfmisc_1(B) & v1_subset_1(B, u1_struct_0(A))) ) ) ) ) ) ).
fof(rc6_tops_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  ~ (v2_tops_1(B, A)) ) ) ) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
fof(rc7_tops_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & v3_tops_1(B, A)) ) ) ) ).
fof(rc9_pre_topc, axiom,  (? [A] :  (l1_pre_topc(A) &  ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & v7_pre_topc(A)) ) ) ) ).
fof(rc9_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  & v7_struct_0(A)) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(dt_k10_relat_1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_l1_struct_0, axiom, $true).
fof(cc12_tdlat_3, axiom,  (! [A] :  (l1_pre_topc(A) =>  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & v5_tdlat_3(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & v4_tdlat_3(A)) ) ) ) ) ).
fof(cc14_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  (v1_tdlat_3(B) => v2_pre_topc(B)) ) ) ) ) ).
fof(cc15_tdlat_3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v5_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v2_struct_0(B))  =>  ( ~ (v2_struct_0(B))  & v5_tdlat_3(B)) ) ) ) ) ) ).
fof(cc15_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  (v2_tdlat_3(B) => v2_pre_topc(B)) ) ) ) ) ).
fof(cc18_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  (v1_tdlat_3(B) => v3_tdlat_3(B)) ) ) ) ) ).
fof(cc1_compts_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) => v2_compts_1(B, A)) ) ) ) ) ).
fof(cc1_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_funct_1(A)) ) ).
fof(cc1_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_relat_1(A)) ) ).
fof(cc1_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) => v7_struct_0(A)) ) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(cc1_tdlat_3, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_tdlat_3(A) => v2_pre_topc(A)) ) ) ).
fof(cc1_tops_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) => v3_pre_topc(B, A)) ) ) ) ) ).
fof(cc1_zfmisc_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_zfmisc_1(A)) ) ).
fof(cc20_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  (v2_tdlat_3(B) => v3_tdlat_3(B)) ) ) ) ) ).
fof(cc22_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  (v1_tdlat_3(B) & v2_tdlat_3(B)) )  =>  ( ~ (v2_struct_0(B))  & v7_struct_0(B)) ) ) ) ) ) ).
fof(cc29_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v1_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v2_tdlat_3(B))  =>  ( ~ (v2_struct_0(B))  & v7_struct_0(B)) ) ) ) ) ) ).
fof(cc2_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ) ).
fof(cc2_pre_topc, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) => v4_pre_topc(B, A)) ) ) ) ) ).
fof(cc2_realset1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_zfmisc_1(A)) ) ).
fof(cc2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B)) ) ) ) ).
fof(cc2_tdlat_3, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v2_tdlat_3(A) => v2_pre_topc(A)) ) ) ).
fof(cc2_tex_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v1_tdlat_3(A) & v2_tdlat_3(A)) ) )  =>  ( ~ (v2_struct_0(A))  &  (v7_struct_0(A) & v2_pre_topc(A)) ) ) ) ) ).
fof(cc2_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) => v2_tops_1(B, A)) ) ) ) ) ).
fof(cc31_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v2_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v1_tdlat_3(B))  =>  ( ~ (v2_struct_0(B))  & v7_struct_0(B)) ) ) ) ) ) ).
fof(cc36_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  ~ (v1_tdlat_3(B)) )  =>  ( ~ (v2_struct_0(B))  &  ~ (v4_tex_2(B, A)) ) ) ) ) ) ) ).
fof(cc37_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v1_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  (v4_tex_2(B, A) =>  ~ (v1_tex_2(B, A)) ) ) ) ) ) ).
fof(cc3_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_funct_1(B)) ) ) ) ).
fof(cc3_relat_1, axiom,  (! [A] :  ( (v1_xboole_0(A) & v1_relat_1(A))  =>  (v1_relat_1(A) & v3_relat_1(A)) ) ) ).
fof(cc3_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (v1_xboole_0(B) => v1_subset_1(B, A)) ) ) ) ) ).
fof(cc3_tdlat_3, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_tdlat_3(A) => v3_tdlat_3(A)) ) ) ).
fof(cc3_tex_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  ~ (v1_tdlat_3(A)) ) )  =>  ( ~ (v2_struct_0(A))  &  ( ~ (v7_struct_0(A))  & v2_pre_topc(A)) ) ) ) ) ).
fof(cc3_tops_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) => v3_tops_1(B, A)) ) ) ) ) ).
fof(cc40_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v1_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v4_tex_2(B, A))  => v1_tex_2(B, A)) ) ) ) ) ).
fof(cc41_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v2_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v4_tex_2(B, A))  =>  ( ~ (v2_struct_0(B))  & v7_struct_0(B)) ) ) ) ) ) ).
fof(cc44_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v2_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  &  ~ (v4_tex_2(B, A)) )  =>  ( ~ (v2_struct_0(B))  &  ~ (v7_struct_0(B)) ) ) ) ) ) ) ).
fof(cc45_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  ( ~ (v1_tdlat_3(A))  &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v4_tex_2(B, A))  =>  ( ~ (v2_struct_0(B))  & v1_tex_2(B, A)) ) ) ) ) ) ).
fof(cc47_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  ( ~ (v2_tdlat_3(A))  &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v4_tex_2(B, A))  =>  ( ~ (v2_struct_0(B))  &  ~ (v7_struct_0(B)) ) ) ) ) ) ) ).
fof(cc4_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc4_relat_1, axiom,  (! [A] :  ( (v1_xboole_0(A) & v1_relat_1(A))  =>  (v1_relat_1(A) & v2_relat_1(A)) ) ) ).
fof(cc4_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) =>  (v2_struct_0(A) & v8_struct_0(A)) ) ) ) ).
fof(cc4_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ~ (v1_subset_1(B, A)) ) ) ) ) ).
fof(cc4_tdlat_3, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v2_tdlat_3(A) => v3_tdlat_3(A)) ) ) ).
fof(cc4_tex_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  ~ (v2_tdlat_3(A)) ) )  =>  ( ~ (v2_struct_0(A))  &  ( ~ (v7_struct_0(A))  & v2_pre_topc(A)) ) ) ) ) ).
fof(cc5_funct_2, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v1_funct_2(C, A, B))  =>  (v1_funct_1(C) & v1_partfun1(C, A)) ) ) ) ) ) ).
fof(cc5_tdlat_3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v1_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  (v1_borsuk_1(B, A) &  (v1_tsep_1(B, A) & v1_tdlat_3(B)) ) ) ) ) ) ).
fof(cc6_compts_1, axiom,  (! [A] :  ( (v8_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) => v8_pre_topc(B)) ) ) ) ).
fof(cc6_funct_2, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v1_funct_2(C, A, B))  =>  (v1_funct_1(C) &  ( ~ (v1_xboole_0(C))  & v1_funct_2(C, A, B)) ) ) ) ) ) ) ).
fof(cc6_tdlat_3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v2_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) => v2_tdlat_3(B)) ) ) ) ).
fof(cc7_tdlat_3, axiom,  (! [A] :  (l1_pre_topc(A) =>  ( (v2_pre_topc(A) & v1_tdlat_3(A))  =>  (v2_pre_topc(A) & v3_tdlat_3(A)) ) ) ) ).
fof(cc8_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v4_funct_1(A)) ) ).
fof(cc8_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v8_pre_topc(A) => v7_pre_topc(A)) ) ) ).
fof(cc8_tdlat_3, axiom,  (! [A] :  (l1_pre_topc(A) =>  ( (v2_pre_topc(A) & v2_tdlat_3(A))  =>  (v2_pre_topc(A) & v3_tdlat_3(A)) ) ) ) ).
fof(fc10_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  ~ (v1_xboole_0(k2_zfmisc_1(A, B))) ) ) ).
fof(fc14_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  => v4_funct_1(k1_tarski(A))) ) ).
fof(fc1_struct_0, axiom,  (! [A] :  ( (v2_struct_0(A) & l1_struct_0(A))  => v1_xboole_0(u1_struct_0(A))) ) ).
fof(fc2_borsuk_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  => v2_compts_1(k1_tarski(B), A)) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
fof(fc2_zfmisc_1, axiom,  (! [A] : v1_zfmisc_1(k1_tarski(A))) ).
fof(fc3_zfmisc_1, axiom,  (! [A, B] :  (v1_xboole_0(B) => v1_xboole_0(k2_zfmisc_1(A, B))) ) ).
fof(fc4_zfmisc_1, axiom,  (! [A, B] :  (v1_xboole_0(A) => v1_xboole_0(k2_zfmisc_1(A, B))) ) ).
fof(rc1_compts_1, axiom,  (? [A] :  (l1_pre_topc(A) &  ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & v8_pre_topc(A)) ) ) ) ).
fof(rc1_funct_1, axiom,  (? [A] :  (v1_relat_1(A) & v1_funct_1(A)) ) ).
fof(rc1_relat_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v1_relat_1(A)) ) ).
fof(rc1_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(rc1_xboole_0, axiom,  (? [A] : v1_xboole_0(A)) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(rc2_xboole_0, axiom,  (? [A] :  ~ (v1_xboole_0(A)) ) ).
fof(rc4_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(rc5_tdlat_3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v2_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (? [B] :  (m1_pre_topc(B, A) &  (v2_pre_topc(B) &  (v2_tdlat_3(B) & v3_tdlat_3(B)) ) ) ) ) ) ).
fof(rc6_pre_topc, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & v4_pre_topc(B, A)) ) ) ) ).
fof(rc7_pre_topc, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  & v4_pre_topc(B, A)) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(projectivity_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => k2_pre_topc(A, k2_pre_topc(A, B))=k2_pre_topc(A, B)) ) ).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (? [B] : m1_pre_topc(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(redefinition_k8_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k8_relset_1(A, B, C, D)=k10_relat_1(C, D)) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k2_pre_topc(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => m1_subset_1(k6_domain_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k8_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k8_relset_1(A, B, C, D), k1_zfmisc_1(A))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => l1_pre_topc(B)) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_u1_struct_0, axiom, $true).
fof(cc13_tdlat_3, axiom,  (! [A] :  (l1_pre_topc(A) =>  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & v3_tdlat_3(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & v5_tdlat_3(A)) ) ) ) ) ).
fof(cc16_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v2_pre_topc(B))  =>  ~ (v1_tdlat_3(B)) ) ) ) ) ) ).
fof(cc17_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v2_pre_topc(B))  =>  ~ (v2_tdlat_3(B)) ) ) ) ) ) ).
fof(cc19_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v3_tdlat_3(B))  =>  ~ (v1_tdlat_3(B)) ) ) ) ) ) ).
fof(cc1_pre_topc, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) => v2_pre_topc(B)) ) ) ) ).
fof(cc21_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v3_tdlat_3(B))  =>  ~ (v2_tdlat_3(B)) ) ) ) ) ) ).
fof(cc35_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ( ~ (v2_struct_0(B))  & v4_tex_2(B, A))  =>  ( ~ (v2_struct_0(B))  & v1_tdlat_3(B)) ) ) ) ) ) ).
fof(cc5_compts_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v2_struct_0(A) => v8_pre_topc(A)) ) ) ).
fof(cc5_tex_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  ~ (v3_tdlat_3(A)) ) )  =>  ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  ( ~ (v1_tdlat_3(A))  &  ~ (v2_tdlat_3(A)) ) ) ) ) ) ) ).
fof(cc9_tdlat_3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_pre_topc(B, A) =>  ( ~ (v2_struct_0(B))  =>  ( ~ (v2_struct_0(B))  & v3_tdlat_3(B)) ) ) ) ) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc1_tops_1, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => v4_pre_topc(k2_pre_topc(A, B), A)) ) ).
fof(fc6_relat_1, axiom,  (! [A, B] : v1_relat_1(k2_zfmisc_1(A, B))) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t76_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_tex_2(B, A) & m1_pre_topc(B, A)) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) &  (v5_pre_topc(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) ) )  =>  (v3_borsuk_1(C, A, B) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) =>  (D=E => k8_relset_1(u1_struct_0(A), u1_struct_0(B), C, D)=k2_pre_topc(A, E)) ) ) ) ) ) ) ) ) ) ) ) ).
