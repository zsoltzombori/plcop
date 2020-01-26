% Mizar problem: t17_lattice3,lattice3,855,10 
fof(t17_lattice3, conjecture,  (! [A] :  ( (v3_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k13_lattice3(A, k12_lattice3(A, B, C), C)=C) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k12_lattice3(A, C, B)) ) ).
fof(commutativity_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k13_lattice3(A, B, C)=k13_lattice3(A, C, B)) ) ).
fof(d13_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v5_orders_2(A) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  ( (? [D] :  (m1_subset_1(D, u1_struct_0(A)) &  (r1_orders_2(A, B, D) &  (r1_orders_2(A, C, D) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ( (r1_orders_2(A, B, E) & r1_orders_2(A, C, E))  => r1_orders_2(A, D, E)) ) ) ) ) ) )  =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (D=k10_lattice3(A, B, C) <=>  (r1_orders_2(A, B, D) &  (r1_orders_2(A, C, D) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ( (r1_orders_2(A, B, E) & r1_orders_2(A, C, E))  => r1_orders_2(A, D, E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k10_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k10_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k11_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k11_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k12_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k13_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(l28_lattice3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (D=k11_lattice3(A, B, C) <=>  (r1_orders_2(A, D, B) &  (r1_orders_2(A, D, C) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ( (r1_orders_2(A, E, B) & r1_orders_2(A, E, C))  => r1_orders_2(A, E, D)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(redefinition_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k11_lattice3(A, B, C)) ) ).
fof(redefinition_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k13_lattice3(A, B, C)=k10_lattice3(A, B, C)) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc2_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v2_lattice3(A) =>  ~ (v2_struct_0(A)) ) ) ) ).
