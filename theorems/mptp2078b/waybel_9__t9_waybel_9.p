% Mizar problem: t9_waybel_9,waybel_9,336,58 
fof(t9_waybel_9, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) & l1_orders_2(A)) ) )  =>  ( (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( ~ (v2_struct_0(C))  &  (v4_orders_2(C) &  (v7_waybel_0(C) & l1_waybel_0(C, A)) ) )  =>  (v10_waybel_0(C, A) => k11_lattice3(A, B, k1_waybel_2(A, C))=k1_yellow_0(A, k3_yellow_4(A, k6_domain_1(u1_struct_0(A), B), k2_relset_1(u1_struct_0(C), u1_struct_0(A), k1_waybel_0(A, C))))) ) ) ) )  => v1_waybel_2(A)) ) ) ).
fof(abstractness_v6_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v6_waybel_0(B, A) => B=g1_waybel_0(A, u1_struct_0(B), u1_orders_2(B), u1_waybel_0(A, B))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d1_waybel_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (l1_waybel_0(B, A) => k1_waybel_2(A, B)=k4_yellow_2(A, u1_waybel_0(A, B))) ) ) ) ).
fof(d5_yellow_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  (v1_relat_1(B) => k4_yellow_2(A, B)=k1_yellow_0(A, k2_relat_1(B))) ) ) ) ).
fof(d6_waybel_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  =>  (v1_waybel_2(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( ~ (v1_xboole_0(C))  &  (v1_waybel_0(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) )  => k11_lattice3(A, B, k1_yellow_0(A, C))=k1_yellow_0(A, k3_yellow_4(A, k6_domain_1(u1_struct_0(A), B), C))) ) ) ) ) ) ) ).
fof(d7_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  => k1_waybel_0(A, B)=u1_waybel_0(A, B)) ) ) ) ).
fof(dt_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (v6_waybel_0(g1_waybel_0(A, B, C, D), A) & l1_waybel_0(g1_waybel_0(A, B, C, D), A)) ) ) ).
fof(dt_k11_lattice3, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k11_lattice3(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_toler_1, axiom,  (! [A, B] :  (v1_relat_1(A) => m1_subset_1(k1_toler_1(A, B), k1_zfmisc_1(k2_zfmisc_1(B, B)))) ) ).
fof(dt_k1_waybel_0, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  &  ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A)) )  =>  (v1_funct_1(k1_waybel_0(A, B)) &  (v1_funct_2(k1_waybel_0(A, B), u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(k1_waybel_0(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) ) ) ) ).
fof(dt_k1_waybel_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & l1_waybel_0(B, A))  => m1_subset_1(k1_waybel_2(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k1_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k2_relset_1(A, B, C), k1_zfmisc_1(B))) ) ).
fof(dt_k2_wellord1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k2_wellord1(A, B))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k3_yellow_4, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) )  => m1_subset_1(k3_yellow_4(A, B, C), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k4_yellow_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & v1_relat_1(B))  => m1_subset_1(k4_yellow_2(A, B), u1_struct_0(A))) ) ).
fof(dt_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => m1_subset_1(k6_domain_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k6_partfun1, axiom,  (! [A] :  (v1_partfun1(k6_partfun1(A), A) & m1_subset_1(k6_partfun1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(dt_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k7_relset_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u1_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v1_funct_1(u1_waybel_0(A, B)) &  (v1_funct_2(u1_waybel_0(A, B), u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(u1_waybel_0(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) ) ) ) ).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (? [B] : l1_waybel_0(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(free_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (! [E, F, G, H] :  (g1_waybel_0(A, B, C, D)=g1_waybel_0(E, F, G, H) =>  (A=E &  (B=F &  (C=G & D=H) ) ) ) ) ) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(redefinition_k1_toler_1, axiom,  (! [A, B] :  (v1_relat_1(A) => k1_toler_1(A, B)=k2_wellord1(A, B)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k2_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(redefinition_k6_partfun1, axiom,  (! [A] : k6_partfun1(A)=k6_relat_1(A)) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k9_relat_1(C, D)) ) ).
fof(redefinition_r1_funct_2, axiom,  (! [A, B, C, D, E, F] :  ( ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(D))  &  ( (v1_funct_1(E) &  (v1_funct_2(E, A, B) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(F) &  (v1_funct_2(F, C, D) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) ) ) ) )  =>  (r1_funct_2(A, B, C, D, E, F) <=> E=F) ) ) ).
fof(reflexivity_r1_funct_2, axiom,  (! [A, B, C, D, E, F] :  ( ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(D))  &  ( (v1_funct_1(E) &  (v1_funct_2(E, A, B) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(F) &  (v1_funct_2(F, C, D) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) ) ) ) )  => r1_funct_2(A, B, C, D, E, E)) ) ).
fof(symmetry_r1_funct_2, axiom,  (! [A, B, C, D, E, F] :  ( ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(D))  &  ( (v1_funct_1(E) &  (v1_funct_2(E, A, B) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(F) &  (v1_funct_2(F, C, D) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) ) ) ) )  =>  (r1_funct_2(A, B, C, D, E, F) => r1_funct_2(A, B, C, D, F, E)) ) ) ).
fof(t162_funct_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k9_relat_1(k6_relat_1(A), B)=B) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t20_waybel_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_waybel_0(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, B, u1_struct_0(A)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) )  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  &  (v7_waybel_0(D) & l1_waybel_0(D, A)) )  =>  ( (r1_funct_2(B, u1_struct_0(A), B, B, C, k6_partfun1(B)) & D=g1_waybel_0(A, B, k1_toler_1(u1_orders_2(A), B), C))  => v10_waybel_0(D, A)) ) ) ) ) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t45_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  ( (B=k1_xboole_0 => A=k1_xboole_0)  => k7_relset_1(A, B, C, A)=k2_relset_1(A, B, C)) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t9_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (r1_tarski(B, C) =>  ( (B=k1_xboole_0 &  ~ (A=k1_xboole_0) )  |  (v1_funct_1(D) &  (v1_funct_2(D, A, C) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, C)))) ) ) ) ) ) ) ) ) ).
