fof(t62_yellow_0, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & m1_yellow_0(B, A))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (E=D =>  ( (r1_lattice3(B, C, E) => r1_lattice3(A, C, D))  &  (r2_lattice3(B, C, E) => r2_lattice3(A, C, D)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d8_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r1_lattice3(A, B, C) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, B) => r1_orders_2(A, C, D)) ) ) ) ) ) ) ) ) ).
fof(d9_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r2_lattice3(A, B, C) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, B) => r1_orders_2(A, D, C)) ) ) ) ) ) ) ) ) ).
fof(dt_m1_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_yellow_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t59_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_yellow_0(B, A) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(B)) =>  ( (E=C &  (F=D & r1_orders_2(B, E, F)) )  => r1_orders_2(A, C, D)) ) ) ) ) ) ) ) ) ) ) ) ) ).