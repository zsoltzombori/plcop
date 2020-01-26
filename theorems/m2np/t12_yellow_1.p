fof(t12_yellow_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  ( (! [B] :  (! [C] :  ( (r2_hidden(B, A) & r2_hidden(C, A))  => r2_hidden(k3_xboole_0(B, C), A)) ) )  => v2_lattice3(k2_yellow_1(A))) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d1_yellow_1, axiom,  (! [A] : k2_yellow_1(A)=g1_orders_2(A, k1_yellow_1(A))) ).
fof(dt_k11_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k11_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_yellow_1, axiom,  (! [A] :  (v1_relat_2(k1_yellow_1(A)) &  (v4_relat_2(k1_yellow_1(A)) &  (v8_relat_2(k1_yellow_1(A)) &  (v1_partfun1(k1_yellow_1(A), A) & m1_subset_1(k1_yellow_1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ) ) ) ).
fof(dt_k2_yellow_1, axiom,  (! [A] :  (v1_orders_2(k2_yellow_1(A)) & l1_orders_2(k2_yellow_1(A))) ) ).
fof(fc5_yellow_1, axiom,  (! [A] :  (v1_orders_2(k2_yellow_1(A)) &  (v3_orders_2(k2_yellow_1(A)) &  (v4_orders_2(k2_yellow_1(A)) & v5_orders_2(k2_yellow_1(A))) ) ) ) ).
fof(fc6_yellow_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  ( ~ (v2_struct_0(k2_yellow_1(A)))  & v1_orders_2(k2_yellow_1(A))) ) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(t16_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (r2_yellow_0(A, B) <=>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) &  (r1_lattice3(A, B, C) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r1_lattice3(A, B, D) => r1_orders_2(A, D, C)) ) ) ) ) ) ) ) ) ) ).
fof(t17_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(k3_xboole_0(A, B), A)) ) ).
fof(t19_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(A, C))  => r1_tarski(A, k3_xboole_0(B, C))) ) ) ) ).
fof(t21_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (v2_lattice3(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => r2_yellow_0(A, k2_tarski(B, C))) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_yellow_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(k2_yellow_1(A))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k2_yellow_1(A))) =>  (r3_orders_2(k2_yellow_1(A), B, C) <=> r1_tarski(B, C)) ) ) ) ) ) ) ).
fof(t8_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r1_lattice3(A, k2_tarski(C, D), B) =>  (r1_orders_2(A, B, C) & r1_orders_2(A, B, D)) )  &  ( ( (r1_orders_2(A, B, C) & r1_orders_2(A, B, D))  => r1_lattice3(A, k2_tarski(C, D), B))  &  ( (r2_lattice3(A, k2_tarski(C, D), B) =>  (r1_orders_2(A, C, B) & r1_orders_2(A, D, B)) )  &  ( (r1_orders_2(A, C, B) & r1_orders_2(A, D, B))  => r2_lattice3(A, k2_tarski(C, D), B)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t9_yellow_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(k2_yellow_1(A))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k2_yellow_1(A))) =>  (r2_hidden(k3_xboole_0(B, C), A) => k11_lattice3(k2_yellow_1(A), B, C)=k3_xboole_0(B, C)) ) ) ) ) ) ) ).
