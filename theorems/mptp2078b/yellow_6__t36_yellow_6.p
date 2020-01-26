% Mizar problem: t36_yellow_6,yellow_6,1447,25 
fof(t36_yellow_6, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (! [C] :  (m3_yellow_6(C, u1_struct_0(B), A) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(B)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(k5_yellow_1(u1_struct_0(B), C))) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(k8_yellow_6(A, B, C))) =>  (F=k7_yellow_3(B, k5_yellow_1(u1_struct_0(B), C), D, E) => k2_waybel_0(A, k8_yellow_6(A, B, C), F)=k3_funct_2(u1_struct_0(k3_waybel_3(u1_struct_0(B), C, D)), u1_struct_0(A), u1_waybel_0(A, k7_yellow_6(u1_struct_0(B), A, C, D)), k4_waybel_3(u1_struct_0(B), C, E, D))) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(abstractness_v6_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v6_waybel_0(B, A) => B=g1_waybel_0(A, u1_struct_0(B), u1_orders_2(B), u1_waybel_0(A, B))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d16_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (! [C] :  (m3_yellow_6(C, u1_struct_0(B), A) =>  (! [D] :  ( ( ~ (v2_struct_0(D))  &  (v4_orders_2(D) &  (v6_waybel_0(D, A) &  (v7_waybel_0(D) & l1_waybel_0(D, A)) ) ) )  =>  (D=k8_yellow_6(A, B, C) <=>  (g1_orders_2(u1_struct_0(D), u1_orders_2(D))=k3_yellow_3(B, k5_yellow_1(u1_struct_0(B), C)) &  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (! [F] :  ( (v1_relat_1(F) & v1_funct_1(F))  =>  ( (r2_hidden(E, u1_struct_0(B)) & r2_hidden(F, u1_struct_0(k5_yellow_1(u1_struct_0(B), C))))  => k1_binop_1(u1_waybel_0(A, D), E, F)=k1_funct_1(u1_waybel_0(A, k7_yellow_6(u1_struct_0(B), A, C, E)), k1_funct_1(F, E))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d1_binop_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] : k1_binop_1(A, B, C)=k1_funct_1(A, k4_tarski(B, C))) ) ) ) ).
fof(d8_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(B)) => k2_waybel_0(A, B, C)=k3_funct_2(u1_struct_0(B), u1_struct_0(A), u1_waybel_0(A, B), C)) ) ) ) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (v6_waybel_0(g1_waybel_0(A, B, C, D), A) & l1_waybel_0(g1_waybel_0(A, B, C, D), A)) ) ) ).
fof(dt_k1_binop_1, axiom, $true).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_waybel_0, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  &  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  & m1_subset_1(C, u1_struct_0(B))) )  => m1_subset_1(k2_waybel_0(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => m1_subset_1(k3_funct_2(A, B, C, D), B)) ) ).
fof(dt_k3_waybel_3, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_relat_1(B) &  (v4_relat_1(B, A) &  (v1_funct_1(B) &  (v1_partfun1(B, A) & v1_yellow_1(B)) ) ) )  & m1_subset_1(C, A)) )  => l1_orders_2(k3_waybel_3(A, B, C))) ) ).
fof(dt_k3_yellow_3, axiom,  (! [A, B] :  ( (l1_orders_2(A) & l1_orders_2(B))  =>  (v1_orders_2(k3_yellow_3(A, B)) & l1_orders_2(k3_yellow_3(A, B))) ) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k4_waybel_3, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_relat_1(B) &  (v4_relat_1(B, A) &  (v1_funct_1(B) &  (v1_partfun1(B, A) &  (v1_yellow_1(B) & v4_waybel_3(B)) ) ) ) )  &  (m1_subset_1(C, u1_struct_0(k5_yellow_1(A, B))) & m1_subset_1(D, A)) ) )  => m1_subset_1(k4_waybel_3(A, B, C, D), u1_struct_0(k3_waybel_3(A, B, D)))) ) ).
fof(dt_k5_yellow_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) &  (v4_relat_1(B, A) &  (v1_funct_1(B) &  (v1_partfun1(B, A) & v1_yellow_1(B)) ) ) )  =>  (v1_orders_2(k5_yellow_1(A, B)) & l1_orders_2(k5_yellow_1(A, B))) ) ) ).
fof(dt_k7_yellow_3, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  &  (m1_subset_1(C, u1_struct_0(A)) & m1_subset_1(D, u1_struct_0(B))) ) )  => m1_subset_1(k7_yellow_3(A, B, C, D), u1_struct_0(k3_yellow_3(A, B)))) ) ).
fof(dt_k7_yellow_6, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  (l1_struct_0(B) &  (m3_yellow_6(C, A, B) & m1_subset_1(D, A)) ) )  =>  ( ~ (v2_struct_0(k7_yellow_6(A, B, C, D)))  &  (v4_orders_2(k7_yellow_6(A, B, C, D)) &  (v7_waybel_0(k7_yellow_6(A, B, C, D)) & l1_waybel_0(k7_yellow_6(A, B, C, D), B)) ) ) ) ) ).
fof(dt_k8_yellow_6, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  &  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  & m3_yellow_6(C, u1_struct_0(B), A)) )  =>  ( ~ (v2_struct_0(k8_yellow_6(A, B, C)))  &  (v4_orders_2(k8_yellow_6(A, B, C)) &  (v6_waybel_0(k8_yellow_6(A, B, C), A) &  (v7_waybel_0(k8_yellow_6(A, B, C)) & l1_waybel_0(k8_yellow_6(A, B, C), A)) ) ) ) ) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m3_yellow_6, axiom,  (! [A, B] :  (l1_struct_0(B) =>  (! [C] :  (m3_yellow_6(C, A, B) =>  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v1_funct_1(C) & v1_partfun1(C, A)) ) ) ) ) ) ) ).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u1_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v1_funct_1(u1_waybel_0(A, B)) &  (v1_funct_2(u1_waybel_0(A, B), u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(u1_waybel_0(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) ) ) ) ).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (? [B] : l1_waybel_0(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m3_yellow_6, axiom,  (! [A, B] :  (l1_struct_0(B) =>  (? [C] : m3_yellow_6(C, A, B)) ) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(free_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (! [E, F, G, H] :  (g1_waybel_0(A, B, C, D)=g1_waybel_0(E, F, G, H) =>  (A=E &  (B=F &  (C=G & D=H) ) ) ) ) ) ) ).
fof(redefinition_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => k3_funct_2(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(redefinition_k3_waybel_3, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_relat_1(B) &  (v4_relat_1(B, A) &  (v1_funct_1(B) &  (v1_partfun1(B, A) & v1_yellow_1(B)) ) ) )  & m1_subset_1(C, A)) )  => k3_waybel_3(A, B, C)=k1_funct_1(B, C)) ) ).
fof(redefinition_k4_waybel_3, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_relat_1(B) &  (v4_relat_1(B, A) &  (v1_funct_1(B) &  (v1_partfun1(B, A) &  (v1_yellow_1(B) & v4_waybel_3(B)) ) ) ) )  &  (m1_subset_1(C, u1_struct_0(k5_yellow_1(A, B))) & m1_subset_1(D, A)) ) )  => k4_waybel_3(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(redefinition_k7_yellow_3, axiom,  (! [A, B, C, D] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  &  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  &  (m1_subset_1(C, u1_struct_0(A)) & m1_subset_1(D, u1_struct_0(B))) ) )  => k7_yellow_3(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_k7_yellow_6, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  (l1_struct_0(B) &  (m3_yellow_6(C, A, B) & m1_subset_1(D, A)) ) )  => k7_yellow_6(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
