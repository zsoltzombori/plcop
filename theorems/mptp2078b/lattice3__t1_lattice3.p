% Mizar problem: t1_lattice3,lattice3,115,39 
fof(t1_lattice3, conjecture,  (! [A] :  (! [B] :  (m1_subset_1(B, u1_struct_0(k1_lattice3(A))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k1_lattice3(A))) =>  (k1_lattices(k1_lattice3(A), B, C)=k2_xboole_0(B, C) & k2_lattices(k1_lattice3(A), B, C)=k3_xboole_0(B, C)) ) ) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(free_g3_lattices, axiom,  (! [A, B, C] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) )  =>  (! [D, E, F] :  (g3_lattices(A, B, C)=g3_lattices(D, E, F) =>  (A=D &  (B=E & C=F) ) ) ) ) ) ).
fof(dt_g3_lattices, axiom,  (! [A, B, C] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) )  =>  (v3_lattices(g3_lattices(A, B, C)) & l3_lattices(g3_lattices(A, B, C))) ) ) ).
fof(dt_k1_binop_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(abstractness_v3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (v3_lattices(A) => A=g3_lattices(u1_struct_0(A), u2_lattices(A), u1_lattices(A))) ) ) ).
fof(existence_l1_lattices, axiom,  (? [A] : l1_lattices(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l2_lattices, axiom,  (? [A] : l2_lattices(A)) ).
fof(existence_l3_lattices, axiom,  (? [A] : l3_lattices(A)) ).
fof(redefinition_k4_binop_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (m1_subset_1(C, A) & m1_subset_1(D, A)) )  => k4_binop_1(A, B, C, D)=k1_binop_1(B, C, D)) ) ).
fof(dt_k4_binop_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (m1_subset_1(C, A) & m1_subset_1(D, A)) )  => m1_subset_1(k4_binop_1(A, B, C, D), A)) ) ).
fof(dt_l1_lattices, axiom,  (! [A] :  (l1_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l2_lattices, axiom,  (! [A] :  (l2_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_l3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (l1_lattices(A) & l2_lattices(A)) ) ) ).
fof(dt_u1_lattices, axiom,  (! [A] :  (l1_lattices(A) =>  (v1_funct_1(u1_lattices(A)) &  (v1_funct_2(u1_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & m1_subset_1(u1_lattices(A), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A))))) ) ) ) ).
fof(dt_u2_lattices, axiom,  (! [A] :  (l2_lattices(A) =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & m1_subset_1(u2_lattices(A), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A))))) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(dt_k1_lattice3, axiom,  (! [A] :  (v3_lattices(k1_lattice3(A)) & l3_lattices(k1_lattice3(A))) ) ).
fof(dt_k1_lattice3, axiom,  (! [A] :  (v3_lattices(k1_lattice3(A)) & l3_lattices(k1_lattice3(A))) ) ).
fof(dt_k1_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l2_lattices(A))  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k1_lattices(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k2_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_lattices(A))  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k2_lattices(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_u1_struct_0, axiom, $true).
fof(d1_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l2_lattices(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k1_lattices(A, B, C)=k4_binop_1(u1_struct_0(A), u2_lattices(A), B, C)) ) ) ) ) ) ).
fof(d2_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_lattices(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k2_lattices(A, B, C)=k4_binop_1(u1_struct_0(A), u1_lattices(A), B, C)) ) ) ) ) ) ).
fof(fc1_lattice3, axiom,  (! [A] :  ( ~ (v2_struct_0(k1_lattice3(A)))  & v3_lattices(k1_lattice3(A))) ) ).
