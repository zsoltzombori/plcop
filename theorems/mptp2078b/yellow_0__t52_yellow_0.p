% Mizar problem: t52_yellow_0,yellow_0,1465,74 
fof(t52_yellow_0, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  ( (r2_yellow_0(A, B) | r2_yellow_0(A, k3_xboole_0(B, u1_struct_0(A))))  => k2_yellow_0(A, B)=k2_yellow_0(A, k3_xboole_0(B, u1_struct_0(A)))) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k2_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t49_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (! [C] :  ( (r2_yellow_0(A, B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r1_lattice3(A, B, D) <=> r1_lattice3(A, C, D)) ) ) )  => k2_yellow_0(A, B)=k2_yellow_0(A, C)) ) ) ) ) ).
fof(t5_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  ( (r2_lattice3(A, B, C) => r2_lattice3(A, k3_xboole_0(B, u1_struct_0(A)), C))  &  ( (r2_lattice3(A, k3_xboole_0(B, u1_struct_0(A)), C) => r2_lattice3(A, B, C))  &  ( (r1_lattice3(A, B, C) => r1_lattice3(A, k3_xboole_0(B, u1_struct_0(A)), C))  &  (r1_lattice3(A, k3_xboole_0(B, u1_struct_0(A)), C) => r1_lattice3(A, B, C)) ) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
