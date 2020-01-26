% Mizar problem: t47_waybel_7,waybel_7,2045,58 
fof(t47_waybel_7, conjecture,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_yellow_0(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) ) )  =>  (! [B] :  ( (v5_waybel_4(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)))))  =>  (v5_waybel_7(B, A) <=> v19_waybel_0(k7_waybel_4(A, B), A, k2_yellow_1(k7_waybel_0(A)))) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k12_lattice3(A, C, B)) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k7_domain_1(A, B, C)=k7_domain_1(A, C, B)) ) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d11_waybel_4, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)))) => k5_waybel_4(A, B, C)=a_3_0_waybel_4(A, B, C)) ) ) ) ) ) ).
fof(d13_waybel_4, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_yellow_0(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) ) )  =>  (! [B] :  ( (v2_waybel_4(B, A) &  (v3_waybel_4(B, A) &  (v4_waybel_4(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(k2_yellow_1(k7_waybel_0(A)))) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(k2_yellow_1(k7_waybel_0(A))))))) )  =>  (C=k7_waybel_4(A, B) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) => k3_funct_2(u1_struct_0(A), u1_struct_0(k2_yellow_1(k7_waybel_0(A))), C, D)=k5_waybel_4(A, D, B)) ) ) ) ) ) ) ) ) ).
fof(d34_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (v19_waybel_0(C, A, B) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) => r3_waybel_0(A, B, C, k7_domain_1(u1_struct_0(A), D, E))) ) ) ) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_waybel_4, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)))) =>  (v2_waybel_4(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(A)) =>  ( (r1_orders_2(A, F, C) &  (r2_hidden(k4_tarski(C, D), B) & r1_orders_2(A, D, E)) )  => r2_hidden(k4_tarski(F, E), B)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d7_waybel_7, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)))) =>  (v5_waybel_7(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ( (r2_hidden(k7_yellow_3(A, A, C, D), B) & r2_hidden(k7_yellow_3(A, A, C, E), B))  => r2_hidden(k7_yellow_3(A, A, C, k11_lattice3(A, D, E)), B)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_k11_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k11_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k12_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => m1_subset_1(k1_domain_1(A, B, C, D), k2_zfmisc_1(A, B))) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_yellow_1, axiom,  (! [A] :  (v1_orders_2(k2_yellow_1(A)) & l1_orders_2(k2_yellow_1(A))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => m1_subset_1(k3_funct_2(A, B, C, D), B)) ) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k3_yellow_3, axiom,  (! [A, B] :  ( (l1_orders_2(A) & l1_orders_2(B))  =>  (v1_orders_2(k3_yellow_3(A, B)) & l1_orders_2(k3_yellow_3(A, B))) ) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k5_waybel_4, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) )  => m1_subset_1(k5_waybel_4(A, B, C), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => m1_subset_1(k7_domain_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k7_waybel_0, axiom, $true).
fof(dt_k7_waybel_4, axiom,  (! [A, B] :  ( ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_yellow_0(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) ) )  &  (v2_waybel_4(B, A) &  (v3_waybel_4(B, A) &  (v4_waybel_4(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ) )  =>  (v1_funct_1(k7_waybel_4(A, B)) &  (v1_funct_2(k7_waybel_4(A, B), u1_struct_0(A), u1_struct_0(k2_yellow_1(k7_waybel_0(A)))) & m1_subset_1(k7_waybel_4(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(k2_yellow_1(k7_waybel_0(A))))))) ) ) ) ).
fof(dt_k7_yellow_3, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  &  (m1_subset_1(C, u1_struct_0(A)) & m1_subset_1(D, u1_struct_0(B))) ) )  => m1_subset_1(k7_yellow_3(A, B, C, D), u1_struct_0(k3_yellow_3(A, B)))) ) ).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fraenkel_a_1_0_waybel_0, axiom,  (! [A, B] :  ( ( ~ (v2_struct_0(B))  &  (v3_orders_2(B) &  (v4_orders_2(B) & l1_orders_2(B)) ) )  =>  (r2_hidden(A, a_1_0_waybel_0(B)) <=>  (? [C] :  ( ( ~ (v1_xboole_0(C))  &  (v1_waybel_0(C, B) &  (v12_waybel_0(C, B) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B)))) ) )  & A=C) ) ) ) ) ).
fof(fraenkel_a_3_0_waybel_4, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  &  (m1_subset_1(C, u1_struct_0(B)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(B))))) )  =>  (r2_hidden(A, a_3_0_waybel_4(B, C, D)) <=>  (? [E] :  (m1_subset_1(E, u1_struct_0(B)) &  (A=E & r2_hidden(k1_domain_1(u1_struct_0(B), u1_struct_0(B), E, C), D)) ) ) ) ) ) ).
fof(fraenkel_a_4_1_waybel_7, axiom,  (! [A, B, C, D, E] :  ( ( (v3_orders_2(B) &  (v4_orders_2(B) &  (v5_orders_2(B) &  (v1_yellow_0(B) &  (v1_lattice3(B) &  (v2_lattice3(B) & l1_orders_2(B)) ) ) ) ) )  &  ( (v5_waybel_4(C, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(B)))))  &  (m1_subset_1(D, u1_struct_0(B)) & m1_subset_1(E, u1_struct_0(B))) ) )  =>  (r2_hidden(A, a_4_1_waybel_7(B, C, D, E)) <=>  (? [F] :  (m1_subset_1(F, u1_struct_0(B)) &  (A=F & r2_hidden(k7_yellow_3(B, B, F, k12_lattice3(B, D, E)), C)) ) ) ) ) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(redefinition_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k11_lattice3(A, B, C)) ) ).
fof(redefinition_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => k1_domain_1(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => k3_funct_2(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(redefinition_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k7_domain_1(A, B, C)=k2_tarski(B, C)) ) ).
fof(redefinition_k7_yellow_3, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  &  (m1_subset_1(C, u1_struct_0(A)) & m1_subset_1(D, u1_struct_0(B))) ) )  => k7_yellow_3(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(t13_waybel_4, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)))) =>  (! [C] :  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(C, k5_waybel_4(A, D, B)) <=> r2_hidden(k4_tarski(C, D), B)) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t23_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (D=k12_lattice3(A, B, C) <=>  (r1_orders_2(A, D, B) &  (r1_orders_2(A, D, C) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ( (r1_orders_2(A, E, B) & r1_orders_2(A, E, C))  => r1_orders_2(A, E, D)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t45_yellow_2, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(k2_yellow_1(k7_waybel_0(A)))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k2_yellow_1(k7_waybel_0(A)))) => k11_lattice3(k2_yellow_1(k7_waybel_0(A)), B, C)=k3_xboole_0(B, C)) ) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_yellow_3, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  ( (v3_orders_2(B) &  (v4_orders_2(B) &  (v5_orders_2(B) &  (v2_lattice3(B) & l1_orders_2(B)) ) ) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  (r3_waybel_0(A, B, C, k7_domain_1(u1_struct_0(A), D, E)) <=> k3_funct_2(u1_struct_0(A), u1_struct_0(B), C, k12_lattice3(A, D, E))=k12_lattice3(B, k3_funct_2(u1_struct_0(A), u1_struct_0(B), C, D), k3_funct_2(u1_struct_0(A), u1_struct_0(B), C, E))) ) ) ) ) ) ) ) ) ) ) ).
fof(cc1_waybel_4, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)))) =>  (v5_waybel_4(B, A) =>  (v1_waybel_4(B, A) &  (v2_waybel_4(B, A) &  (v3_waybel_4(B, A) & v4_waybel_4(B, A)) ) ) ) ) ) ) ) ).
fof(cc2_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v2_lattice3(A) =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc5_yellow_1, axiom,  (! [A] :  (v1_orders_2(k2_yellow_1(A)) &  (v3_orders_2(k2_yellow_1(A)) &  (v4_orders_2(k2_yellow_1(A)) & v5_orders_2(k2_yellow_1(A))) ) ) ) ).
fof(fc5_yellow_2, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (v1_orders_2(k2_yellow_1(k7_waybel_0(A))) & v1_lattice3(k2_yellow_1(k7_waybel_0(A)))) ) ) ).
fof(fc6_yellow_2, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v1_yellow_0(A) & l1_orders_2(A)) ) ) ) )  =>  (v1_orders_2(k2_yellow_1(k7_waybel_0(A))) & v3_lattice3(k2_yellow_1(k7_waybel_0(A)))) ) ) ).
fof(rc1_waybel_4, axiom,  (! [A] :  ( (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_yellow_0(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)))) &  (v1_relat_1(B) & v5_waybel_4(B, A)) ) ) ) ) ).
