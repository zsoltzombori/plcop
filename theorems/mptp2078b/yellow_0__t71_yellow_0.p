% Mizar problem: t71_yellow_0,yellow_0,2179,28 
fof(t71_yellow_0, conjecture,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_yellow_0(B, A) &  (v6_yellow_0(B, A) & m1_yellow_0(B, A)) ) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(B)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(B)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(A)) =>  ( (E=C & F=D)  => k13_lattice3(B, C, D)=k13_lattice3(A, E, F)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k13_lattice3(A, B, C)=k13_lattice3(A, C, B)) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k7_domain_1(A, B, C)=k7_domain_1(A, C, B)) ) ).
fof(d17_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (m1_yellow_0(B, A) =>  (v6_yellow_0(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r2_hidden(C, u1_struct_0(B)) &  (r2_hidden(D, u1_struct_0(B)) & r1_yellow_0(A, k7_domain_1(u1_struct_0(A), C, D))) )  => r2_hidden(k1_yellow_0(A, k7_domain_1(u1_struct_0(A), C, D)), u1_struct_0(B))) ) ) ) ) ) ) ) ) ) ).
fof(dt_k10_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k10_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k13_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k1_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => m1_subset_1(k7_domain_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m1_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_yellow_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m1_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (? [B] : m1_yellow_0(B, A)) ) ) ).
fof(redefinition_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k13_lattice3(A, B, C)=k10_lattice3(A, B, C)) ) ).
fof(redefinition_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k7_domain_1(A, B, C)=k2_tarski(B, C)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t20_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (v1_lattice3(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => r1_yellow_0(A, k2_tarski(B, C))) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t41_yellow_0, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k1_yellow_0(A, k7_domain_1(u1_struct_0(A), B, C))=k13_lattice3(A, B, C)) ) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t65_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v4_orders_2(A) & l1_orders_2(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_yellow_0(B, A) & m1_yellow_0(B, A)) )  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))) =>  ( (r1_yellow_0(A, C) & r2_hidden(k1_yellow_0(A, C), u1_struct_0(B)))  =>  (r1_yellow_0(B, C) & k1_yellow_0(B, C)=k1_yellow_0(A, C)) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc12_yellow_0, axiom,  (! [A] :  ( (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (m1_yellow_0(B, A) =>  ( ( ~ (v2_struct_0(B))  &  (v4_yellow_0(B, A) & v6_yellow_0(B, A)) )  =>  ( ~ (v2_struct_0(B))  &  (v1_lattice3(B) &  (v4_yellow_0(B, A) & v6_yellow_0(B, A)) ) ) ) ) ) ) ) ).
fof(cc1_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_lattice3(A) =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(cc6_yellow_0, axiom,  (! [A] :  ( (v3_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_yellow_0(B, A) =>  (v4_yellow_0(B, A) =>  (v3_orders_2(B) & v4_yellow_0(B, A)) ) ) ) ) ) ).
fof(cc7_yellow_0, axiom,  (! [A] :  ( (v4_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_yellow_0(B, A) =>  (v4_yellow_0(B, A) =>  (v4_orders_2(B) & v4_yellow_0(B, A)) ) ) ) ) ) ).
fof(cc8_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_yellow_0(B, A) =>  (v4_yellow_0(B, A) =>  (v5_orders_2(B) & v4_yellow_0(B, A)) ) ) ) ) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(rc2_yellow_0, axiom,  (? [A] :  (l1_orders_2(A) &  ( ~ (v2_struct_0(A))  &  (v2_orders_2(A) &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & v3_lattice3(A)) ) ) ) ) ) ) ).
