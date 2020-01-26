% Mizar problem: t57_waybel_0,waybel_0,2546,64 
fof(t57_waybel_0, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ( ( (! [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(B)))  =>  ( ~ (D=k1_xboole_0)  => r2_yellow_0(A, D)) ) )  &  ( (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ~ ( (r2_hidden(D, C) &  (! [E] :  ( (v1_finset_1(E) & m1_subset_1(E, k1_zfmisc_1(B)))  =>  ~ ( (r2_yellow_0(A, E) & D=k2_yellow_0(A, E)) ) ) ) ) ) ) )  &  (! [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(B)))  =>  ( ~ (D=k1_xboole_0)  => r2_hidden(k2_yellow_0(A, D), C)) ) ) ) )  =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r1_lattice3(A, B, D) <=> r1_lattice3(A, C, D)) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc1_finset_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_finset_1(A)) ) ).
fof(d10_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r2_yellow_0(A, B) =>  (C=k2_yellow_0(A, B) <=>  (r1_lattice3(A, B, C) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r1_lattice3(A, B, D) => r1_orders_2(A, D, C)) ) ) ) ) ) ) ) ) ) ) ).
fof(d8_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r1_lattice3(A, B, C) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, B) => r1_orders_2(A, C, D)) ) ) ) ) ) ) ) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k2_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => m1_subset_1(k6_domain_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fc1_finset_1, axiom,  (! [A] : v1_finset_1(k1_tarski(A))) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(rc2_yellow_0, axiom,  (? [A] :  (l1_orders_2(A) &  ( ~ (v2_struct_0(A))  &  (v2_orders_2(A) &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & v3_lattice3(A)) ) ) ) ) ) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t26_orders_2, axiom,  (! [A] :  ( (v4_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r1_orders_2(A, B, C) & r1_orders_2(A, C, D))  => r1_orders_2(A, B, D)) ) ) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t37_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  ( (r1_lattice3(A, k1_tarski(C), B) => r1_orders_2(A, B, C))  &  ( (r1_orders_2(A, B, C) => r1_lattice3(A, k1_tarski(C), B))  &  ( (r2_lattice3(A, k1_tarski(C), B) => r1_orders_2(A, C, B))  &  (r1_orders_2(A, C, B) => r2_lattice3(A, k1_tarski(C), B)) ) ) ) ) ) ) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t9_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (! [C] :  (r1_tarski(B, C) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r1_lattice3(A, C, D) => r1_lattice3(A, B, D))  &  (r2_lattice3(A, C, D) => r2_lattice3(A, B, D)) ) ) ) ) ) ) ) ) ).
