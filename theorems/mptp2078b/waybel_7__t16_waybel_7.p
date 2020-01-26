% Mizar problem: t16_waybel_7,waybel_7,346,31 
fof(t16_waybel_7, conjecture,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, A) &  (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (v1_waybel_7(B, A) <=>  (! [C] :  ( ( ~ (v1_xboole_0(C))  &  (v1_finset_1(C) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) )  =>  ~ ( (r2_hidden(k2_yellow_0(A, C), B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ~ ( (r2_hidden(D, C) & r2_hidden(D, B)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k12_lattice3(A, C, B)) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k7_domain_1(A, B, C)=k7_domain_1(A, C, B)) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d1_waybel_7, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, A) &  (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  =>  (v1_waybel_7(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ~ ( (r2_hidden(k12_lattice3(A, C, D), B) &  ( ~ (r2_hidden(C, B))  &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(dt_k11_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k11_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k12_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k1_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k2_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => m1_subset_1(k6_domain_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => m1_subset_1(k7_domain_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(redefinition_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k11_lattice3(A, B, C)) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(redefinition_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k7_domain_1(A, B, C)=k2_tarski(B, C)) ) ).
fof(s2_finset_1__e5_21_1__waybel_7, axiom,  (! [A, B, C] :  ( ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  &  ( ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, A) &  (v12_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) ) )  &  ( ~ (v1_xboole_0(C))  &  (v1_finset_1(C) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) ) )  =>  ( (v1_finset_1(C) &  ( ~ ( ( ~ (v1_xboole_0(k1_xboole_0))  &  (r2_hidden(k2_yellow_0(A, k1_xboole_0), B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ~ ( (r2_hidden(D, k1_xboole_0) & r2_hidden(D, B)) ) ) ) ) ) )  &  (! [E] :  (! [F] :  ( (r2_hidden(E, C) &  (r1_tarski(F, C) &  ~ ( ( ~ (v1_xboole_0(F))  &  (r2_hidden(k2_yellow_0(A, F), B) &  (! [G] :  (m1_subset_1(G, u1_struct_0(A)) =>  ~ ( (r2_hidden(G, F) & r2_hidden(G, B)) ) ) ) ) ) ) ) )  =>  ~ ( ( ~ (v1_xboole_0(k2_xboole_0(F, k1_tarski(E))))  &  (r2_hidden(k2_yellow_0(A, k2_xboole_0(F, k1_tarski(E))), B) &  (! [H] :  (m1_subset_1(H, u1_struct_0(A)) =>  ~ ( (r2_hidden(H, k2_xboole_0(F, k1_tarski(E))) & r2_hidden(H, B)) ) ) ) ) ) ) ) ) ) ) )  =>  ~ ( ( ~ (v1_xboole_0(C))  &  (r2_hidden(k2_yellow_0(A, C), B) &  (! [I] :  (m1_subset_1(I, u1_struct_0(A)) =>  ~ ( (r2_hidden(I, C) & r2_hidden(I, B)) ) ) ) ) ) ) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t39_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (k1_yellow_0(A, k6_domain_1(u1_struct_0(A), B))=B & k2_yellow_0(A, k6_domain_1(u1_struct_0(A), B))=B) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t40_yellow_0, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k2_yellow_0(A, k7_domain_1(u1_struct_0(A), B, C))=k12_lattice3(A, B, C)) ) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t4_yellow_2, axiom,  (! [A] :  ( (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (! [C] :  ( (r2_yellow_0(A, B) & r2_yellow_0(A, C))  =>  (r2_yellow_0(A, k2_xboole_0(B, C)) & k2_yellow_0(A, k2_xboole_0(B, C))=k12_lattice3(A, k2_yellow_0(A, B), k2_yellow_0(A, C))) ) ) ) ) ) ).
fof(t55_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (v2_lattice3(A) <=>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_finset_1(B) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  => r2_yellow_0(A, B)) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc2_finset_1, axiom,  (! [A] :  (v1_finset_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_finset_1(B)) ) ) ) ).
fof(cc2_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v2_lattice3(A) =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(fc1_finset_1, axiom,  (! [A] : v1_finset_1(k1_tarski(A))) ).
fof(fc2_finset_1, axiom,  (! [A, B] : v1_finset_1(k2_tarski(A, B))) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
fof(fc3_xboole_0, axiom,  (! [A, B] :  ~ (v1_xboole_0(k2_tarski(A, B))) ) ).
fof(rc2_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  (v1_finset_1(B) &  (v1_waybel_0(B, A) & v2_waybel_0(B, A)) ) ) ) ) ) ) ).
