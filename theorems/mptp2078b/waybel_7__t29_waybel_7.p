% Mizar problem: t29_waybel_7,waybel_7,1171,8 
fof(t29_waybel_7, conjecture,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_waybel_1(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, A) &  (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (! [C] :  ( ( ~ (v1_xboole_0(C))  &  (v2_waybel_0(C, A) &  (v13_waybel_0(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  ~ ( (r1_subset_1(B, C) &  (! [D] :  ( ( ~ (v1_xboole_0(D))  &  (v2_waybel_0(D, A) &  (v13_waybel_0(D, A) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  ~ ( (v2_waybel_7(D, A) &  (r1_tarski(C, D) & r1_subset_1(B, D)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k7_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(k7_lattice3(A)) & l1_orders_2(k7_lattice3(A))) ) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(irreflexivity_r1_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  ~ (r1_subset_1(A, A)) ) ) ).
fof(redefinition_r1_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (r1_subset_1(A, B) <=> r1_xboole_0(A, B)) ) ) ).
fof(symmetry_r1_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (r1_subset_1(A, B) => r1_subset_1(B, A)) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t21_waybel_7, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v2_waybel_0(B, A) &  (v13_waybel_0(B, A) &  (v2_waybel_7(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) ) )  <=>  ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, k7_lattice3(A)) &  (v12_waybel_0(B, k7_lattice3(A)) &  (v1_waybel_7(B, k7_lattice3(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k7_lattice3(A))))) ) ) ) ) ) ) ) ).
fof(t26_yellow_7, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  ( (v1_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  <=>  (v2_waybel_0(B, k7_lattice3(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k7_lattice3(A))))) ) ) ) ) ).
fof(t27_waybel_7, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_waybel_1(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, A) &  (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (! [C] :  ( ( ~ (v1_xboole_0(C))  &  (v2_waybel_0(C, A) &  (v13_waybel_0(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  ~ ( (r1_subset_1(B, C) &  (! [D] :  ( ( ~ (v1_xboole_0(D))  &  (v1_waybel_0(D, A) &  (v12_waybel_0(D, A) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  ~ ( (v1_waybel_7(D, A) &  (r1_tarski(B, D) & r1_subset_1(D, C)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t27_yellow_7, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  ( (v1_waybel_0(B, k7_lattice3(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k7_lattice3(A)))))  <=>  (v2_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ) ).
fof(t28_yellow_7, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  ( (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  <=>  (v13_waybel_0(B, k7_lattice3(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k7_lattice3(A))))) ) ) ) ) ).
fof(t29_yellow_7, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  ( (v12_waybel_0(B, k7_lattice3(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(k7_lattice3(A)))))  <=>  (v13_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc2_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v2_lattice3(A) =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(fc1_yellow_7, axiom,  (! [A] :  ( (v3_orders_2(A) & l1_orders_2(A))  =>  (v1_orders_2(k7_lattice3(A)) & v3_orders_2(k7_lattice3(A))) ) ) ).
fof(fc2_yellow_7, axiom,  (! [A] :  ( (v4_orders_2(A) & l1_orders_2(A))  =>  (v1_orders_2(k7_lattice3(A)) & v4_orders_2(k7_lattice3(A))) ) ) ).
fof(fc3_yellow_7, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (v1_orders_2(k7_lattice3(A)) & v5_orders_2(k7_lattice3(A))) ) ) ).
fof(fc5_yellow_7, axiom,  (! [A] :  ( (v2_lattice3(A) & l1_orders_2(A))  =>  (v1_orders_2(k7_lattice3(A)) & v1_lattice3(k7_lattice3(A))) ) ) ).
fof(fc6_yellow_7, axiom,  (! [A] :  ( (v1_lattice3(A) & l1_orders_2(A))  =>  (v1_orders_2(k7_lattice3(A)) & v2_lattice3(k7_lattice3(A))) ) ) ).
fof(fc8_yellow_7, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) &  (v2_waybel_1(A) & l1_orders_2(A)) ) ) ) ) )  =>  (v1_orders_2(k7_lattice3(A)) & v2_waybel_1(k7_lattice3(A))) ) ) ).
