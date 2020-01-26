% Mizar problem: t46_waybel_7,waybel_7,1993,45 
fof(t46_waybel_7, conjecture,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_yellow_0(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) ) )  =>  (! [B] :  ( (v5_waybel_4(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)))))  =>  (v5_waybel_7(B, A) <=>  (! [C] :  ( (v4_yellow_0(C, k3_yellow_3(A, A)) & m1_yellow_0(C, k3_yellow_3(A, A)))  =>  (u1_struct_0(C)=B => v5_yellow_0(C, k3_yellow_3(A, A))) ) ) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k12_lattice3(A, C, B)) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k7_domain_1(A, B, C)=k7_domain_1(A, C, B)) ) ).
fof(d15_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  ( (v1_orders_2(C) &  (v4_yellow_0(C, A) & m1_yellow_0(C, A)) )  =>  (C=k5_yellow_0(A, B) <=> u1_struct_0(C)=B) ) ) ) ) ) ) ).
fof(d16_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (m1_yellow_0(B, A) =>  (v5_yellow_0(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r2_hidden(C, u1_struct_0(B)) &  (r2_hidden(D, u1_struct_0(B)) & r2_yellow_0(A, k7_domain_1(u1_struct_0(A), C, D))) )  => r2_hidden(k2_yellow_0(A, k7_domain_1(u1_struct_0(A), C, D)), u1_struct_0(B))) ) ) ) ) ) ) ) ) ) ).
fof(d2_yellow_3, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (l1_orders_2(B) =>  (! [C] :  ( (v1_orders_2(C) & l1_orders_2(C))  =>  (C=k3_yellow_3(A, B) <=>  (u1_struct_0(C)=k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B)) & u1_orders_2(C)=k2_yellow_3(u1_struct_0(A), u1_struct_0(A), u1_struct_0(B), u1_struct_0(B), u1_orders_2(A), u1_orders_2(B))) ) ) ) ) ) ) ) ).
fof(d7_waybel_7, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)))) =>  (v5_waybel_7(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ( (r2_hidden(k7_yellow_3(A, A, C, D), B) & r2_hidden(k7_yellow_3(A, A, C, E), B))  => r2_hidden(k7_yellow_3(A, A, C, k11_lattice3(A, D, E)), B)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_k11_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k11_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k12_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_3, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k1_yellow_3(A, B))) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k2_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k2_yellow_3, axiom,  (! [A, B, C, D, E, F] :  ( (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D))))  => m1_subset_1(k2_yellow_3(A, B, C, D, E, F), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, C), k2_zfmisc_1(B, D))))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_yellow_3, axiom,  (! [A, B] :  ( (l1_orders_2(A) & l1_orders_2(B))  =>  (v1_orders_2(k3_yellow_3(A, B)) & l1_orders_2(k3_yellow_3(A, B))) ) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k4_yellow_3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (l1_orders_2(B) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(k3_yellow_3(A, B))))) )  => m1_subset_1(k4_yellow_3(A, B, C), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k5_yellow_0, axiom,  (! [A, B] :  ( (l1_orders_2(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v1_orders_2(k5_yellow_0(A, B)) &  (v4_yellow_0(k5_yellow_0(A, B), A) & m1_yellow_0(k5_yellow_0(A, B), A)) ) ) ) ).
fof(dt_k5_yellow_3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (l1_orders_2(B) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(k3_yellow_3(A, B))))) )  => m1_subset_1(k5_yellow_3(A, B, C), k1_zfmisc_1(u1_struct_0(B)))) ) ).
fof(dt_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => m1_subset_1(k7_domain_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k7_yellow_3, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  &  (m1_subset_1(C, u1_struct_0(A)) & m1_subset_1(D, u1_struct_0(B))) ) )  => m1_subset_1(k7_yellow_3(A, B, C, D), u1_struct_0(k3_yellow_3(A, B)))) ) ).
fof(dt_k8_yellow_3, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  & m1_subset_1(C, u1_struct_0(k3_yellow_3(A, B)))) )  => m1_subset_1(k8_yellow_3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k9_yellow_3, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  & m1_subset_1(C, u1_struct_0(k3_yellow_3(A, B)))) )  => m1_subset_1(k9_yellow_3(A, B, C), u1_struct_0(B))) ) ).
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
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(redefinition_k12_lattice3, axiom,  (! [A, B, C] :  ( ( (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k12_lattice3(A, B, C)=k11_lattice3(A, B, C)) ) ).
fof(redefinition_k2_yellow_3, axiom,  (! [A, B, C, D, E, F] :  ( (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D))))  => k2_yellow_3(A, B, C, D, E, F)=k1_yellow_3(E, F)) ) ).
fof(redefinition_k4_yellow_3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (l1_orders_2(B) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(k3_yellow_3(A, B))))) )  => k4_yellow_3(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k5_yellow_3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (l1_orders_2(B) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(k3_yellow_3(A, B))))) )  => k5_yellow_3(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_k7_domain_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (m1_subset_1(B, A) & m1_subset_1(C, A)) )  => k7_domain_1(A, B, C)=k2_tarski(B, C)) ) ).
fof(redefinition_k7_yellow_3, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  &  (m1_subset_1(C, u1_struct_0(A)) & m1_subset_1(D, u1_struct_0(B))) ) )  => k7_yellow_3(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_k8_yellow_3, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  & m1_subset_1(C, u1_struct_0(k3_yellow_3(A, B)))) )  => k8_yellow_3(A, B, C)=k1_mcart_1(C)) ) ).
fof(redefinition_k9_yellow_3, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  & m1_subset_1(C, u1_struct_0(k3_yellow_3(A, B)))) )  => k9_yellow_3(A, B, C)=k2_mcart_1(C)) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(t16_funct_5, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (k1_relat_1(k2_tarski(k4_tarski(A, B), k4_tarski(C, D)))=k2_tarski(A, C) & k2_relat_1(k2_tarski(k4_tarski(A, B), k4_tarski(C, D)))=k2_tarski(B, D)) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t21_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (v2_lattice3(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => r2_yellow_0(A, k2_tarski(B, C))) ) ) ) ) ) ) ).
fof(t23_mcart_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r2_hidden(A, B) => A=k4_tarski(k1_mcart_1(A), k2_mcart_1(A))) ) ) ) ).
fof(t25_yellow_0, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (B=k12_lattice3(A, B, C) <=> r3_orders_2(A, B, C)) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t40_yellow_0, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k2_yellow_0(A, k7_domain_1(u1_struct_0(A), B, C))=k12_lattice3(A, B, C)) ) ) ) ) ) ).
fof(t45_waybel_7, axiom,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_yellow_0(A) &  (v1_lattice3(A) &  (v2_lattice3(A) & l1_orders_2(A)) ) ) ) ) )  =>  (! [B] :  ( (v5_waybel_4(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)))))  =>  (v5_waybel_7(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(A)) =>  ( (r2_hidden(k7_yellow_3(A, A, C, E), B) & r2_hidden(k7_yellow_3(A, A, D, F), B))  => r2_hidden(k7_yellow_3(A, A, k12_lattice3(A, C, D), k12_lattice3(A, E, F)), B)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t47_yellow_3, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v5_orders_2(A) & l1_orders_2(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v5_orders_2(B) & l1_orders_2(B)) )  =>  (! [C] :  ( ( ~ (v1_xboole_0(C))  & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(k3_yellow_3(A, B)))))  =>  ( (v3_lattice3(k3_yellow_3(A, B)) | r2_yellow_0(k3_yellow_3(A, B), C))  => k2_yellow_0(k3_yellow_3(A, B), C)=k7_yellow_3(A, B, k2_yellow_0(A, k4_yellow_3(A, B, C)), k2_yellow_0(B, k5_yellow_3(A, B, C)))) ) ) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc2_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v2_lattice3(A) =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc3_xboole_0, axiom,  (! [A, B] :  ~ (v1_xboole_0(k2_tarski(A, B))) ) ).
fof(fc4_yellow_3, axiom,  (! [A, B] :  ( ( (v3_orders_2(A) & l1_orders_2(A))  &  (v3_orders_2(B) & l1_orders_2(B)) )  =>  (v1_orders_2(k3_yellow_3(A, B)) & v3_orders_2(k3_yellow_3(A, B))) ) ) ).
fof(fc5_yellow_3, axiom,  (! [A, B] :  ( ( (v5_orders_2(A) & l1_orders_2(A))  &  (v5_orders_2(B) & l1_orders_2(B)) )  =>  (v1_orders_2(k3_yellow_3(A, B)) & v5_orders_2(k3_yellow_3(A, B))) ) ) ).
fof(fc6_relat_1, axiom,  (! [A, B] : v1_relat_1(k2_zfmisc_1(A, B))) ).
fof(fc6_yellow_3, axiom,  (! [A, B] :  ( ( (v4_orders_2(A) & l1_orders_2(A))  &  (v4_orders_2(B) & l1_orders_2(B)) )  =>  (v1_orders_2(k3_yellow_3(A, B)) & v4_orders_2(k3_yellow_3(A, B))) ) ) ).
fof(fc8_yellow_3, axiom,  (! [A, B] :  ( ( (v2_lattice3(A) & l1_orders_2(A))  &  (v2_lattice3(B) & l1_orders_2(B)) )  =>  (v1_orders_2(k3_yellow_3(A, B)) & v2_lattice3(k3_yellow_3(A, B))) ) ) ).
fof(rc1_waybel_4, axiom,  (! [A] :  ( (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_yellow_0(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A)))) &  (v1_relat_1(B) & v5_waybel_4(B, A)) ) ) ) ) ).
