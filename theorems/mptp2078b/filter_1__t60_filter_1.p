% Mizar problem: t60_filter_1,filter_1,2345,17 
fof(t60_filter_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v3_filter_0(A) & l3_lattices(A)) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v19_lattices(B, A) &  (v20_lattices(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ( (r2_hidden(C, k6_eqrel_1(u1_struct_0(A), u1_struct_0(A), k9_filter_0(A, B), D)) & r2_hidden(E, k6_eqrel_1(u1_struct_0(A), u1_struct_0(A), k9_filter_0(A, B), D)))  =>  (r2_hidden(k3_lattices(A, C, E), k6_eqrel_1(u1_struct_0(A), u1_struct_0(A), k9_filter_0(A, B), D)) & r2_hidden(k4_lattices(A, C, E), k6_eqrel_1(u1_struct_0(A), u1_struct_0(A), k9_filter_0(A, B), D))) ) ) ) ) ) ) ) ) ) ) ) ).
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
fof(cc2_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v3_funct_2(C, A, B))  =>  (v1_funct_1(C) &  (v2_funct_1(C) & v2_funct_2(C, B)) ) ) ) ) ) ).
fof(cc2_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v13_lattices(A) & v3_filter_0(A)) ) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v1_lattice2(A)) ) ) ) ) ).
fof(cc2_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) & v9_lattices(A)) ) ) ) ) )  =>  ( ~ (v2_struct_0(A))  & v10_lattices(A)) ) ) ) ).
fof(cc2_partfun1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ~ (v1_partfun1(C, A)) ) ) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(cc2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v7_struct_0(A))  =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(cc2_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ~ (v1_subset_1(B, A))  =>  ~ (v1_xboole_0(B)) ) ) ) ) ) ).
fof(cc3_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_funct_1(B)) ) ) ) ).
fof(cc3_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) &  (v2_funct_1(C) & v2_funct_2(C, B)) )  =>  (v1_funct_1(C) & v3_funct_2(C, A, B)) ) ) ) ) ).
fof(cc3_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v8_struct_0(A) & v10_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v13_lattices(A)) ) ) ) ) ).
fof(cc3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v13_lattices(A) & v14_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  & v15_lattices(A)) ) ) ) ).
fof(cc3_partfun1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v3_relat_2(A) & v8_relat_2(A)) )  =>  (v1_relat_1(A) & v1_relat_2(A)) ) ) ).
fof(cc3_relset_1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_xboole_0(C)) ) ) ) ).
fof(cc3_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (v1_xboole_0(B) => v1_subset_1(B, A)) ) ) ) ) ).
fof(cc4_filter_0, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v3_filter_0(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v11_lattices(A)) ) ) ) ) ).
fof(cc4_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc4_funct_2, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  ( (v1_relat_2(B) &  (v1_funct_1(B) &  (v1_partfun1(B, A) & v1_funct_2(B, A, A)) ) )  =>  (v1_funct_1(B) &  (v1_funct_2(B, A, A) & v3_funct_2(B, A, A)) ) ) ) ) ) ).
fof(cc4_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v8_struct_0(A) & v10_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v14_lattices(A)) ) ) ) ) ).
fof(cc4_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v15_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v13_lattices(A) & v14_lattices(A)) ) ) ) ) ).
fof(cc4_relset_1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) => v1_xboole_0(C)) ) ) ) ).
fof(cc4_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) =>  (v2_struct_0(A) & v8_struct_0(A)) ) ) ) ).
fof(cc4_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ~ (v1_subset_1(B, A)) ) ) ) ) ).
fof(cc5_funct_1, axiom,  (! [A] :  (v1_zfmisc_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_zfmisc_1(B)) ) ) ) ).
fof(cc5_funct_2, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v1_funct_2(C, A, B))  =>  (v1_funct_1(C) & v1_partfun1(C, A)) ) ) ) ) ) ).
fof(cc5_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v8_struct_0(A) & v10_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v15_lattices(A)) ) ) ) ) ).
fof(cc5_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ( ~ (v2_struct_0(A))  &  ~ (v8_struct_0(A)) ) ) ) ) ).
fof(cc6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) )  =>  ( ~ (v1_zfmisc_1(A))  &  (v1_relat_1(A) & v1_funct_1(A)) ) ) ) ).
fof(cc6_funct_2, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v1_funct_2(C, A, B))  =>  (v1_funct_1(C) &  ( ~ (v1_xboole_0(C))  & v1_funct_2(C, A, B)) ) ) ) ) ) ) ).
fof(cc6_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v8_struct_0(A) &  (v10_lattices(A) & v11_lattices(A)) ) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v1_lattice2(A)) ) ) ) ) ).
fof(cc6_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v7_struct_0(A) => v8_struct_0(A)) ) ) ).
fof(cc7_funct_1, axiom,  (! [A] :  ( (v1_zfmisc_1(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc7_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v11_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v12_lattices(A)) ) ) ) ) ).
fof(cc7_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ~ (v7_struct_0(A)) ) ) ) ).
fof(cc8_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v4_funct_1(A)) ) ).
fof(cc8_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) =>  (v18_lattices(B, A) & v19_lattices(B, A)) ) ) ) ) ) ).
fof(cc9_funct_1, axiom,  (! [A] :  (v4_funct_1(A) =>  (! [B] :  (m1_subset_1(B, A) =>  (v1_relat_1(B) & v1_funct_1(B)) ) ) ) ) ).
fof(cc9_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v18_lattices(B, A) => v20_lattices(B, A)) ) ) ) ) ).
fof(commutativity_k3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) & l2_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k3_lattices(A, B, C)=k3_lattices(A, C, B)) ) ).
fof(commutativity_k4_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) & l1_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k4_lattices(A, B, C)=k4_lattices(A, C, B)) ) ).
fof(d11_filter_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k7_filter_0(A, B, C)=k4_lattices(A, k4_filter_0(A, B, C), k4_filter_0(A, C, B))) ) ) ) ) ) ).
fof(d1_binop_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] : k1_binop_1(A, B, C)=k1_funct_1(A, k4_tarski(B, C))) ) ) ) ).
fof(d1_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l2_lattices(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k1_lattices(A, B, C)=k4_binop_1(u1_struct_0(A), u2_lattices(A), B, C)) ) ) ) ) ) ).
fof(d2_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_lattices(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k2_lattices(A, B, C)=k4_binop_1(u1_struct_0(A), u1_lattices(A), B, C)) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k11_relat_1, axiom, $true).
fof(dt_k1_binop_1, axiom, $true).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l2_lattices(A))  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k1_lattices(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_lattices(A))  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k2_lattices(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) & l2_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k3_lattices(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k4_binop_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (m1_subset_1(C, A) & m1_subset_1(D, A)) )  => m1_subset_1(k4_binop_1(A, B, C, D), A)) ) ).
fof(dt_k4_filter_0, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k4_filter_0(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k4_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) & l1_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k4_lattices(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k6_eqrel_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k6_eqrel_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k7_filter_0, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k7_filter_0(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k8_filter_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  ( ~ (v1_xboole_0(B))  &  (v19_lattices(B, A) &  (v20_lattices(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) ) )  => v1_relat_1(k8_filter_0(A, B))) ) ).
fof(dt_k9_filter_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v3_filter_0(A) & l3_lattices(A)) ) )  &  ( ~ (v1_xboole_0(B))  &  (v19_lattices(B, A) &  (v20_lattices(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) ) )  =>  (v3_relat_2(k9_filter_0(A, B)) &  (v8_relat_2(k9_filter_0(A, B)) &  (v1_partfun1(k9_filter_0(A, B), u1_struct_0(A)) & m1_subset_1(k9_filter_0(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ) ) ) ).
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
fof(fc17_funct_1, axiom,  (! [A, B, C] :  ( (v4_funct_1(A) &  (v1_relat_1(C) &  (v5_relat_1(C, A) & v1_funct_1(C)) ) )  =>  (v1_relat_1(k1_funct_1(C, B)) & v1_funct_1(k1_funct_1(C, B))) ) ) ).
fof(fc1_struct_0, axiom,  (! [A] :  ( (v2_struct_0(A) & l1_struct_0(A))  => v1_xboole_0(u1_struct_0(A))) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc2_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v3_binop_1(u2_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc3_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) & l2_lattices(A)) )  =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v1_binop_1(u2_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc4_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v5_lattices(A) & l2_lattices(A)) )  =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v2_binop_1(u2_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc5_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (v1_funct_1(u1_lattices(A)) &  (v1_funct_2(u1_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v3_binop_1(u1_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc6_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) & l1_lattices(A)) )  =>  (v1_funct_1(u1_lattices(A)) &  (v1_funct_2(u1_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v1_binop_1(u1_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc6_struct_0, axiom,  (! [A] :  ( ( ~ (v7_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_zfmisc_1(u1_struct_0(A))) ) ) ).
fof(fc7_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v7_lattices(A) & l1_lattices(A)) )  =>  (v1_funct_1(u1_lattices(A)) &  (v1_funct_2(u1_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v2_binop_1(u1_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc7_struct_0, axiom,  (! [A] :  ( (v7_struct_0(A) & l1_struct_0(A))  => v1_zfmisc_1(u1_struct_0(A))) ) ).
fof(fc8_struct_0, axiom,  (! [A] :  ( (v8_struct_0(A) & l1_struct_0(A))  => v1_finset_1(u1_struct_0(A))) ) ).
fof(fc9_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v13_lattices(A) & l3_lattices(A)) ) )  =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & v1_setwiseo(u2_lattices(A), u1_struct_0(A))) ) ) ) ).
fof(fc9_struct_0, axiom,  (! [A] :  ( ( ~ (v8_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_finset_1(u1_struct_0(A))) ) ) ).
fof(l72_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v3_filter_0(A) & l3_lattices(A)) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v19_lattices(B, A) &  (v20_lattices(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(C, k6_eqrel_1(u1_struct_0(A), u1_struct_0(A), k9_filter_0(A, B), D)) <=> r2_hidden(k7_filter_0(A, C, D), B)) ) ) ) ) ) ) ) ) ).
fof(rc10_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  &  ~ (v7_struct_0(A)) ) ) ) ).
fof(rc14_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  (v18_lattices(B, A) & v19_lattices(B, A)) ) ) ) ) ) ).
fof(rc1_funct_1, axiom,  (? [A] :  (v1_relat_1(A) & v1_funct_1(A)) ) ).
fof(rc1_funct_2, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v5_relat_1(C, B) &  (v1_funct_1(C) & v1_funct_2(C, A, B)) ) ) ) ) ) ) ).
fof(rc1_lattice2, axiom,  (? [A] :  (l3_lattices(A) &  ( ~ (v2_struct_0(A))  &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) &  (v10_lattices(A) & v1_lattice2(A)) ) ) ) ) ) ) ) ) ) ).
fof(rc1_partfun1, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v5_relat_1(C, B) & v1_funct_1(C)) ) ) ) ) ) ).
fof(rc1_relset_1, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_xboole_0(C) &  (v1_relat_1(C) &  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ) ) ).
fof(rc1_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(rc20_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ).
fof(rc2_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ).
fof(rc2_funct_2, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) &  (v1_relat_1(B) &  (v4_relat_1(B, A) &  (v5_relat_1(B, A) &  (v1_funct_1(B) &  (v1_funct_2(B, A, A) & v3_funct_2(B, A, A)) ) ) ) ) ) ) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(rc3_partfun1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v5_relat_1(C, B) &  (v1_funct_1(C) &  ~ (v1_xboole_0(C)) ) ) ) ) ) ) ) ) ).
fof(rc3_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_subset_1(B, A)) ) ) ) ).
fof(rc4_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(rc4_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_subset_1(B, A)) ) ) ) ).
fof(rc5_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) ) ) ).
fof(rc6_funct_1, axiom,  (! [A, B] :  (? [C] :  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v5_relat_1(C, B) & v1_funct_1(C)) ) ) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
fof(rc9_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  & v7_struct_0(A)) ) ) ).
fof(redefinition_k3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) & l2_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k3_lattices(A, B, C)=k1_lattices(A, B, C)) ) ).
fof(redefinition_k4_binop_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (m1_subset_1(C, A) & m1_subset_1(D, A)) )  => k4_binop_1(A, B, C, D)=k1_binop_1(B, C, D)) ) ).
fof(redefinition_k4_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) & l1_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k4_lattices(A, B, C)=k2_lattices(A, B, C)) ) ).
fof(redefinition_k6_eqrel_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k6_eqrel_1(A, B, C, D)=k11_relat_1(C, D)) ) ).
fof(redefinition_k9_filter_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v3_filter_0(A) & l3_lattices(A)) ) )  &  ( ~ (v1_xboole_0(B))  &  (v19_lattices(B, A) &  (v20_lattices(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) ) )  => k9_filter_0(A, B)=k8_filter_0(A, B)) ) ).
fof(t17_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) & l3_lattices(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => k1_lattices(A, B, B)=B) ) ) ) ).
fof(t18_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) & l3_lattices(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => k4_lattices(A, B, B)=B) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t59_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v3_filter_0(A) & l3_lattices(A)) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v19_lattices(B, A) &  (v20_lattices(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(A)) =>  ( (r2_hidden(k7_filter_0(A, C, D), B) & r2_hidden(k7_filter_0(A, E, F), B))  =>  (r2_hidden(k7_filter_0(A, k3_lattices(A, C, E), k3_lattices(A, D, F)), B) & r2_hidden(k7_filter_0(A, k4_lattices(A, C, E), k4_lattices(A, D, F)), B)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
