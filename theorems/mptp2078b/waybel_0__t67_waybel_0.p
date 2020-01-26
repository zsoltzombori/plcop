% Mizar problem: t67_waybel_0,waybel_0,3034,54 
fof(t67_waybel_0, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (v23_waybel_0(C, A, B) =>  ( (v1_funct_1(k2_funct_1(C)) &  (v1_funct_2(k2_funct_1(C), u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(k2_funct_1(C), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) )  & k2_relat_1(k2_funct_1(C))=u1_struct_0(A)) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc1_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) =>  (v1_waybel_0(B, A) & v2_waybel_0(B, A)) ) ) ) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( (B=k1_xboole_0 => A=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, B, C)) )  &  (B=k1_xboole_0 =>  (A=k1_xboole_0 |  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k2_funct_1(A)) & v1_funct_1(k2_funct_1(A))) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k2_relset_1(A, B, C), k1_zfmisc_1(B))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => m1_subset_1(k3_funct_2(A, B, C, D), B)) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(rc1_waybel_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  (v1_waybel_0(B, A) & v2_waybel_0(B, A)) ) ) ) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k2_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => k3_funct_2(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_funct_2, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_funct_1(A) &  (v1_funct_2(A, k1_relat_1(A), k2_relat_1(A)) & m1_subset_1(A, k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(A), k2_relat_1(A))))) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t55_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (k2_relat_1(A)=k1_relat_1(k2_funct_1(A)) & k1_relat_1(A)=k2_relat_1(k2_funct_1(A))) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t66_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_orders_2(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_orders_2(B))  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (v23_waybel_0(C, A, B) <=>  (v2_funct_1(C) &  (k2_relset_1(u1_struct_0(A), u1_struct_0(B), C)=u1_struct_0(B) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  (r1_orders_2(A, D, E) <=> r1_orders_2(B, k3_funct_2(u1_struct_0(A), u1_struct_0(B), C, D), k3_funct_2(u1_struct_0(A), u1_struct_0(B), C, E))) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
