% Mizar problem: t163_orders_2,orders_2,2239,15 
fof(t163_orders_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  ~ ( ( (! [B] :  ( (v6_orders_2(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, B) => r3_orders_2(A, C, D)) ) ) ) ) ) )  &  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) & r2_orders_2(A, C, B)) ) ) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d10_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r2_orders_2(A, B, C) <=>  (r1_orders_2(A, B, C) &  ~ (B=C) ) ) ) ) ) ) ) ) ).
fof(d11_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v6_orders_2(B, A) <=> r7_relat_2(u1_orders_2(A), B)) ) ) ) ) ).
fof(d4_partfun1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  =>  (v1_partfun1(B, A) <=> k1_relat_1(B)=A) ) ) ) ).
fof(d7_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (B=k4_relat_1(A) <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), B) <=> r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ) ) ).
fof(d7_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r7_relat_2(A, B) <=>  (! [C] :  (! [D] :  ~ ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  ( ~ (r2_hidden(k4_tarski(C, D), A))  &  ~ (r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ) ) ) ) ) ).
fof(d9_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r1_orders_2(A, B, C) <=> r2_hidden(k4_tarski(B, C), u1_orders_2(A))) ) ) ) ) ) ) ).
fof(dt_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (v1_orders_2(g1_orders_2(A, B)) & l1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(dt_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => m1_subset_1(k1_domain_1(A, B, C, D), k2_zfmisc_1(A, B))) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k3_relset_1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, A)))) ) ).
fof(dt_k4_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => v1_relat_1(k4_relat_1(A))) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(involutiveness_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_relset_1(A, B, k3_relset_1(A, B, C))=C) ) ).
fof(involutiveness_k4_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k4_relat_1(k4_relat_1(A))=A) ) ).
fof(irreflexivity_r2_orders_2, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  ~ (r2_orders_2(A, B, B)) ) ) ).
fof(redefinition_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => k1_domain_1(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_relset_1(A, B, C)=k4_relat_1(C)) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(t162_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  ~ ( ( (! [B] :  ( (v6_orders_2(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, B) => r3_orders_2(A, D, C)) ) ) ) ) ) )  &  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) & r2_orders_2(A, B, C)) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t27_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (v1_relat_2(A) => v1_relat_2(k4_relat_1(A))) ) ) ).
fof(t29_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (v1_relat_2(A) =>  (k1_relat_1(A)=k1_relat_1(k4_relat_1(A)) & k2_relat_1(A)=k2_relat_1(k4_relat_1(A))) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t38_orders_2, axiom,  (! [A] :  ( (v3_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  ( ~ ( ( (? [D] :  ( (v6_orders_2(D, A) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))))  &  (r2_hidden(B, D) & r2_hidden(C, D)) ) )  &  ( ~ (r1_orders_2(A, B, C))  &  ~ (r1_orders_2(A, C, B)) ) ) )  &  ~ ( ( (r1_orders_2(A, B, C) | r1_orders_2(A, C, B))  &  (! [D] :  ( (v6_orders_2(D, A) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))))  =>  ~ ( (r2_hidden(B, D) & r2_hidden(C, D)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t40_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (v4_relat_2(A) => v4_relat_2(k4_relat_1(A))) ) ) ).
fof(t42_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (v8_relat_2(A) => v8_relat_2(k4_relat_1(A))) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v3_orders_2(A) => v2_orders_2(A)) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(fc1_orders_2, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))))  =>  ( ~ (v2_struct_0(g1_orders_2(A, B)))  & v1_orders_2(g1_orders_2(A, B))) ) ) ).
fof(fc2_orders_2, axiom,  (! [A] :  ( (v2_orders_2(A) & l1_orders_2(A))  => v1_partfun1(u1_orders_2(A), u1_struct_0(A))) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc3_orders_2, axiom,  (! [A] :  ( (v3_orders_2(A) & l1_orders_2(A))  => v1_relat_2(u1_orders_2(A))) ) ).
fof(fc4_orders_2, axiom,  (! [A] :  ( (v2_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) )  => v4_relat_2(u1_orders_2(A))) ) ).
fof(fc5_orders_2, axiom,  (! [A] :  ( (v2_orders_2(A) &  (v4_orders_2(A) & l1_orders_2(A)) )  => v8_relat_2(u1_orders_2(A))) ) ).
fof(fc6_orders_2, axiom,  (! [A, B] :  ( (v1_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) )  =>  (v1_orders_2(g1_orders_2(A, B)) & v3_orders_2(g1_orders_2(A, B))) ) ) ).
fof(fc7_orders_2, axiom,  (! [A, B] :  ( (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) )  =>  (v1_orders_2(g1_orders_2(A, B)) & v4_orders_2(g1_orders_2(A, B))) ) ) ).
fof(fc8_orders_2, axiom,  (! [A, B] :  ( (v4_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) )  =>  (v1_orders_2(g1_orders_2(A, B)) & v5_orders_2(g1_orders_2(A, B))) ) ) ).
fof(rc2_orders_2, axiom,  (? [A] :  (l1_orders_2(A) &  ( ~ (v2_struct_0(A))  &  (v1_orders_2(A) &  (v2_orders_2(A) &  (v3_orders_2(A) &  (v4_orders_2(A) & v5_orders_2(A)) ) ) ) ) ) ) ).
