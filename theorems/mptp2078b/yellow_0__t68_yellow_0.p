% Mizar problem: t68_yellow_0,yellow_0,2136,18 
fof(t68_yellow_0, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v3_lattice3(A) & l1_orders_2(A)) ) ) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_yellow_0(B, A) & m1_yellow_0(B, A)) )  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))) =>  (r2_hidden(k2_yellow_0(A, C), u1_struct_0(B)) => k2_yellow_0(B, C)=k2_yellow_0(A, C)) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k2_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m1_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_yellow_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m1_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (? [B] : m1_yellow_0(B, A)) ) ) ).
fof(t17_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v5_orders_2(A) &  (v3_lattice3(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (r1_yellow_0(A, B) & r2_yellow_0(A, B)) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t64_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v4_orders_2(A) & l1_orders_2(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_yellow_0(B, A) & m1_yellow_0(B, A)) )  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))) =>  ( (r2_yellow_0(A, C) & r2_hidden(k2_yellow_0(A, C), u1_struct_0(B)))  =>  (r2_yellow_0(B, C) & k2_yellow_0(B, C)=k2_yellow_0(A, C)) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(rc2_yellow_0, axiom,  (? [A] :  (l1_orders_2(A) &  ( ~ (v2_struct_0(A))  &  (v2_orders_2(A) &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & v3_lattice3(A)) ) ) ) ) ) ) ).
