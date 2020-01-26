% Mizar problem: t50_filter_1,filter_1,1955,22 
fof(t50_filter_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  => r1_filter_1(k7_filter_1(A, B), k7_filter_1(B, A))) ) ) ) ).
fof(abstractness_v3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (v3_lattices(A) => A=g3_lattices(u1_struct_0(A), u2_lattices(A), u1_lattices(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc1_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v10_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) & v9_lattices(A)) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d1_binop_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] : k1_binop_1(A, B, C)=k1_funct_1(A, k4_tarski(B, C))) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d5_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d5_funct_3, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (C=k7_funct_3(A, B) <=>  (k1_relat_1(C)=k2_zfmisc_1(A, B) &  (! [D] :  (! [E] :  ( (r2_hidden(D, A) & r2_hidden(E, B))  => k1_binop_1(C, D, E)=D) ) ) ) ) ) ) ) ) ).
fof(d6_funct_3, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (C=k8_funct_3(A, B) <=>  (k1_relat_1(C)=k2_zfmisc_1(A, B) &  (! [D] :  (! [E] :  ( (r2_hidden(D, A) & r2_hidden(E, B))  => k1_binop_1(C, D, E)=E) ) ) ) ) ) ) ) ) ).
fof(d7_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l3_lattices(B))  => k7_filter_1(A, B)=g3_lattices(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B)), k6_filter_1(u1_struct_0(A), u1_struct_0(B), u2_lattices(A), u2_lattices(B)), k6_filter_1(u1_struct_0(A), u1_struct_0(B), u1_lattices(A), u1_lattices(B)))) ) ) ) ).
fof(d7_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r3_wellord1(A, B, C) <=>  (k1_relat_1(C)=k3_relat_1(A) &  (k2_relat_1(C)=k3_relat_1(B) &  (v2_funct_1(C) &  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), A) <=>  (r2_hidden(D, k3_relat_1(A)) &  (r2_hidden(E, k3_relat_1(A)) & r2_hidden(k4_tarski(k1_funct_1(C, D), k1_funct_1(C, E)), B)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d8_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  => k8_filter_1(A)=a_1_0_filter_1(A)) ) ).
fof(d8_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(B, k1_relat_1(A)) &  (r2_hidden(C, k1_relat_1(A)) & k1_funct_1(A, B)=k1_funct_1(A, C)) )  => B=C) ) ) ) ) ) ).
fof(d8_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (C=k13_funct_3(A, B) <=>  (k1_relat_1(C)=k3_xboole_0(k1_relat_1(A), k1_relat_1(B)) &  (! [D] :  (r2_hidden(D, k1_relat_1(C)) => k1_funct_1(C, D)=k4_tarski(k1_funct_1(A, D), k1_funct_1(B, D))) ) ) ) ) ) ) ) ) ) ).
fof(d8_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r4_wellord1(A, B) <=>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  & r3_wellord1(A, B, C)) ) ) ) ) ) ) ).
fof(d9_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  (r1_filter_1(A, B) <=> r4_wellord1(k8_filter_1(A), k8_filter_1(B))) ) ) ) ) ).
fof(dt_g3_lattices, axiom,  (! [A, B, C] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) )  =>  (v3_lattices(g3_lattices(A, B, C)) & l3_lattices(g3_lattices(A, B, C))) ) ) ).
fof(dt_k10_funct_3, axiom,  (! [A, B] :  (v1_funct_1(k10_funct_3(A, B)) &  (v1_funct_2(k10_funct_3(A, B), k2_zfmisc_1(A, B), B) & m1_subset_1(k10_funct_3(A, B), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), B)))) ) ) ).
fof(dt_k13_funct_3, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k13_funct_3(A, B)) & v1_funct_1(k13_funct_3(A, B))) ) ) ).
fof(dt_k14_funct_3, axiom,  (! [A, B, C, D, E] :  ( ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(E) &  (v1_funct_2(E, A, C) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, C)))) ) ) ) )  =>  (v1_funct_1(k14_funct_3(A, B, C, D, E)) &  (v1_funct_2(k14_funct_3(A, B, C, D, E), A, k2_zfmisc_1(B, C)) & m1_subset_1(k14_funct_3(A, B, C, D, E), k1_zfmisc_1(k2_zfmisc_1(A, k2_zfmisc_1(B, C))))) ) ) ) ).
fof(dt_k1_binop_1, axiom, $true).
fof(dt_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => m1_subset_1(k1_domain_1(A, B, C, D), k2_zfmisc_1(A, B))) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_binop_1, axiom,  (! [A, B, C, D, E, F] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(A, B), C) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), C)))) )  &  (m1_subset_1(E, A) & m1_subset_1(F, B)) ) ) )  => m1_subset_1(k2_binop_1(A, B, C, D, E, F), C)) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_4, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k3_funct_4(A, B)) & v1_funct_1(k3_funct_4(A, B))) ) ) ).
fof(dt_k3_relat_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  =>  (v1_funct_1(k6_filter_1(A, B, C, D)) &  (v1_funct_2(k6_filter_1(A, B, C, D), k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B)) & m1_subset_1(k6_filter_1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B))))) ) ) ) ).
fof(dt_k7_filter_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  &  ( ~ (v2_struct_0(B))  & l3_lattices(B)) )  =>  (v3_lattices(k7_filter_1(A, B)) & l3_lattices(k7_filter_1(A, B))) ) ) ).
fof(dt_k7_funct_3, axiom,  (! [A, B] :  (v1_relat_1(k7_funct_3(A, B)) & v1_funct_1(k7_funct_3(A, B))) ) ).
fof(dt_k8_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  => v1_relat_1(k8_filter_1(A))) ) ).
fof(dt_k8_funct_3, axiom,  (! [A, B] :  (v1_relat_1(k8_funct_3(A, B)) & v1_funct_1(k8_funct_3(A, B))) ) ).
fof(dt_k9_filter_1, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  &  (m1_subset_1(C, u1_struct_0(A)) & m1_subset_1(D, u1_struct_0(B))) ) )  => m1_subset_1(k9_filter_1(A, B, C, D), u1_struct_0(k7_filter_1(A, B)))) ) ).
fof(dt_k9_funct_3, axiom,  (! [A, B] :  (v1_funct_1(k9_funct_3(A, B)) &  (v1_funct_2(k9_funct_3(A, B), k2_zfmisc_1(A, B), A) & m1_subset_1(k9_funct_3(A, B), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), A)))) ) ) ).
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
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fraenkel_a_1_0_filter_1, axiom,  (! [A, B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  (r2_hidden(A, a_1_0_filter_1(B)) <=>  (? [C, D] :  ( (m1_subset_1(C, u1_struct_0(B)) & m1_subset_1(D, u1_struct_0(B)))  &  (A=k1_domain_1(u1_struct_0(B), u1_struct_0(B), C, D) & r3_lattices(B, C, D)) ) ) ) ) ) ).
fof(free_g3_lattices, axiom,  (! [A, B, C] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) )  =>  (! [D, E, F] :  (g3_lattices(A, B, C)=g3_lattices(D, E, F) =>  (A=D &  (B=E & C=F) ) ) ) ) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(redefinition_k10_funct_3, axiom,  (! [A, B] : k10_funct_3(A, B)=k8_funct_3(A, B)) ).
fof(redefinition_k14_funct_3, axiom,  (! [A, B, C, D, E] :  ( ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(E) &  (v1_funct_2(E, A, C) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, C)))) ) ) ) )  => k14_funct_3(A, B, C, D, E)=k13_funct_3(D, E)) ) ).
fof(redefinition_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => k1_domain_1(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_k2_binop_1, axiom,  (! [A, B, C, D, E, F] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(A, B), C) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), C)))) )  &  (m1_subset_1(E, A) & m1_subset_1(F, B)) ) ) )  => k2_binop_1(A, B, C, D, E, F)=k1_binop_1(D, E, F)) ) ).
fof(redefinition_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  => k6_filter_1(A, B, C, D)=k3_funct_4(C, D)) ) ).
fof(redefinition_k9_filter_1, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  &  (m1_subset_1(C, u1_struct_0(A)) & m1_subset_1(D, u1_struct_0(B))) ) )  => k9_filter_1(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_k9_funct_3, axiom,  (! [A, B] : k9_funct_3(A, B)=k7_funct_3(A, B)) ).
fof(redefinition_r3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) & l3_lattices(A)) ) ) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_lattices(A, B, C) <=> r1_lattices(A, B, C)) ) ) ).
fof(reflexivity_r1_filter_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) ) )  => r1_filter_1(A, A)) ) ).
fof(reflexivity_r3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) & l3_lattices(A)) ) ) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_lattices(A, B, B)) ) ).
fof(symmetry_r1_filter_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) ) )  =>  (r1_filter_1(A, B) => r1_filter_1(B, A)) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t32_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r2_hidden(k1_domain_1(u1_struct_0(A), u1_struct_0(A), B, C), k8_filter_1(A)) <=> r3_lattices(A, B, C)) ) ) ) ) ) ) ).
fof(t33_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (k1_relat_1(k8_filter_1(A))=u1_struct_0(A) &  (k2_relat_1(k8_filter_1(A))=u1_struct_0(A) & k3_relat_1(k8_filter_1(A))=u1_struct_0(A)) ) ) ) ).
fof(t33_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (k4_tarski(A, B)=k4_tarski(C, D) =>  (A=C & B=D) ) ) ) ) ) ).
fof(t37_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(B)) =>  (r3_lattices(k7_filter_1(A, B), k9_filter_1(A, B, C, E), k9_filter_1(A, B, D, F)) <=>  (r3_lattices(A, C, D) & r3_lattices(B, E, F)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t60_funct_3, axiom,  (! [A] :  (! [B] :  ( ~ (A=k1_xboole_0)  => k2_relat_1(k7_funct_3(B, A))=B) ) ) ).
fof(t62_funct_3, axiom,  (! [A] :  (! [B] :  ( ~ (A=k1_xboole_0)  => k2_relat_1(k8_funct_3(A, B))=B) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t71_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  => r1_tarski(k2_relat_1(k13_funct_3(A, B)), k2_zfmisc_1(k2_relat_1(A), k2_relat_1(B)))) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t9_domain_1, axiom,  (! [A] :  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( ~ (v1_xboole_0(C))  =>  ~ ( (r2_hidden(A, k2_zfmisc_1(B, C)) &  (! [D] :  (m1_subset_1(D, B) =>  (! [E] :  (m1_subset_1(E, C) =>  ~ (A=k4_tarski(D, E)) ) ) ) ) ) ) ) ) ) ) ) ).
