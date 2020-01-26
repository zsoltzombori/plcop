% Mizar problem: t34_filter_1,filter_1,1464,43 
fof(t34_filter_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  &  (v10_lattices(C) & l3_lattices(C)) )  =>  ( (r1_filter_1(A, B) & r1_filter_1(B, C))  => r1_filter_1(A, C)) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc1_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_funct_1(A)) ) ).
fof(cc1_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v10_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) & v9_lattices(A)) ) ) ) ) ) ) ) ) ).
fof(cc1_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) => v7_struct_0(A)) ) ) ).
fof(cc2_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ) ).
fof(cc2_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) & v9_lattices(A)) ) ) ) ) )  =>  ( ~ (v2_struct_0(A))  & v10_lattices(A)) ) ) ) ).
fof(cc2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v7_struct_0(A))  =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(cc3_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v8_struct_0(A) & v10_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v13_lattices(A)) ) ) ) ) ).
fof(cc3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v13_lattices(A) & v14_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  & v15_lattices(A)) ) ) ) ).
fof(cc4_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc4_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v8_struct_0(A) & v10_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v14_lattices(A)) ) ) ) ) ).
fof(cc4_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v15_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v13_lattices(A) & v14_lattices(A)) ) ) ) ) ).
fof(cc4_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) =>  (v2_struct_0(A) & v8_struct_0(A)) ) ) ) ).
fof(cc5_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  &  (v8_struct_0(A) & v10_lattices(A)) )  =>  ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & v15_lattices(A)) ) ) ) ) ).
fof(cc5_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ( ~ (v2_struct_0(A))  &  ~ (v8_struct_0(A)) ) ) ) ) ).
fof(cc6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) )  =>  ( ~ (v1_zfmisc_1(A))  &  (v1_relat_1(A) & v1_funct_1(A)) ) ) ) ).
fof(cc6_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v7_struct_0(A) => v8_struct_0(A)) ) ) ).
fof(cc7_funct_1, axiom,  (! [A] :  ( (v1_zfmisc_1(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc7_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ~ (v7_struct_0(A)) ) ) ) ).
fof(cc8_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v4_funct_1(A)) ) ).
fof(cc9_funct_1, axiom,  (! [A] :  (v4_funct_1(A) =>  (! [B] :  (m1_subset_1(B, A) =>  (v1_relat_1(B) & v1_funct_1(B)) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d8_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  => k8_filter_1(A)=a_1_0_filter_1(A)) ) ).
fof(d9_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  (r1_filter_1(A, B) <=> r4_wellord1(k8_filter_1(A), k8_filter_1(B))) ) ) ) ) ).
fof(dt_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => m1_subset_1(k1_domain_1(A, B, C, D), k2_zfmisc_1(A, B))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k8_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  => v1_relat_1(k8_filter_1(A))) ) ).
fof(dt_l1_lattices, axiom,  (! [A] :  (l1_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l2_lattices, axiom,  (! [A] :  (l2_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_l3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (l1_lattices(A) & l2_lattices(A)) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_lattices, axiom,  (? [A] : l1_lattices(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l2_lattices, axiom,  (? [A] : l2_lattices(A)) ).
fof(existence_l3_lattices, axiom,  (? [A] : l3_lattices(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fc10_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  ~ (v1_xboole_0(k2_zfmisc_1(A, B))) ) ) ).
fof(fc1_struct_0, axiom,  (! [A] :  ( (v2_struct_0(A) & l1_struct_0(A))  => v1_xboole_0(u1_struct_0(A))) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc6_struct_0, axiom,  (! [A] :  ( ( ~ (v7_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_zfmisc_1(u1_struct_0(A))) ) ) ).
fof(fc7_struct_0, axiom,  (! [A] :  ( (v7_struct_0(A) & l1_struct_0(A))  => v1_zfmisc_1(u1_struct_0(A))) ) ).
fof(fc8_struct_0, axiom,  (! [A] :  ( (v8_struct_0(A) & l1_struct_0(A))  => v1_finset_1(u1_struct_0(A))) ) ).
fof(fc9_struct_0, axiom,  (! [A] :  ( ( ~ (v8_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_finset_1(u1_struct_0(A))) ) ) ).
fof(fraenkel_a_1_0_filter_1, axiom,  (! [A, B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  (r2_hidden(A, a_1_0_filter_1(B)) <=>  (? [C, D] :  ( (m1_subset_1(C, u1_struct_0(B)) & m1_subset_1(D, u1_struct_0(B)))  &  (A=k1_domain_1(u1_struct_0(B), u1_struct_0(B), C, D) & r3_lattices(B, C, D)) ) ) ) ) ) ).
fof(rc10_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  &  ~ (v7_struct_0(A)) ) ) ) ).
fof(rc1_funct_1, axiom,  (? [A] :  (v1_relat_1(A) & v1_funct_1(A)) ) ).
fof(rc2_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ).
fof(rc5_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
fof(rc9_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  & v7_struct_0(A)) ) ) ).
fof(redefinition_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => k1_domain_1(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_r3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) & l3_lattices(A)) ) ) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_lattices(A, B, C) <=> r1_lattices(A, B, C)) ) ) ).
fof(reflexivity_r1_filter_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) ) )  => r1_filter_1(A, A)) ) ).
fof(reflexivity_r3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) & l3_lattices(A)) ) ) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_lattices(A, B, B)) ) ).
fof(symmetry_r1_filter_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) ) )  =>  (r1_filter_1(A, B) => r1_filter_1(B, A)) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t52_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  ( (r4_wellord1(A, B) & r4_wellord1(B, C))  => r4_wellord1(A, C)) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
