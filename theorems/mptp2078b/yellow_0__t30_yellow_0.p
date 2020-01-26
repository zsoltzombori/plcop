% Mizar problem: t30_yellow_0,yellow_0,1055,43 
fof(t30_yellow_0, conjecture,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( (B=k1_yellow_0(A, C) & r1_yellow_0(A, C))  =>  (r2_lattice3(A, C, B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, C, D) => r1_orders_2(A, B, D)) ) ) ) )  &  ( (r2_lattice3(A, C, B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, C, D) => r1_orders_2(A, B, D)) ) ) )  =>  (B=k1_yellow_0(A, C) & r1_yellow_0(A, C)) ) ) ) ) ) ) ) ).
fof(d9_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r1_yellow_0(A, B) =>  (C=k1_yellow_0(A, B) <=>  (r2_lattice3(A, B, C) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, B, D) => r1_orders_2(A, C, D)) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k1_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t15_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (r1_yellow_0(A, B) <=>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) &  (r2_lattice3(A, B, C) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, B, D) => r1_orders_2(A, C, D)) ) ) ) ) ) ) ) ) ) ).
