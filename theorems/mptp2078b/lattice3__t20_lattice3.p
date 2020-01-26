% Mizar problem: t20_lattice3,lattice3,998,64 
fof(t20_lattice3, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (k6_lattice3(u1_struct_0(A), k2_lattice3(A))=k2_lattice3(k1_lattice2(A)) & k7_lattice3(k3_lattice3(A))=k3_lattice3(k1_lattice2(A))) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(abstractness_v3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (v3_lattices(A) => A=g3_lattices(u1_struct_0(A), u2_lattices(A), u1_lattices(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d2_lattice2, axiom,  (! [A] :  (l3_lattices(A) => k1_lattice2(A)=g3_lattices(u1_struct_0(A), u1_lattices(A), u2_lattices(A))) ) ).
fof(d2_lattice3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  => k3_lattice3(A)=g1_orders_2(u1_struct_0(A), k2_lattice3(A))) ) ).
fof(d2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (A=B <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), A) <=> r2_hidden(k4_tarski(C, D), B)) ) ) ) ) ) ) ) ).
fof(d5_lattice3, axiom,  (! [A] :  (l1_orders_2(A) => k7_lattice3(A)=g1_orders_2(u1_struct_0(A), k3_relset_1(u1_struct_0(A), u1_struct_0(A), u1_orders_2(A)))) ) ).
fof(d7_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (B=k4_relat_1(A) <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), B) <=> r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ) ) ).
fof(d8_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  => k8_filter_1(A)=a_1_0_filter_1(A)) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_g3_lattices, axiom,  (! [A, B, C] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) )  =>  (v3_lattices(g3_lattices(A, B, C)) & l3_lattices(g3_lattices(A, B, C))) ) ) ).
fof(dt_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => m1_subset_1(k1_domain_1(A, B, C, D), k2_zfmisc_1(A, B))) ) ).
fof(dt_k1_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  (v3_lattices(k1_lattice2(A)) & l3_lattices(k1_lattice2(A))) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_lattice3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (v1_partfun1(k2_lattice3(A), u1_struct_0(A)) &  (v1_relat_2(k2_lattice3(A)) &  (v4_relat_2(k2_lattice3(A)) &  (v8_relat_2(k2_lattice3(A)) & m1_subset_1(k2_lattice3(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ) ) ) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_lattice3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (v1_orders_2(k3_lattice3(A)) &  (v3_orders_2(k3_lattice3(A)) &  (v4_orders_2(k3_lattice3(A)) &  (v5_orders_2(k3_lattice3(A)) & l1_orders_2(k3_lattice3(A))) ) ) ) ) ) ).
fof(dt_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k3_relset_1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, A)))) ) ).
fof(dt_k4_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => v1_relat_1(k4_relat_1(A))) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k6_lattice3, axiom,  (! [A, B] :  ( (v1_partfun1(B, A) &  (v1_relat_2(B) &  (v4_relat_2(B) &  (v8_relat_2(B) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ) )  =>  (v1_partfun1(k6_lattice3(A, B), A) &  (v1_relat_2(k6_lattice3(A, B)) &  (v4_relat_2(k6_lattice3(A, B)) &  (v8_relat_2(k6_lattice3(A, B)) & m1_subset_1(k6_lattice3(A, B), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ) ) ) ) ).
fof(dt_k7_filter_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  &  ( ~ (v2_struct_0(B))  & l3_lattices(B)) )  =>  (v3_lattices(k7_filter_1(A, B)) & l3_lattices(k7_filter_1(A, B))) ) ) ).
fof(dt_k7_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(k7_lattice3(A)) & l1_orders_2(k7_lattice3(A))) ) ) ).
fof(dt_k8_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  => v1_relat_1(k8_filter_1(A))) ) ).
fof(dt_k9_filter_1, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  &  (m1_subset_1(C, u1_struct_0(A)) & m1_subset_1(D, u1_struct_0(B))) ) )  => m1_subset_1(k9_filter_1(A, B, C, D), u1_struct_0(k7_filter_1(A, B)))) ) ).
fof(dt_l1_lattices, axiom,  (! [A] :  (l1_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l2_lattices, axiom,  (! [A] :  (l2_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_l3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (l1_lattices(A) & l2_lattices(A)) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_lattices, axiom,  (! [A] :  (l1_lattices(A) =>  (v1_funct_1(u1_lattices(A)) &  (v1_funct_2(u1_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & m1_subset_1(u1_lattices(A), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A))))) ) ) ) ).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u2_lattices, axiom,  (! [A] :  (l2_lattices(A) =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & m1_subset_1(u2_lattices(A), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A))))) ) ) ) ).
fof(existence_l1_lattices, axiom,  (? [A] : l1_lattices(A)) ).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l2_lattices, axiom,  (? [A] : l2_lattices(A)) ).
fof(existence_l3_lattices, axiom,  (? [A] : l3_lattices(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fraenkel_a_1_0_filter_1, axiom,  (! [A, B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  (r2_hidden(A, a_1_0_filter_1(B)) <=>  (? [C, D] :  ( (m1_subset_1(C, u1_struct_0(B)) & m1_subset_1(D, u1_struct_0(B)))  &  (A=k1_domain_1(u1_struct_0(B), u1_struct_0(B), C, D) & r3_lattices(B, C, D)) ) ) ) ) ) ).
fof(fraenkel_a_1_0_lattice3, axiom,  (! [A, B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  (r2_hidden(A, a_1_0_lattice3(B)) <=>  (? [C, D] :  ( (m1_subset_1(C, u1_struct_0(B)) & m1_subset_1(D, u1_struct_0(B)))  &  (A=k9_filter_1(B, B, C, D) & r3_lattices(B, C, D)) ) ) ) ) ) ).
fof(fraenkel_a_1_3_lattice3, axiom,  (! [A, B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  (r2_hidden(A, a_1_3_lattice3(B)) <=>  (? [C, D] :  ( (m1_subset_1(C, u1_struct_0(k1_lattice2(B))) & m1_subset_1(D, u1_struct_0(k1_lattice2(B))))  &  (A=k9_filter_1(k1_lattice2(B), k1_lattice2(B), C, D) & r3_lattices(k1_lattice2(B), C, D)) ) ) ) ) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(free_g3_lattices, axiom,  (! [A, B, C] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) )  =>  (! [D, E, F] :  (g3_lattices(A, B, C)=g3_lattices(D, E, F) =>  (A=D &  (B=E & C=F) ) ) ) ) ) ).
fof(involutiveness_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_relset_1(A, B, k3_relset_1(A, B, C))=C) ) ).
fof(involutiveness_k4_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k4_relat_1(k4_relat_1(A))=A) ) ).
fof(involutiveness_k6_lattice3, axiom,  (! [A, B] :  ( (v1_partfun1(B, A) &  (v1_relat_2(B) &  (v4_relat_2(B) &  (v8_relat_2(B) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ) )  => k6_lattice3(A, k6_lattice3(A, B))=B) ) ).
fof(redefinition_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => k1_domain_1(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_k2_lattice3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  => k2_lattice3(A)=k8_filter_1(A)) ) ).
fof(redefinition_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_relset_1(A, B, C)=k4_relat_1(C)) ) ).
fof(redefinition_k6_lattice3, axiom,  (! [A, B] :  ( (v1_partfun1(B, A) &  (v1_relat_2(B) &  (v4_relat_2(B) &  (v8_relat_2(B) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ) )  => k6_lattice3(A, B)=k4_relat_1(B)) ) ).
fof(redefinition_k9_filter_1, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  &  (m1_subset_1(C, u1_struct_0(A)) & m1_subset_1(D, u1_struct_0(B))) ) )  => k9_filter_1(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_r3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) & l3_lattices(A)) ) ) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_lattices(A, B, C) <=> r1_lattices(A, B, C)) ) ) ).
fof(reflexivity_r3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) & l3_lattices(A)) ) ) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_lattices(A, B, B)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t33_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (k4_tarski(A, B)=k4_tarski(C, D) =>  (A=C & B=D) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t53_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r3_lattices(A, B, C) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(k1_lattice2(A))) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(k1_lattice2(A))) =>  ( (B=D & C=E)  => r3_lattices(k1_lattice2(A), E, D)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t54_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(k1_lattice2(A))) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(k1_lattice2(A))) =>  ( (r3_lattices(k1_lattice2(A), D, E) &  (B=D & C=E) )  => r3_lattices(A, C, B)) ) ) ) ) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(fc1_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  =>  ( ~ (v2_struct_0(k1_lattice2(A)))  & v3_lattices(k1_lattice2(A))) ) ) ).
fof(fc8_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (v3_lattices(k1_lattice2(A)) & v10_lattices(k1_lattice2(A))) ) ) ).
