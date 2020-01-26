% Mizar problem: t7_yellow_1,yellow_1,376,52 
fof(t7_yellow_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (v2_lattice3(k2_yellow_1(A)) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(k2_yellow_1(A))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k2_yellow_1(A))) => r1_tarski(k11_lattice3(k2_yellow_1(A), B, C), k3_xboole_0(B, C))) ) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k12_lattice3(A, C, B)) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d1_yellow_1, axiom,  (! [A] : k2_yellow_1(A)=g1_orders_2(A, k1_yellow_1(A))) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_k11_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k11_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k12_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_wellord2, axiom,  (! [A] : v1_relat_1(k1_wellord2(A))) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_1, axiom,  (! [A] :  (v1_relat_2(k1_yellow_1(A)) &  (v4_relat_2(k1_yellow_1(A)) &  (v8_relat_2(k1_yellow_1(A)) &  (v1_partfun1(k1_yellow_1(A), A) & m1_subset_1(k1_yellow_1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ) ) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_yellow_1, axiom,  (! [A] :  (v1_orders_2(k2_yellow_1(A)) & l1_orders_2(k2_yellow_1(A))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
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
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(redefinition_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k11_lattice3(A, B, C)) ) ).
fof(redefinition_k1_yellow_1, axiom,  (! [A] : k1_yellow_1(A)=k1_wellord2(A)) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(t19_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(A, C))  => r1_tarski(A, k3_xboole_0(B, C))) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t23_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (D=k12_lattice3(A, B, C) <=>  (r1_orders_2(A, D, B) &  (r1_orders_2(A, D, C) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ( (r1_orders_2(A, E, B) & r1_orders_2(A, E, C))  => r1_orders_2(A, E, D)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t3_yellow_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(k2_yellow_1(A))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k2_yellow_1(A))) =>  (r3_orders_2(k2_yellow_1(A), B, C) <=> r1_tarski(B, C)) ) ) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
