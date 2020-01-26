% Mizar problem: t27_waybel_7,waybel_7,992,8 
fof(t27_waybel_7, conjecture,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_waybel_1(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, A) &  (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (! [C] :  ( ( ~ (v1_xboole_0(C))  &  (v2_waybel_0(C, A) &  (v13_waybel_0(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  ~ ( (r1_subset_1(B, C) &  (! [D] :  ( ( ~ (v1_xboole_0(D))  &  (v1_waybel_0(D, A) &  (v12_waybel_0(D, A) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  ~ ( (v1_waybel_7(D, A) &  (r1_tarski(B, D) & r1_subset_1(D, C)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k12_lattice3(A, C, B)) ) ).
fof(commutativity_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k13_lattice3(A, B, C)=k13_lattice3(A, C, B)) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k4_subset_1(A, C, B)) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d1_waybel_7, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, A) &  (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (v1_waybel_7(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ~ ( (r2_hidden(k12_lattice3(A, C, D), B) &  ( ~ (r2_hidden(C, B))  &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d20_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v13_waybel_0(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r2_hidden(C, B) & r1_orders_2(A, C, D))  => r2_hidden(D, B)) ) ) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d4_tarski, axiom,  (! [A] :  (! [B] :  (B=k3_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(C, D) & r2_hidden(D, A)) ) ) ) ) ) ) ).
fof(d9_ordinal1, axiom,  (! [A] :  (v6_ordinal1(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(B, A) & r2_hidden(C, A))  => r3_xboole_0(B, C)) ) ) ) ) ).
fof(d9_xboole_0, axiom,  (! [A] :  (! [B] :  (r3_xboole_0(A, B) <=>  (r1_tarski(A, B) | r1_tarski(B, A)) ) ) ) ).
fof(dt_k10_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k10_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k11_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k11_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k11_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k11_waybel_0(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k12_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k13_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k1_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k2_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k3_tarski, axiom, $true).
fof(dt_k3_waybel_0, axiom,  (! [A, B] :  ( (l1_orders_2(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k3_waybel_0(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => m1_subset_1(k4_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k5_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k5_setfam_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => m1_subset_1(k6_domain_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k9_setfam_1, axiom,  (! [A] : m1_subset_1(k9_setfam_1(A), k1_zfmisc_1(k1_zfmisc_1(A)))) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_o_1_0_waybel_7, axiom,  (! [A] : m1_subset_1(o_1_0_waybel_7(A), A)) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fraenkel_a_2_2_waybel_0, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))))  =>  (r2_hidden(A, a_2_2_waybel_0(B, C)) <=>  (? [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(C)))  &  (A=k1_yellow_0(B, D) & r1_yellow_0(B, D)) ) ) ) ) ) ).
fof(fraenkel_a_3_0_waybel_7, axiom,  (! [A, B, C, D] :  ( ( (v3_orders_2(B) &  (v4_orders_2(B) &  (v5_orders_2(B) &  (v2_waybel_1(B) &  (v1_lattice3(B) &  (v2_lattice3(B) & l1_orders_2(B)) ) ) ) ) )  &  ( ( ~ (v1_xboole_0(C))  &  (v1_waybel_0(C, B) &  (v12_waybel_0(C, B) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B)))) ) )  &  ( ~ (v1_xboole_0(D))  &  (v2_waybel_0(D, B) &  (v13_waybel_0(D, B) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B)))) ) ) ) )  =>  (r2_hidden(A, a_3_0_waybel_7(B, C, D)) <=>  (? [E] :  ( ( ~ (v1_xboole_0(E))  &  (v1_waybel_0(E, B) &  (v12_waybel_0(E, B) & m1_subset_1(E, k1_zfmisc_1(u1_struct_0(B)))) ) )  &  (A=E &  (r1_tarski(C, E) & r1_subset_1(E, D)) ) ) ) ) ) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, B)=B) ) ).
fof(irreflexivity_r1_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  ~ (r1_subset_1(A, A)) ) ) ).
fof(l31_waybel_7, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, A) &  (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (! [C] :  ( ( ~ (v1_xboole_0(C))  &  (v1_finset_1(C) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) )  =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ~ ( (r2_hidden(D, k3_waybel_0(A, k11_waybel_0(A, k4_subset_1(u1_struct_0(A), B, C)))) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ~ ( (r2_hidden(E, B) & r3_orders_2(A, D, k13_lattice3(A, E, k1_yellow_0(A, C)))) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(redefinition_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k11_lattice3(A, B, C)) ) ).
fof(redefinition_k13_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k13_lattice3(A, B, C)=k10_lattice3(A, B, C)) ) ).
fof(redefinition_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k2_xboole_0(B, C)) ) ).
fof(redefinition_k5_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => k5_setfam_1(A, B)=k3_tarski(B)) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(redefinition_r1_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (r1_subset_1(A, B) <=> r1_xboole_0(A, B)) ) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(reflexivity_r3_xboole_0, axiom,  (! [A, B] : r3_xboole_0(A, A)) ).
fof(symmetry_r1_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (r1_subset_1(A, B) => r1_subset_1(B, A)) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(symmetry_r3_xboole_0, axiom,  (! [A, B] :  (r3_xboole_0(A, B) => r3_xboole_0(B, A)) ) ).
fof(t12_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => k2_xboole_0(A, B)=B) ) ) ).
fof(t14_lattice3, axiom,  (! [A] :  ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (v4_orders_2(A) => k10_lattice3(A, k10_lattice3(A, B, C), D)=k10_lattice3(A, B, k10_lattice3(A, C, D))) ) ) ) ) ) ) ) ) ).
fof(t177_orders_1, axiom,  (! [A] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( (! [B] :  ( (r1_tarski(B, A) & v6_ordinal1(B))  =>  (B=k1_xboole_0 | r2_hidden(k3_tarski(B), A)) ) )  &  (! [B] :  ~ ( (r2_hidden(B, A) &  (! [C] :  ~ ( (r2_hidden(C, A) &  ( ~ (C=B)  & r1_tarski(B, C)) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t22_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (D=k13_lattice3(A, B, C) <=>  (r1_orders_2(A, B, D) &  (r1_orders_2(A, C, D) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ( (r1_orders_2(A, B, E) & r1_orders_2(A, C, E))  => r1_orders_2(A, D, E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t26_orders_2, axiom,  (! [A] :  ( (v4_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r1_orders_2(A, B, C) & r1_orders_2(A, C, D))  => r1_orders_2(A, B, D)) ) ) ) ) ) ) ) ) ).
fof(t26_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ( (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(C, B) => v12_waybel_0(C, A)) ) )  =>  (v12_waybel_0(k5_setfam_1(u1_struct_0(A), B), A) & m1_subset_1(k5_setfam_1(u1_struct_0(A), B), k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t39_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (k1_yellow_0(A, k6_domain_1(u1_struct_0(A), B))=B & k2_yellow_0(A, k6_domain_1(u1_struct_0(A), B))=B) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).
fof(t40_waybel_0, axiom,  (! [A] :  ( (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) )  =>  (! [B] :  ( (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v1_waybel_0(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r2_hidden(C, B) & r2_hidden(D, B))  => r2_hidden(k13_lattice3(A, C, D), B)) ) ) ) ) ) ) ) ) ) ).
fof(t41_waybel_0, axiom,  (! [A] :  ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  =>  (! [B] :  ( (v13_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v2_waybel_0(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r2_hidden(C, B) & r2_hidden(D, B))  => r2_hidden(k12_lattice3(A, C, D), B)) ) ) ) ) ) ) ) ) ) ).
fof(t46_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ( ( (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(C, B) => v1_waybel_0(C, A)) ) )  &  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (r2_hidden(E, B) & r1_tarski(k4_subset_1(u1_struct_0(A), C, D), E)) ) ) ) ) ) ) ) ) ) ) )  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (C=k5_setfam_1(u1_struct_0(A), B) => v1_waybel_0(C, A)) ) ) ) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t61_waybel_0, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (r1_tarski(B, k3_waybel_0(A, k11_waybel_0(A, B))) &  (! [C] :  ( ( ~ (v1_xboole_0(C))  &  (v1_waybel_0(C, A) &  (v12_waybel_0(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (r1_tarski(B, C) => r1_tarski(k3_waybel_0(A, k11_waybel_0(A, B)), C)) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t6_waybel_1, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) )  =>  (v2_waybel_1(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) => k13_lattice3(A, B, k12_lattice3(A, C, D))=k12_lattice3(A, k13_lattice3(A, B, C), k13_lattice3(A, B, D))) ) ) ) ) ) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(A, k2_xboole_0(A, B))) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t92_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => r1_tarski(A, k3_tarski(B))) ) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(cc2_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v2_lattice3(A) =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(fc10_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v4_orders_2(A) & l1_orders_2(A)) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => v12_waybel_0(k3_waybel_0(A, B), A)) ) ).
fof(fc15_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) & l1_orders_2(A)) ) )  &  (v1_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  => v1_waybel_0(k3_waybel_0(A, B), A)) ) ).
fof(fc19_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) )  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  =>  ~ (v1_xboole_0(k11_waybel_0(A, B))) ) ) ).
fof(fc1_finset_1, axiom,  (! [A] : v1_finset_1(k1_tarski(A))) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc21_waybel_0, axiom,  (! [A, B] :  ( ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => v1_waybel_0(k11_waybel_0(A, B), A)) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
fof(fc5_xboole_0, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(A))  =>  ~ (v1_xboole_0(k2_xboole_0(B, A))) ) ) ).
fof(fc6_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  =>  ~ (v1_xboole_0(k3_waybel_0(A, B))) ) ) ).
fof(rc3_waybel_7, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, A) &  (v12_waybel_0(B, A) & v1_waybel_7(B, A)) ) ) ) ) ) ) ).
