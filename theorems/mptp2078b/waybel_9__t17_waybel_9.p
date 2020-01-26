% Mizar problem: t17_waybel_9,waybel_9,962,34 
fof(t17_waybel_9, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(B)) => m2_yellow_6(k4_waybel_9(A, B, C), A, B)) ) ) ) ) ) ).
fof(abstractness_v6_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v6_waybel_0(B, A) => B=g1_waybel_0(A, u1_struct_0(B), u1_orders_2(B), u1_waybel_0(A, B))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d12_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  &  (v4_orders_2(C) &  (v7_waybel_0(C) & l1_waybel_0(C, A)) ) )  =>  (m2_yellow_6(C, A, B) <=>  (? [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, u1_struct_0(C), u1_struct_0(B)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(C), u1_struct_0(B))))) )  &  (r2_funct_2(u1_struct_0(C), u1_struct_0(A), u1_waybel_0(A, C), k1_partfun1(u1_struct_0(C), u1_struct_0(B), u1_struct_0(B), u1_struct_0(A), D, u1_waybel_0(A, B))) &  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (? [F] :  (m1_subset_1(F, u1_struct_0(C)) &  (! [G] :  (m1_subset_1(G, u1_struct_0(C)) =>  (r1_orders_2(C, F, G) => r1_orders_2(B, E, k2_yellow_6(u1_struct_0(C), B, D, G))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d2_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (v4_orders_2(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r1_orders_2(A, B, C) & r1_orders_2(A, C, D))  => r1_orders_2(A, B, D)) ) ) ) ) ) ) ) ) ) ).
fof(d5_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (v7_waybel_0(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (? [D] :  (m1_subset_1(D, u1_struct_0(A)) &  (r1_orders_2(A, B, D) & r1_orders_2(A, C, D)) ) ) ) ) ) ) ) ) ) ).
fof(d7_waybel_9, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(B)) =>  (! [D] :  ( (v6_waybel_0(D, A) & l1_waybel_0(D, A))  =>  (D=k4_waybel_9(A, B, C) <=>  ( (! [E] :  (r2_hidden(E, u1_struct_0(D)) <=>  (? [F] :  (m1_subset_1(F, u1_struct_0(B)) &  (F=E & r1_orders_2(B, C, F)) ) ) ) )  &  (r2_relset_1(u1_struct_0(D), u1_struct_0(D), u1_orders_2(D), k1_toler_1(u1_orders_2(B), u1_struct_0(D))) & u1_waybel_0(A, D)=k2_partfun1(u1_struct_0(B), u1_struct_0(A), u1_waybel_0(A, B), u1_struct_0(D))) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (v6_waybel_0(g1_waybel_0(A, B, C, D), A) & l1_waybel_0(g1_waybel_0(A, B, C, D), A)) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_partfun1, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) )  =>  (v1_funct_1(k1_partfun1(A, B, C, D, E, F)) & m1_subset_1(k1_partfun1(A, B, C, D, E, F), k1_zfmisc_1(k2_zfmisc_1(A, D)))) ) ) ).
fof(dt_k1_toler_1, axiom,  (! [A, B] :  (v1_relat_1(A) => m1_subset_1(k1_toler_1(A, B), k1_zfmisc_1(k2_zfmisc_1(B, B)))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (v1_funct_1(k2_partfun1(A, B, C, D)) & m1_subset_1(k2_partfun1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(dt_k2_wellord1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k2_wellord1(A, B))) ) ).
fof(dt_k2_yellow_6, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, u1_struct_0(B))))) )  & m1_subset_1(D, A)) ) )  => m1_subset_1(k2_yellow_6(A, B, C, D), u1_struct_0(B))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_waybel_9, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  &  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  & m1_subset_1(C, u1_struct_0(B))) )  =>  (v6_waybel_0(k4_waybel_9(A, B, C), A) & l1_waybel_0(k4_waybel_9(A, B, C), A)) ) ) ).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k6_partfun1, axiom,  (! [A] :  (v1_partfun1(k6_partfun1(A), A) & m1_subset_1(k6_partfun1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m1_yellow_6, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (! [C] :  (m1_yellow_6(C, A, B) => l1_waybel_0(C, A)) ) ) ) ).
fof(dt_m2_yellow_6, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  &  ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) ) )  =>  (! [C] :  (m2_yellow_6(C, A, B) =>  ( ~ (v2_struct_0(C))  &  (v4_orders_2(C) &  (v7_waybel_0(C) & l1_waybel_0(C, A)) ) ) ) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u1_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v1_funct_1(u1_waybel_0(A, B)) &  (v1_funct_2(u1_waybel_0(A, B), u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(u1_waybel_0(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) ) ) ) ).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (? [B] : l1_waybel_0(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m1_yellow_6, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (? [C] : m1_yellow_6(C, A, B)) ) ) ).
fof(existence_m2_yellow_6, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  &  ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) ) )  =>  (? [C] : m2_yellow_6(C, A, B)) ) ) ).
fof(free_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (! [E, F, G, H] :  (g1_waybel_0(A, B, C, D)=g1_waybel_0(E, F, G, H) =>  (A=E &  (B=F &  (C=G & D=H) ) ) ) ) ) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(redefinition_k1_partfun1, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) )  => k1_partfun1(A, B, C, D, E, F)=k5_relat_1(E, F)) ) ).
fof(redefinition_k1_toler_1, axiom,  (! [A, B] :  (v1_relat_1(A) => k1_toler_1(A, B)=k2_wellord1(A, B)) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(redefinition_k2_yellow_6, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, u1_struct_0(B))))) )  & m1_subset_1(D, A)) ) )  => k2_yellow_6(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(redefinition_k6_partfun1, axiom,  (! [A] : k6_partfun1(A)=k6_relat_1(A)) ).
fof(redefinition_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  =>  (r2_funct_2(A, B, C, D) <=> C=D) ) ) ).
fof(redefinition_r2_relset_1, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (r2_relset_1(A, B, C, D) <=> C=D) ) ) ).
fof(reflexivity_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  => r2_funct_2(A, B, C, C)) ) ).
fof(reflexivity_r2_relset_1, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => r2_relset_1(A, B, C, C)) ) ).
fof(symmetry_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  =>  (r2_funct_2(A, B, C, D) => r2_funct_2(A, B, D, C)) ) ) ).
fof(symmetry_r2_relset_1, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (r2_relset_1(A, B, C, D) => r2_relset_1(A, B, D, C)) ) ) ).
fof(t13_waybel_9, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(B)) => r1_tarski(u1_struct_0(k4_waybel_9(A, B, C)), u1_struct_0(B))) ) ) ) ) ) ).
fof(t14_waybel_9, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(B)) =>  (v2_yellow_6(k4_waybel_9(A, B, C), A, B) & m1_yellow_6(k4_waybel_9(A, B, C), A, B)) ) ) ) ) ) ) ).
fof(t18_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  ( (! [E] :  (r2_hidden(E, A) => k1_funct_1(C, E)=k1_funct_1(D, E)) )  => r2_relset_1(A, B, C, D)) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t20_yellow_6, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) =>  (! [C] :  (m1_yellow_6(C, A, B) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(B)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(C)) =>  (! [G] :  (m1_subset_1(G, u1_struct_0(C)) =>  ( (D=F &  (E=G & r1_orders_2(C, F, G)) )  => r1_orders_2(B, D, E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t21_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (! [E] :  ( (v1_relat_1(E) & v1_funct_1(E))  =>  (r2_hidden(C, A) =>  (B=k1_xboole_0 | k1_funct_1(k5_relat_1(D, E), C)=k1_funct_1(E, k1_funct_1(D, C))) ) ) ) ) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t35_funct_1, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => k1_funct_1(k6_relat_1(B), A)=A) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t72_funct_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, B) => k1_funct_1(k7_relat_1(C, B), A)=k1_funct_1(C, A)) ) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t9_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (r1_tarski(B, C) =>  ( (B=k1_xboole_0 &  ~ (A=k1_xboole_0) )  |  (v1_funct_1(D) &  (v1_funct_2(D, A, C) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, C)))) ) ) ) ) ) ) ) ) ).
