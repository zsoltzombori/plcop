% Mizar problem: t49_filter_1,filter_1,1952,30 
fof(t49_filter_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) & l3_lattices(B)) )  => k1_lattice2(k7_filter_1(A, B))=k7_filter_1(k1_lattice2(A), k1_lattice2(B))) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k3_funct_4, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k3_funct_4(A, B)) & v1_funct_1(k3_funct_4(A, B))) ) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(free_g3_lattices, axiom,  (! [A, B, C] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) )  =>  (! [D, E, F] :  (g3_lattices(A, B, C)=g3_lattices(D, E, F) =>  (A=D &  (B=E & C=F) ) ) ) ) ) ).
fof(abstractness_v3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (v3_lattices(A) => A=g3_lattices(u1_struct_0(A), u2_lattices(A), u1_lattices(A))) ) ) ).
fof(existence_l1_lattices, axiom,  (? [A] : l1_lattices(A)) ).
fof(existence_l2_lattices, axiom,  (? [A] : l2_lattices(A)) ).
fof(redefinition_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  => k6_filter_1(A, B, C, D)=k3_funct_4(C, D)) ) ).
fof(redefinition_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  => k6_filter_1(A, B, C, D)=k3_funct_4(C, D)) ) ).
fof(dt_g3_lattices, axiom,  (! [A, B, C] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) )  =>  (v3_lattices(g3_lattices(A, B, C)) & l3_lattices(g3_lattices(A, B, C))) ) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  =>  (v1_funct_1(k6_filter_1(A, B, C, D)) &  (v1_funct_2(k6_filter_1(A, B, C, D), k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B)) & m1_subset_1(k6_filter_1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B))))) ) ) ) ).
fof(dt_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  =>  (v1_funct_1(k6_filter_1(A, B, C, D)) &  (v1_funct_2(k6_filter_1(A, B, C, D), k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B)) & m1_subset_1(k6_filter_1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B))))) ) ) ) ).
fof(dt_l1_lattices, axiom,  (! [A] :  (l1_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_l2_lattices, axiom,  (! [A] :  (l2_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_u1_lattices, axiom,  (! [A] :  (l1_lattices(A) =>  (v1_funct_1(u1_lattices(A)) &  (v1_funct_2(u1_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & m1_subset_1(u1_lattices(A), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A))))) ) ) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u2_lattices, axiom,  (! [A] :  (l2_lattices(A) =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & m1_subset_1(u2_lattices(A), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A))))) ) ) ) ).
fof(existence_l3_lattices, axiom,  (? [A] : l3_lattices(A)) ).
fof(dt_k1_lattice2, axiom,  (! [A] :  (l3_lattices(A) =>  (v3_lattices(k1_lattice2(A)) & l3_lattices(k1_lattice2(A))) ) ) ).
fof(dt_k7_filter_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  &  ( ~ (v2_struct_0(B))  & l3_lattices(B)) )  =>  (v3_lattices(k7_filter_1(A, B)) & l3_lattices(k7_filter_1(A, B))) ) ) ).
fof(dt_k7_filter_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  &  ( ~ (v2_struct_0(B))  & l3_lattices(B)) )  =>  (v3_lattices(k7_filter_1(A, B)) & l3_lattices(k7_filter_1(A, B))) ) ) ).
fof(dt_l3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (l1_lattices(A) & l2_lattices(A)) ) ) ).
fof(fc1_lattice2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  =>  ( ~ (v2_struct_0(k1_lattice2(A)))  & v3_lattices(k1_lattice2(A))) ) ) ).
fof(d2_lattice2, axiom,  (! [A] :  (l3_lattices(A) => k1_lattice2(A)=g3_lattices(u1_struct_0(A), u1_lattices(A), u2_lattices(A))) ) ).
fof(d7_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l3_lattices(B))  => k7_filter_1(A, B)=g3_lattices(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B)), k6_filter_1(u1_struct_0(A), u1_struct_0(B), u2_lattices(A), u2_lattices(B)), k6_filter_1(u1_struct_0(A), u1_struct_0(B), u1_lattices(A), u1_lattices(B)))) ) ) ) ).
