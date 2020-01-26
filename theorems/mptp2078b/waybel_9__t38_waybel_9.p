% Mizar problem: t38_waybel_9,waybel_9,2219,54 
fof(t38_waybel_9, conjecture,  (! [A] :  ( (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) &  (v1_compts_1(A) & l1_waybel_9(A)) ) ) ) ) ) ) )  =>  ( (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => v5_pre_topc(k4_waybel_1(A, B), A, A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (v10_waybel_0(B, A) =>  (r1_waybel_9(A, B) & r2_hidden(k1_waybel_2(A, B), k10_yellow_6(A, B))) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d3_waybel_9, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (l1_waybel_0(B, A) =>  (r1_waybel_9(A, B) <=> r1_yellow_0(A, k2_relset_1(u1_struct_0(B), u1_struct_0(A), u1_waybel_0(A, B)))) ) ) ) ) ).
fof(dt_k10_yellow_6, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  &  ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) ) )  => m1_subset_1(k10_yellow_6(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k1_waybel_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & l1_waybel_0(B, A))  => m1_subset_1(k1_waybel_2(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k2_relset_1(A, B, C), k1_zfmisc_1(B))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k4_waybel_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & m1_subset_1(B, u1_struct_0(A)))  =>  (v1_funct_1(k4_waybel_1(A, B)) &  (v1_funct_2(k4_waybel_1(A, B), u1_struct_0(A), u1_struct_0(A)) & m1_subset_1(k4_waybel_1(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ) ) ).
fof(dt_k4_yellow_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  & v1_relat_1(B))  => m1_subset_1(k4_yellow_2(A, B), u1_struct_0(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_l1_waybel_9, axiom,  (! [A] :  (l1_waybel_9(A) =>  (l1_pre_topc(A) & l1_orders_2(A)) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(dt_u1_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v1_funct_1(u1_waybel_0(A, B)) &  (v1_funct_2(u1_waybel_0(A, B), u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(u1_waybel_0(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) ) ) ) ).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (? [B] : l1_waybel_0(B, A)) ) ) ).
fof(existence_l1_waybel_9, axiom,  (? [A] : l1_waybel_9(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(l48_waybel_9, axiom,  (! [A] :  ( (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) &  (v1_compts_1(A) & l1_waybel_9(A)) ) ) ) ) ) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (C=D &  ( (! [E] :  (m1_subset_1(E, u1_struct_0(A)) => v5_pre_topc(k4_waybel_1(A, E), A, A)) )  &  (v10_waybel_0(B, A) & r3_waybel_9(A, B, C)) ) )  => r2_lattice3(A, k2_relset_1(u1_struct_0(B), u1_struct_0(A), u1_waybel_0(A, B)), D)) ) ) ) ) ) ) ) ) ).
fof(l49_waybel_9, axiom,  (! [A] :  ( (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) &  (v1_compts_1(A) & l1_waybel_9(A)) ) ) ) ) ) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (C=D &  ( (! [E] :  (m1_subset_1(E, u1_struct_0(A)) => v5_pre_topc(k4_waybel_1(A, E), A, A)) )  & r3_waybel_9(A, B, C)) )  =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  (r2_lattice3(A, k2_relset_1(u1_struct_0(B), u1_struct_0(A), u1_waybel_0(A, B)), E) => r3_orders_2(A, D, E)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k2_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(t15_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (r1_yellow_0(A, B) <=>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) &  (r2_lattice3(A, B, C) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, B, D) => r1_orders_2(A, C, D)) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t30_waybel_9, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v1_compts_1(A) & l1_pre_topc(A)) ) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) & r3_waybel_9(A, B, C)) ) ) ) ) ) ).
fof(t33_waybel_9, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v1_compts_1(A) & l1_pre_topc(A)) ) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  ( (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r3_waybel_9(A, B, C) & r3_waybel_9(A, B, D))  => C=D) ) ) ) )  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r3_waybel_9(A, B, C) => r2_hidden(C, k10_yellow_6(A, B))) ) ) ) ) ) ) ) ).
fof(t35_waybel_9, axiom,  (! [A] :  ( (v2_pre_topc(A) &  (v8_pre_topc(A) &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) &  (v2_lattice3(A) &  (v1_compts_1(A) & l1_waybel_9(A)) ) ) ) ) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( ~ (v2_struct_0(C))  &  (v4_orders_2(C) &  (v7_waybel_0(C) & l1_waybel_0(C, A)) ) )  =>  ( ( (! [D] :  (m1_subset_1(D, u1_struct_0(A)) => v5_pre_topc(k4_waybel_1(A, D), A, A)) )  &  (v10_waybel_0(C, A) & r3_waybel_9(A, C, B)) )  => B=k1_waybel_2(A, C)) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
