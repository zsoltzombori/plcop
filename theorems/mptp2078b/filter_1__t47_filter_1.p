% Mizar problem: t47_filter_1,filter_1,1859,62 
fof(t47_filter_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v17_lattices(A) & l3_lattices(A)) ) )  &  ( ~ (v2_struct_0(B))  &  (v10_lattices(B) &  (v17_lattices(B) & l3_lattices(B)) ) ) )  <=>  ( ~ (v2_struct_0(k7_filter_1(A, B)))  &  (v10_lattices(k7_filter_1(A, B)) &  (v17_lattices(k7_filter_1(A, B)) & l3_lattices(k7_filter_1(A, B))) ) ) ) ) ) ) ) ).
fof(abstractness_v3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (v3_lattices(A) => A=g3_lattices(u1_struct_0(A), u2_lattices(A), u1_lattices(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc10_funct_1, axiom,  (! [A] :  (v4_funct_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v4_funct_1(B)) ) ) ) ).
fof(cc10_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v19_lattices(B, A) => v21_lattices(B, A)) ) ) ) ) ).
fof(cc1_filter_0, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v3_filter_0(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v14_lattices(A) & v3_filter_0(A)) ) ) ) ) ) ).
fof(cc1_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_funct_1(A)) ) ).
fof(cc1_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v1_partfun1(C, A))  =>  (v1_funct_1(C) & v1_funct_2(C, A, B)) ) ) ) ) ).
fof(cc1_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v1_lattice2(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v13_lattices(A) & v3_filter_0(A)) ) ) ) ) ) ).
fof(cc1_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v10_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) & v9_lattices(A)) ) ) ) ) ) ) ) ) ).
fof(cc1_partfun1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_partfun1(C, A)) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc1_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) => v7_struct_0(A)) ) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(cc2_filter_0, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v3_filter_0(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v11_lattices(A) & v3_filter_0(A)) ) ) ) ) ) ).
fof(cc2_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ) ).
fof(cc2_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v13_lattices(A) & v3_filter_0(A)) ) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v1_lattice2(A)) ) ) ) ) ).
fof(cc2_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) & v9_lattices(A)) ) ) ) ) )  =>  ( ~ (v2_struct_0(A))  & v10_lattices(A)) ) ) ) ).
fof(cc2_partfun1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ~ (v1_partfun1(C, A)) ) ) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(cc2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v7_struct_0(A))  =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(cc2_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ~ (v1_subset_1(B, A))  =>  ~ (v1_xboole_0(B)) ) ) ) ) ) ).
fof(cc3_filter_0, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v17_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v17_lattices(A) & v3_filter_0(A)) ) ) ) ) ) ).
fof(cc3_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_funct_1(B)) ) ) ) ).
fof(cc3_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v8_struct_0(A) & v10_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v13_lattices(A)) ) ) ) ) ).
fof(cc3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v13_lattices(A) & v14_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  & v15_lattices(A)) ) ) ) ).
fof(cc3_relset_1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_xboole_0(C)) ) ) ) ).
fof(cc3_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (v1_xboole_0(B) => v1_subset_1(B, A)) ) ) ) ) ).
fof(cc4_filter_0, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v3_filter_0(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v11_lattices(A)) ) ) ) ) ).
fof(cc4_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc4_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v8_struct_0(A) & v10_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v14_lattices(A)) ) ) ) ) ).
fof(cc4_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v15_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v13_lattices(A) & v14_lattices(A)) ) ) ) ) ).
fof(cc4_relset_1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) => v1_xboole_0(C)) ) ) ) ).
fof(cc4_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) =>  (v2_struct_0(A) & v8_struct_0(A)) ) ) ) ).
fof(cc4_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ~ (v1_subset_1(B, A)) ) ) ) ) ).
fof(cc5_funct_1, axiom,  (! [A] :  (v1_zfmisc_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_zfmisc_1(B)) ) ) ) ).
fof(cc5_funct_2, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v1_funct_2(C, A, B))  =>  (v1_funct_1(C) & v1_partfun1(C, A)) ) ) ) ) ) ).
fof(cc5_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v8_struct_0(A) & v10_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v15_lattices(A)) ) ) ) ) ).
fof(cc5_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v17_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v11_lattices(A) &  (v15_lattices(A) & v16_lattices(A)) ) ) ) ) ) ).
fof(cc5_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ( ~ (v2_struct_0(A))  &  ~ (v8_struct_0(A)) ) ) ) ) ).
fof(cc6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) )  =>  ( ~ (v1_zfmisc_1(A))  &  (v1_relat_1(A) & v1_funct_1(A)) ) ) ) ).
fof(cc6_funct_2, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v1_funct_2(C, A, B))  =>  (v1_funct_1(C) &  ( ~ (v1_xboole_0(C))  & v1_funct_2(C, A, B)) ) ) ) ) ) ) ).
fof(cc6_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v8_struct_0(A) &  (v10_lattices(A) & v11_lattices(A)) ) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v1_lattice2(A)) ) ) ) ) ).
fof(cc6_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v11_lattices(A) &  (v15_lattices(A) & v16_lattices(A)) ) )  =>  ( ~ (v2_struct_0(A))  & v17_lattices(A)) ) ) ) ).
fof(cc6_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v7_struct_0(A) => v8_struct_0(A)) ) ) ).
fof(cc7_funct_1, axiom,  (! [A] :  ( (v1_zfmisc_1(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc7_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v11_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v12_lattices(A)) ) ) ) ) ).
fof(cc7_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ~ (v7_struct_0(A)) ) ) ) ).
fof(cc8_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v4_funct_1(A)) ) ).
fof(cc8_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) =>  (v18_lattices(B, A) & v19_lattices(B, A)) ) ) ) ) ) ).
fof(cc9_funct_1, axiom,  (! [A] :  (v4_funct_1(A) =>  (! [B] :  (m1_subset_1(B, A) =>  (v1_relat_1(B) & v1_funct_1(B)) ) ) ) ) ).
fof(cc9_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v18_lattices(B, A) => v20_lattices(B, A)) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d7_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l3_lattices(B))  => k7_filter_1(A, B)=g3_lattices(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B)), k6_filter_1(u1_struct_0(A), u1_struct_0(B), u2_lattices(A), u2_lattices(B)), k6_filter_1(u1_struct_0(A), u1_struct_0(B), u1_lattices(A), u1_lattices(B)))) ) ) ) ).
fof(dt_g3_lattices, axiom,  (! [A, B, C] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) )  =>  (v3_lattices(g3_lattices(A, B, C)) & l3_lattices(g3_lattices(A, B, C))) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_4, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k3_funct_4(A, B)) & v1_funct_1(k3_funct_4(A, B))) ) ) ).
fof(dt_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  =>  (v1_funct_1(k6_filter_1(A, B, C, D)) &  (v1_funct_2(k6_filter_1(A, B, C, D), k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B)) & m1_subset_1(k6_filter_1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B))))) ) ) ) ).
fof(dt_k7_filter_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  &  ( ~ (v2_struct_0(B))  & l3_lattices(B)) )  =>  (v3_lattices(k7_filter_1(A, B)) & l3_lattices(k7_filter_1(A, B))) ) ) ).
fof(dt_l1_lattices, axiom,  (! [A] :  (l1_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l2_lattices, axiom,  (! [A] :  (l2_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_l3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (l1_lattices(A) & l2_lattices(A)) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_lattices, axiom,  (! [A] :  (l1_lattices(A) =>  (v1_funct_1(u1_lattices(A)) &  (v1_funct_2(u1_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & m1_subset_1(u1_lattices(A), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A))))) ) ) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u2_lattices, axiom,  (! [A] :  (l2_lattices(A) =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & m1_subset_1(u2_lattices(A), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A))))) ) ) ) ).
fof(existence_l1_lattices, axiom,  (? [A] : l1_lattices(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l2_lattices, axiom,  (? [A] : l2_lattices(A)) ).
fof(existence_l3_lattices, axiom,  (? [A] : l3_lattices(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fc10_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v14_lattices(A) & l3_lattices(A)) ) )  =>  (v1_funct_1(u1_lattices(A)) &  (v1_funct_2(u1_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v1_setwiseo(u1_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc10_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  ~ (v1_xboole_0(k2_zfmisc_1(A, B))) ) ) ).
fof(fc1_struct_0, axiom,  (! [A] :  ( (v2_struct_0(A) & l1_struct_0(A))  => v1_xboole_0(u1_struct_0(A))) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc2_filter_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  &  ( ~ (v2_struct_0(B))  & l3_lattices(B)) )  =>  ( ~ (v2_struct_0(k7_filter_1(A, B)))  & v3_lattices(k7_filter_1(A, B))) ) ) ).
fof(fc2_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v3_binop_1(u2_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc3_filter_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) ) )  =>  (v3_lattices(k7_filter_1(A, B)) & v10_lattices(k7_filter_1(A, B))) ) ) ).
fof(fc3_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) & l2_lattices(A)) )  =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v1_binop_1(u2_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc3_lattices, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) ) )  =>  ( ~ (v2_struct_0(g3_lattices(A, B, C)))  & v3_lattices(g3_lattices(A, B, C))) ) ) ).
fof(fc4_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v5_lattices(A) & l2_lattices(A)) )  =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v2_binop_1(u2_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc5_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (v1_funct_1(u1_lattices(A)) &  (v1_funct_2(u1_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v3_binop_1(u1_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc6_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) & l1_lattices(A)) )  =>  (v1_funct_1(u1_lattices(A)) &  (v1_funct_2(u1_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v1_binop_1(u1_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc6_struct_0, axiom,  (! [A] :  ( ( ~ (v7_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_zfmisc_1(u1_struct_0(A))) ) ) ).
fof(fc7_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v7_lattices(A) & l1_lattices(A)) )  =>  (v1_funct_1(u1_lattices(A)) &  (v1_funct_2(u1_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v2_binop_1(u1_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc7_struct_0, axiom,  (! [A] :  ( (v7_struct_0(A) & l1_struct_0(A))  => v1_zfmisc_1(u1_struct_0(A))) ) ).
fof(fc8_struct_0, axiom,  (! [A] :  ( (v8_struct_0(A) & l1_struct_0(A))  => v1_finset_1(u1_struct_0(A))) ) ).
fof(fc9_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v13_lattices(A) & l3_lattices(A)) ) )  =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v1_setwiseo(u2_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc9_struct_0, axiom,  (! [A] :  ( ( ~ (v8_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_finset_1(u1_struct_0(A))) ) ) ).
fof(free_g3_lattices, axiom,  (! [A, B, C] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) )  =>  (! [D, E, F] :  (g3_lattices(A, B, C)=g3_lattices(D, E, F) =>  (A=D &  (B=E & C=F) ) ) ) ) ) ).
fof(rc10_lattices, axiom,  (? [A] :  (l3_lattices(A) &  ( ~ (v2_struct_0(A))  &  (v3_lattices(A) &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) &  (v10_lattices(A) &  (v11_lattices(A) &  (v12_lattices(A) &  (v13_lattices(A) & v14_lattices(A)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(rc10_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  &  ~ (v7_struct_0(A)) ) ) ) ).
fof(rc11_lattices, axiom,  (? [A] :  (l3_lattices(A) &  ( ~ (v2_struct_0(A))  &  (v3_lattices(A) &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) &  (v10_lattices(A) & v15_lattices(A)) ) ) ) ) ) ) ) ) ) ) ).
fof(rc12_lattices, axiom,  (? [A] :  (l3_lattices(A) &  ( ~ (v2_struct_0(A))  &  (v3_lattices(A) &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) &  (v10_lattices(A) &  (v15_lattices(A) & v16_lattices(A)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(rc13_lattices, axiom,  (? [A] :  (l3_lattices(A) &  ( ~ (v2_struct_0(A))  &  (v3_lattices(A) &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) &  (v10_lattices(A) & v17_lattices(A)) ) ) ) ) ) ) ) ) ) ) ).
fof(rc14_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  (v18_lattices(B, A) & v19_lattices(B, A)) ) ) ) ) ) ).
fof(rc1_filter_0, axiom,  (? [A] :  (l3_lattices(A) &  ( ~ (v2_struct_0(A))  &  (v3_lattices(A) &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) &  (v10_lattices(A) & v3_filter_0(A)) ) ) ) ) ) ) ) ) ) ) ).
fof(rc1_funct_1, axiom,  (? [A] :  (v1_relat_1(A) & v1_funct_1(A)) ) ).
fof(rc1_funct_2, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v5_relat_1(C, B) &  (v1_funct_1(C) & v1_funct_2(C, A, B)) ) ) ) ) ) ) ).
fof(rc1_lattice2, axiom,  (? [A] :  (l3_lattices(A) &  ( ~ (v2_struct_0(A))  &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) &  (v10_lattices(A) & v1_lattice2(A)) ) ) ) ) ) ) ) ) ) ).
fof(rc1_partfun1, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v5_relat_1(C, B) & v1_funct_1(C)) ) ) ) ) ) ).
fof(rc1_relset_1, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_xboole_0(C) &  (v1_relat_1(C) &  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ) ) ).
fof(rc1_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(rc20_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ).
fof(rc2_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ).
fof(rc2_lattice2, axiom,  (? [A] :  (l3_lattices(A) &  ( ~ (v2_struct_0(A))  &  (v3_lattices(A) &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) &  (v10_lattices(A) & v1_lattice2(A)) ) ) ) ) ) ) ) ) ) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(rc3_lattices, axiom,  (? [A] :  (l3_lattices(A) & v3_lattices(A)) ) ).
fof(rc3_partfun1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v5_relat_1(C, B) &  (v1_funct_1(C) &  ~ (v1_xboole_0(C)) ) ) ) ) ) ) ) ) ).
fof(rc3_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_subset_1(B, A)) ) ) ) ).
fof(rc4_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(rc4_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_subset_1(B, A)) ) ) ) ).
fof(rc5_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) ) ) ).
fof(rc6_funct_1, axiom,  (! [A, B] :  (? [C] :  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v5_relat_1(C, B) & v1_funct_1(C)) ) ) ) ) ).
fof(rc6_lattices, axiom,  (? [A] :  (l3_lattices(A) &  ( ~ (v2_struct_0(A))  & v3_lattices(A)) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
fof(rc9_lattices, axiom,  (? [A] :  (l3_lattices(A) &  ( ~ (v2_struct_0(A))  &  (v3_lattices(A) & v10_lattices(A)) ) ) ) ).
fof(rc9_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  & v7_struct_0(A)) ) ) ).
fof(redefinition_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  => k6_filter_1(A, B, C, D)=k3_funct_4(C, D)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t39_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v11_lattices(A) & l3_lattices(A)) ) )  &  ( ~ (v2_struct_0(B))  &  (v10_lattices(B) &  (v11_lattices(B) & l3_lattices(B)) ) ) )  <=>  ( ~ (v2_struct_0(k7_filter_1(A, B)))  &  (v10_lattices(k7_filter_1(A, B)) &  (v11_lattices(k7_filter_1(A, B)) & l3_lattices(k7_filter_1(A, B))) ) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t46_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v15_lattices(A) &  (v16_lattices(A) & l3_lattices(A)) ) ) )  &  ( ~ (v2_struct_0(B))  &  (v10_lattices(B) &  (v15_lattices(B) &  (v16_lattices(B) & l3_lattices(B)) ) ) ) )  <=>  ( ~ (v2_struct_0(k7_filter_1(A, B)))  &  (v10_lattices(k7_filter_1(A, B)) &  (v15_lattices(k7_filter_1(A, B)) &  (v16_lattices(k7_filter_1(A, B)) & l3_lattices(k7_filter_1(A, B))) ) ) ) ) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
