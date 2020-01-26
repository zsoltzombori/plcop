% Mizar problem: t11_filter_1,filter_1,462,65 
fof(t11_filter_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( (v1_partfun1(B, A) &  (v3_relat_2(B) &  (v8_relat_2(B) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  =>  (! [C] :  (m2_filter_1(C, A, B) =>  (! [D] :  (m2_filter_1(D, A, B) =>  (r6_binop_1(A, C, D) => r6_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, C), k3_filter_1(A, B, D))) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc1_eqrel_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_eqrel_1(B, A) =>  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(d11_binop_1, axiom,  (! [A] :  (! [B] :  ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  =>  (r6_binop_1(A, B, C) <=>  (r4_binop_1(A, B, C) & r5_binop_1(A, B, C)) ) ) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_filter_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_partfun1(B, A) &  (v3_relat_2(B) &  (v8_relat_2(B) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) ) )  =>  (v1_funct_1(k3_filter_1(A, B, C)) &  (v1_funct_2(k3_filter_1(A, B, C), k2_zfmisc_1(k8_eqrel_1(A, B), k8_eqrel_1(A, B)), k8_eqrel_1(A, B)) & m1_subset_1(k3_filter_1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k8_eqrel_1(A, B), k8_eqrel_1(A, B)), k8_eqrel_1(A, B))))) ) ) ) ).
fof(dt_k7_eqrel_1, axiom,  (! [A, B] :  ( (v3_relat_2(B) &  (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  => m1_subset_1(k7_eqrel_1(A, B), k1_zfmisc_1(k1_zfmisc_1(A)))) ) ).
fof(dt_k8_eqrel_1, axiom,  (! [A, B] :  ( (v3_relat_2(B) &  (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  => m1_eqrel_1(k8_eqrel_1(A, B), A)) ) ).
fof(dt_m1_eqrel_1, axiom,  (! [A] :  (! [B] :  (m1_eqrel_1(B, A) => m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A)))) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m2_filter_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & v1_relat_1(B))  =>  (! [C] :  (m2_filter_1(C, A, B) =>  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) ) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_eqrel_1, axiom,  (! [A] :  (? [B] : m1_eqrel_1(B, A)) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m2_filter_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & v1_relat_1(B))  =>  (? [C] : m2_filter_1(C, A, B)) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
fof(redefinition_k8_eqrel_1, axiom,  (! [A, B] :  ( (v3_relat_2(B) &  (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  => k8_eqrel_1(A, B)=k7_eqrel_1(A, B)) ) ).
fof(t10_filter_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( (v1_partfun1(B, A) &  (v3_relat_2(B) &  (v8_relat_2(B) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  =>  (! [C] :  (m2_filter_1(C, A, B) =>  (! [D] :  (m2_filter_1(D, A, B) =>  (r5_binop_1(A, C, D) => r5_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, C), k3_filter_1(A, B, D))) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t9_filter_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( (v1_partfun1(B, A) &  (v3_relat_2(B) &  (v8_relat_2(B) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  =>  (! [C] :  (m2_filter_1(C, A, B) =>  (! [D] :  (m2_filter_1(D, A, B) =>  (r4_binop_1(A, C, D) => r4_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, C), k3_filter_1(A, B, D))) ) ) ) ) ) ) ) ) ).
