% Mizar problem: t64_waybel_0,waybel_0,2825,52 
fof(t64_waybel_0, conjecture,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  =>  ( ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, A) &  (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  <=> v6_yellow_0(k5_yellow_0(A, B), A)) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc1_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_lattice3(A) =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(commutativity_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k13_lattice3(A, B, C)=k13_lattice3(A, C, B)) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k7_domain_1(A, B, C)=k7_domain_1(A, C, B)) ) ).
fof(d15_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  ( (v1_orders_2(C) &  (v4_yellow_0(C, A) & m1_yellow_0(C, A)) )  =>  (C=k5_yellow_0(A, B) <=> u1_struct_0(C)=B) ) ) ) ) ) ) ).
fof(d17_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (m1_yellow_0(B, A) =>  (v6_yellow_0(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r2_hidden(C, u1_struct_0(B)) &  (r2_hidden(D, u1_struct_0(B)) & r1_yellow_0(A, k7_domain_1(u1_struct_0(A), C, D))) )  => r2_hidden(k1_yellow_0(A, k7_domain_1(u1_struct_0(A), C, D)), u1_struct_0(B))) ) ) ) ) ) ) ) ) ) ).
fof(d19_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v12_waybel_0(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r2_hidden(C, B) & r1_orders_2(A, D, C))  => r2_hidden(D, B)) ) ) ) ) ) ) ) ) ) ).
fof(d1_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_waybel_0(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ~ ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ~ ( (r2_hidden(E, B) &  (r1_orders_2(A, C, E) & r1_orders_2(A, D, E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d9_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r1_yellow_0(A, B) =>  (C=k1_yellow_0(A, B) <=>  (r2_lattice3(A, B, C) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, B, D) => r1_orders_2(A, C, D)) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_k10_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k10_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k13_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k1_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k5_yellow_0, axiom,  (! [A, B] :  ( (l1_orders_2(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v1_orders_2(k5_yellow_0(A, B)) &  (v4_yellow_0(k5_yellow_0(A, B), A) & m1_yellow_0(k5_yellow_0(A, B), A)) ) ) ) ).
fof(dt_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => m1_subset_1(k7_domain_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m1_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_yellow_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m1_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (? [B] : m1_yellow_0(B, A)) ) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(rc1_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  (v1_waybel_0(B, A) & v2_waybel_0(B, A)) ) ) ) ) ).
fof(redefinition_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k13_lattice3(A, B, C)=k10_lattice3(A, B, C)) ) ).
fof(redefinition_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k7_domain_1(A, B, C)=k2_tarski(B, C)) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(t18_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( ( (D=k10_lattice3(A, B, C) & r1_yellow_0(A, k2_tarski(B, C)))  =>  (r1_orders_2(A, B, D) &  (r1_orders_2(A, C, D) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ( (r1_orders_2(A, B, E) & r1_orders_2(A, C, E))  => r1_orders_2(A, D, E)) ) ) ) ) )  &  ( (r1_orders_2(A, B, D) &  (r1_orders_2(A, C, D) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ( (r1_orders_2(A, B, E) & r1_orders_2(A, C, E))  => r1_orders_2(A, D, E)) ) ) ) )  =>  (D=k10_lattice3(A, B, C) & r1_yellow_0(A, k2_tarski(B, C))) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t20_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (v1_lattice3(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => r1_yellow_0(A, k2_tarski(B, C))) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t41_yellow_0, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k1_yellow_0(A, k7_domain_1(u1_struct_0(A), B, C))=k13_lattice3(A, B, C)) ) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r1_lattice3(A, k2_tarski(C, D), B) =>  (r1_orders_2(A, B, C) & r1_orders_2(A, B, D)) )  &  ( ( (r1_orders_2(A, B, C) & r1_orders_2(A, B, D))  => r1_lattice3(A, k2_tarski(C, D), B))  &  ( (r2_lattice3(A, k2_tarski(C, D), B) =>  (r1_orders_2(A, C, B) & r1_orders_2(A, D, B)) )  &  ( (r1_orders_2(A, C, B) & r1_orders_2(A, D, B))  => r2_lattice3(A, k2_tarski(C, D), B)) ) ) ) ) ) ) ) ) ) ) ) ).
