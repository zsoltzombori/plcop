% Mizar problem: t22_yellow_6,yellow_6,704,38 
fof(t22_yellow_6, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_struct_0(B))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(B)) => k4_yellow_6(B, k3_yellow_6(A, B, C))=C) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(abstractness_v6_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v6_waybel_0(B, A) => B=g1_waybel_0(A, u1_struct_0(B), u1_orders_2(B), u1_waybel_0(A, B))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d10_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  (l1_waybel_0(B, A) =>  (v1_yellow_6(B, A) =>  (v2_struct_0(B) | k4_yellow_6(A, B)=k3_funct_1(u1_waybel_0(A, B))) ) ) ) ) ) ).
fof(d7_yellow_6, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_struct_0(B))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(B)) =>  (! [D] :  ( (v6_waybel_0(D, B) & l1_waybel_0(D, B))  =>  (D=k3_yellow_6(A, B, C) <=>  (g1_orders_2(u1_struct_0(D), u1_orders_2(D))=g1_orders_2(u1_struct_0(A), u1_orders_2(A)) & r2_funct_2(u1_struct_0(D), u1_struct_0(B), u1_waybel_0(B, D), k8_funcop_1(u1_struct_0(B), u1_struct_0(D), C))) ) ) ) ) ) ) ) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (v6_waybel_0(g1_waybel_0(A, B, C, D), A) & l1_waybel_0(g1_waybel_0(A, B, C, D), A)) ) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_funcop_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_1, axiom, $true).
fof(dt_k3_yellow_6, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  ( ( ~ (v2_struct_0(B))  & l1_struct_0(B))  & m1_subset_1(C, u1_struct_0(B))) )  =>  (v6_waybel_0(k3_yellow_6(A, B, C), B) & l1_waybel_0(k3_yellow_6(A, B, C), B)) ) ) ).
fof(dt_k4_yellow_6, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  & l1_waybel_0(B, A))  => m1_subset_1(k4_yellow_6(A, B), u1_struct_0(A))) ) ).
fof(dt_k7_funcop_1, axiom,  (! [A, B] :  (v1_funct_1(k7_funcop_1(A, B)) &  (v1_funct_2(k7_funcop_1(A, B), A, k1_tarski(B)) & m1_subset_1(k7_funcop_1(A, B), k1_zfmisc_1(k2_zfmisc_1(A, k1_tarski(B))))) ) ) ).
fof(dt_k8_funcop_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(C, A))  =>  (v1_funct_1(k8_funcop_1(A, B, C)) &  (v1_funct_2(k8_funcop_1(A, B, C), B, A) & m1_subset_1(k8_funcop_1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, A)))) ) ) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u1_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v1_funct_1(u1_waybel_0(A, B)) &  (v1_funct_2(u1_waybel_0(A, B), u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(u1_waybel_0(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) ) ) ) ).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (? [B] : l1_waybel_0(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(free_g1_waybel_0, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, B))) &  (v1_funct_1(D) &  (v1_funct_2(D, B, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, u1_struct_0(A))))) ) ) )  =>  (! [E, F, G, H] :  (g1_waybel_0(A, B, C, D)=g1_waybel_0(E, F, G, H) =>  (A=E &  (B=F &  (C=G & D=H) ) ) ) ) ) ) ).
fof(redefinition_k7_funcop_1, axiom,  (! [A, B] : k7_funcop_1(A, B)=k2_funcop_1(A, B)) ).
fof(redefinition_k8_funcop_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(C, A))  => k8_funcop_1(A, B, C)=k2_funcop_1(B, C)) ) ).
fof(redefinition_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  =>  (r2_funct_2(A, B, C, D) <=> C=D) ) ) ).
fof(reflexivity_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  => r2_funct_2(A, B, C, C)) ) ).
fof(spc1_boole, axiom,  ~ (v1_xboole_0(1)) ).
fof(symmetry_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  =>  (r2_funct_2(A, B, C, D) => r2_funct_2(A, B, D, C)) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t94_funcop_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] : k3_funct_1(k7_funcop_1(A, B))=B) ) ) ).
