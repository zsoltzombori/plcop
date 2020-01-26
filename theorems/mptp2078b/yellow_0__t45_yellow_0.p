% Mizar problem: t45_yellow_0,yellow_0,1314,29 
fof(t45_yellow_0, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v5_orders_2(A) &  (v2_yellow_0(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => r1_orders_2(A, B, k4_yellow_0(A))) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d12_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) => k4_yellow_0(A)=k2_yellow_0(A, k1_xboole_0)) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k2_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k4_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(k4_yellow_0(A), u1_struct_0(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t31_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( (B=k2_yellow_0(A, C) & r2_yellow_0(A, C))  =>  (r1_lattice3(A, C, B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r1_lattice3(A, C, D) => r1_orders_2(A, D, B)) ) ) ) )  &  ( (r1_lattice3(A, C, B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r1_lattice3(A, C, D) => r1_orders_2(A, D, B)) ) ) )  =>  (B=k2_yellow_0(A, C) & r2_yellow_0(A, C)) ) ) ) ) ) ) ) ).
fof(t43_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v5_orders_2(A) &  (v2_yellow_0(A) & l1_orders_2(A)) ) )  =>  (r2_yellow_0(A, k1_xboole_0) & r1_yellow_0(A, u1_struct_0(A))) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t6_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (r2_lattice3(A, k1_xboole_0, B) & r1_lattice3(A, k1_xboole_0, B)) ) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
