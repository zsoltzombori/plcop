% Mizar problem: t55_lattice3,lattice3,2081,67 
fof(t55_lattice3, conjecture,  (! [A] :  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) &  (v4_lattice3(B) &  (v6_lattice3(B) & l3_lattices(B)) ) ) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(B)) =>  (k3_lattices(B, C, k16_lattice3(B, A))=k16_lattice3(B, a_3_9_lattice3(A, B, C)) & k3_lattices(B, k16_lattice3(B, A), C)=k16_lattice3(B, a_3_10_lattice3(A, B, C))) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) & l2_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k3_lattices(A, B, C)=k3_lattices(A, C, B)) ) ).
fof(d1_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l2_lattices(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k1_lattices(A, B, C)=k4_binop_1(u1_struct_0(A), u2_lattices(A), B, C)) ) ) ) ) ) ).
fof(d22_lattice3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  =>  (! [B] : k16_lattice3(A, B)=k15_lattice3(A, a_2_1_lattice3(A, B))) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k15_lattice3, axiom,  (! [A, B] :  ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  => m1_subset_1(k15_lattice3(A, B), u1_struct_0(A))) ) ).
fof(dt_k16_lattice3, axiom,  (! [A, B] :  ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  => m1_subset_1(k16_lattice3(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_binop_1, axiom, $true).
fof(dt_k1_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l2_lattices(A))  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k1_lattices(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) & l2_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k3_lattices(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k4_binop_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (m1_subset_1(C, A) & m1_subset_1(D, A)) )  => m1_subset_1(k4_binop_1(A, B, C, D), A)) ) ).
fof(dt_l1_lattices, axiom,  (! [A] :  (l1_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l2_lattices, axiom,  (! [A] :  (l2_lattices(A) => l1_struct_0(A)) ) ).
fof(dt_l3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (l1_lattices(A) & l2_lattices(A)) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u2_lattices, axiom,  (! [A] :  (l2_lattices(A) =>  (v1_funct_1(u2_lattices(A)) &  (v1_funct_2(u2_lattices(A), k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A)) & m1_subset_1(u2_lattices(A), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)), u1_struct_0(A))))) ) ) ) ).
fof(existence_l1_lattices, axiom,  (? [A] : l1_lattices(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l2_lattices, axiom,  (? [A] : l2_lattices(A)) ).
fof(existence_l3_lattices, axiom,  (? [A] : l3_lattices(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fraenkel_a_2_1_lattice3, axiom,  (! [A, B, C] :  ( ( ~ (v2_struct_0(B))  & l3_lattices(B))  =>  (r2_hidden(A, a_2_1_lattice3(B, C)) <=>  (? [D] :  (m1_subset_1(D, u1_struct_0(B)) &  (A=D & r3_lattice3(B, D, C)) ) ) ) ) ) ).
fof(fraenkel_a_3_10_lattice3, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(C))  &  (v10_lattices(C) &  (v4_lattice3(C) &  (v6_lattice3(C) & l3_lattices(C)) ) ) )  & m1_subset_1(D, u1_struct_0(C)))  =>  (r2_hidden(A, a_3_10_lattice3(B, C, D)) <=>  (? [E] :  (m1_subset_1(E, u1_struct_0(C)) &  (A=k3_lattices(C, E, D) & r2_hidden(E, B)) ) ) ) ) ) ).
fof(fraenkel_a_3_4_lattice3, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) &  (v4_lattice3(B) & l3_lattices(B)) ) )  & m1_subset_1(C, u1_struct_0(B)))  =>  (r2_hidden(A, a_3_4_lattice3(B, C, D)) <=>  (? [E] :  (m1_subset_1(E, u1_struct_0(B)) &  (A=k3_lattices(B, C, E) & r2_hidden(E, D)) ) ) ) ) ) ).
fof(fraenkel_a_3_5_lattice3, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) &  (v4_lattice3(B) & l3_lattices(B)) ) )  & m1_subset_1(D, u1_struct_0(B)))  =>  (r2_hidden(A, a_3_5_lattice3(B, C, D)) <=>  (? [E] :  (m1_subset_1(E, u1_struct_0(B)) &  (A=k3_lattices(B, D, E) & r2_hidden(E, C)) ) ) ) ) ) ).
fof(fraenkel_a_3_9_lattice3, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(C))  &  (v10_lattices(C) &  (v4_lattice3(C) &  (v6_lattice3(C) & l3_lattices(C)) ) ) )  & m1_subset_1(D, u1_struct_0(C)))  =>  (r2_hidden(A, a_3_9_lattice3(B, C, D)) <=>  (? [E] :  (m1_subset_1(E, u1_struct_0(C)) &  (A=k3_lattices(C, D, E) & r2_hidden(E, B)) ) ) ) ) ) ).
fof(redefinition_k3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) & l2_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k3_lattices(A, B, C)=k1_lattices(A, B, C)) ) ).
fof(redefinition_k4_binop_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (m1_subset_1(C, A) & m1_subset_1(D, A)) )  => k4_binop_1(A, B, C, D)=k1_binop_1(B, C, D)) ) ).
fof(redefinition_r3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) & l3_lattices(A)) ) ) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_lattices(A, B, C) <=> r1_lattices(A, B, C)) ) ) ).
fof(reflexivity_r3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) & l3_lattices(A)) ) ) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_lattices(A, B, B)) ) ).
fof(s5_fraenkel__e5_92__lattice3, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  &  (v10_lattices(B) &  (v4_lattice3(B) &  (v6_lattice3(B) & l3_lattices(B)) ) ) )  & m1_subset_1(C, u1_struct_0(B)))  =>  ( (! [D] :  (m1_subset_1(D, u1_struct_0(B)) => k3_lattices(B, C, D)=k3_lattices(B, D, C)) )  => a_3_9_lattice3(A, B, C)=a_3_10_lattice3(A, B, C)) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t26_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) & l2_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  ( (r1_lattices(A, B, C) & r1_lattices(A, C, B))  => B=C) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t35_lattice3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v4_lattice3(A) & l3_lattices(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] : r3_lattices(A, k3_lattices(A, B, k16_lattice3(A, C)), k16_lattice3(A, a_3_4_lattice3(A, B, C)))) ) ) ) ) ).
fof(t36_lattice3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v4_lattice3(A) & l3_lattices(A)) ) )  =>  (v6_lattice3(A) <=>  (! [B] :  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => r3_lattices(A, k16_lattice3(A, a_3_5_lattice3(A, B, C)), k3_lattices(A, C, k16_lattice3(A, B)))) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v10_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) & v9_lattices(A)) ) ) ) ) ) ) ) ) ).
