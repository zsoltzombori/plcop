fof(t3_lattice3, conjecture,  (! [A] :  (v13_lattices(k1_lattice3(A)) & k5_lattices(k1_lattice3(A))=k1_xboole_0) ) ).
fof(cc1_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v10_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) & v9_lattices(A)) ) ) ) ) ) ) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d13_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_lattices(A))  =>  (v13_lattices(A) <=>  (? [B] :  (m1_subset_1(B, u1_struct_0(A)) &  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (k2_lattices(A, B, C)=B & k2_lattices(A, C, B)=B) ) ) ) ) ) ) ) ).
fof(d1_lattice3, axiom,  (! [A] :  (! [B] :  ( (v3_lattices(B) & l3_lattices(B))  =>  (B=k1_lattice3(A) <=>  (u1_struct_0(B)=k9_setfam_1(A) &  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(A)) =>  (k1_binop_1(u2_lattices(B), C, D)=k4_subset_1(A, C, D) & k1_binop_1(u1_lattices(B), C, D)=k9_subset_1(A, C, D)) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_lattice3, axiom,  (! [A] :  (v3_lattices(k1_lattice3(A)) & l3_lattices(k1_lattice3(A))) ) ).
fof(dt_k5_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_lattices(A))  => m1_subset_1(k5_lattices(A), u1_struct_0(A))) ) ).
fof(dt_l3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (l1_lattices(A) & l2_lattices(A)) ) ) ).
fof(fc1_lattice3, axiom,  (! [A] :  ( ~ (v2_struct_0(k1_lattice3(A)))  & v3_lattices(k1_lattice3(A))) ) ).
fof(fc2_lattice3, axiom,  (! [A] :  (v3_lattices(k1_lattice3(A)) & v10_lattices(k1_lattice3(A))) ) ).
fof(ie2_lattice3, axiom,  (! [A, B, C, D, E] :  ( (m1_subset_1(B, u1_struct_0(k1_lattice3(A))) & m1_subset_1(C, u1_struct_0(k1_lattice3(A))))  =>  ( (B=D & C=E)  => k2_lattices(k1_lattice3(A), B, C)=k3_xboole_0(D, E)) ) ) ).
fof(rd4_lattices, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v13_lattices(A) & l3_lattices(A)) ) )  & m1_subset_1(B, u1_struct_0(A)))  => k4_lattices(A, k5_lattices(A), B)=k5_lattices(A)) ) ).
fof(redefinition_k4_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) & l1_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k4_lattices(A, B, C)=k2_lattices(A, B, C)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_xboole_1, axiom,  (! [A] : r1_tarski(k1_xboole_0, A)) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
