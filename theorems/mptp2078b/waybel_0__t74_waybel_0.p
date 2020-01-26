% Mizar problem: t74_waybel_0,waybel_0,3347,28 
fof(t74_waybel_0, conjecture,  (! [A] :  ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v3_orders_2(B) &  (v4_orders_2(B) &  (v5_orders_2(B) & l1_orders_2(B)) ) ) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  ( ( (! [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))))  => r4_waybel_0(A, B, C, D)) )  &  (! [D] :  ( ( ~ (v1_xboole_0(D))  &  (v1_waybel_0(D, A) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A)))) )  => r4_waybel_0(A, B, C, D)) ) )  => v18_waybel_0(C, A, B)) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc1_finset_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_finset_1(A)) ) ).
fof(cc1_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_lattice3(A) =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(d12_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  (C=k9_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (r2_hidden(E, k1_relat_1(A)) &  (r2_hidden(E, B) & D=k1_funct_1(A, E)) ) ) ) ) ) ) ) ) ) ).
fof(d31_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  (r4_waybel_0(A, B, C, D) <=>  (r1_yellow_0(A, D) =>  (r1_yellow_0(B, k7_relset_1(u1_struct_0(A), u1_struct_0(B), C, D)) & k1_yellow_0(B, k7_relset_1(u1_struct_0(A), u1_struct_0(B), C, D))=k3_funct_2(u1_struct_0(A), u1_struct_0(B), C, k1_yellow_0(A, D))) ) ) ) ) ) ) ) ) ) ) ).
fof(d33_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (v18_waybel_0(C, A, B) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) => r4_waybel_0(A, B, C, D)) ) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d9_lattice3, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r2_lattice3(A, B, C) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, B) => r1_orders_2(A, D, C)) ) ) ) ) ) ) ) ) ).
fof(d9_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r1_yellow_0(A, B) =>  (C=k1_yellow_0(A, B) <=>  (r2_lattice3(A, B, C) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, B, D) => r1_orders_2(A, C, D)) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k1_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_yellow_0, axiom,  (! [A, B] :  (l1_orders_2(A) => m1_subset_1(k2_yellow_0(A, B), u1_struct_0(A))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => m1_subset_1(k3_funct_2(A, B, C, D), B)) ) ).
fof(dt_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => m1_subset_1(k6_domain_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k7_relset_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fc1_finset_1, axiom,  (! [A] : v1_finset_1(k1_tarski(A))) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
fof(rc1_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  (v1_waybel_0(B, A) & v2_waybel_0(B, A)) ) ) ) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => k3_funct_2(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k9_relat_1(C, D)) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(s1_xboole_0__e4_135__waybel_0, axiom,  (! [A, B] :  ( ( (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) &  (v1_lattice3(A) & l1_orders_2(A)) ) ) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (? [C] :  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, u1_struct_0(A)) &  (? [E] :  ( (v1_finset_1(E) & m1_subset_1(E, k1_zfmisc_1(B)))  &  (r1_yellow_0(A, E) & D=k1_yellow_0(A, E)) ) ) ) ) ) ) ) ) ).
fof(t156_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(A, B) => r1_tarski(k9_relat_1(C, A), k9_relat_1(C, B))) ) ) ) ) ).
fof(t15_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (r1_yellow_0(A, B) <=>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) &  (r2_lattice3(A, B, C) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, B, D) => r1_orders_2(A, C, D)) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t30_yellow_0, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( (B=k1_yellow_0(A, C) & r1_yellow_0(A, C))  =>  (r2_lattice3(A, C, B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, C, D) => r1_orders_2(A, B, D)) ) ) ) )  &  ( (r2_lattice3(A, C, B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_lattice3(A, C, D) => r1_orders_2(A, B, D)) ) ) )  =>  (B=k1_yellow_0(A, C) & r1_yellow_0(A, C)) ) ) ) ) ) ) ) ).
fof(t37_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(t39_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (k1_yellow_0(A, k6_domain_1(u1_struct_0(A), B))=B & k2_yellow_0(A, k6_domain_1(u1_struct_0(A), B))=B) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t51_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v4_orders_2(A) & l1_orders_2(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ( ( (! [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(B)))  =>  ( ~ (D=k1_xboole_0)  => r1_yellow_0(A, D)) ) )  &  ( (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ~ ( (r2_hidden(D, C) &  (! [E] :  ( (v1_finset_1(E) & m1_subset_1(E, k1_zfmisc_1(B)))  =>  ~ ( (r1_yellow_0(A, E) & D=k1_yellow_0(A, E)) ) ) ) ) ) ) )  &  (! [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(B)))  =>  ( ~ (D=k1_xboole_0)  => r2_hidden(k1_yellow_0(A, D), C)) ) ) ) )  => v1_waybel_0(C, A)) ) ) ) ) ) ) ).
fof(t53_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ( ( (! [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(B)))  =>  ( ~ (D=k1_xboole_0)  => r1_yellow_0(A, D)) ) )  &  ( (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ~ ( (r2_hidden(D, C) &  (! [E] :  ( (v1_finset_1(E) & m1_subset_1(E, k1_zfmisc_1(B)))  =>  ~ ( (r1_yellow_0(A, E) & D=k1_yellow_0(A, E)) ) ) ) ) ) ) )  &  (! [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(B)))  =>  ( ~ (D=k1_xboole_0)  => r2_hidden(k1_yellow_0(A, D), C)) ) ) ) )  =>  (r1_yellow_0(A, B) <=> r1_yellow_0(A, C)) ) ) ) ) ) ) ) ).
fof(t54_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) & l1_orders_2(A)) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ( ( (! [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(B)))  =>  ( ~ (D=k1_xboole_0)  => r1_yellow_0(A, D)) ) )  &  ( (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ~ ( (r2_hidden(D, C) &  (! [E] :  ( (v1_finset_1(E) & m1_subset_1(E, k1_zfmisc_1(B)))  =>  ~ ( (r1_yellow_0(A, E) & D=k1_yellow_0(A, E)) ) ) ) ) ) ) )  &  ( (! [D] :  ( (v1_finset_1(D) & m1_subset_1(D, k1_zfmisc_1(B)))  =>  ( ~ (D=k1_xboole_0)  => r2_hidden(k1_yellow_0(A, D), C)) ) )  & r1_yellow_0(A, B)) ) )  => k1_yellow_0(A, C)=k1_yellow_0(A, B)) ) ) ) ) ) ) ).
fof(t54_yellow_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (v1_lattice3(A) <=>  (! [B] :  ( ( ~ (v1_xboole_0(B))  &  (v1_finset_1(B) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  => r1_yellow_0(A, B)) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t9_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (! [C] :  (r1_tarski(B, C) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( (r1_lattice3(A, C, D) => r1_lattice3(A, B, D))  &  (r2_lattice3(A, C, D) => r2_lattice3(A, B, D)) ) ) ) ) ) ) ) ) ).
