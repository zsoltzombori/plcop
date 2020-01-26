% Mizar problem: t10_filter_1,filter_1,438,77 
fof(t10_filter_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( (v1_partfun1(B, A) &  (v3_relat_2(B) &  (v8_relat_2(B) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  =>  (! [C] :  (m2_filter_1(C, A, B) =>  (! [D] :  (m2_filter_1(D, A, B) =>  (r5_binop_1(A, C, D) => r5_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, C), k3_filter_1(A, B, D))) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc1_eqrel_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_eqrel_1(B, A) =>  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(d19_binop_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  =>  (r5_binop_1(A, B, C) <=>  (! [D] :  (m1_subset_1(D, A) =>  (! [E] :  (m1_subset_1(E, A) =>  (! [F] :  (m1_subset_1(F, A) => k2_binop_1(A, A, A, B, k2_binop_1(A, A, A, C, D, E), F)=k2_binop_1(A, A, A, C, k2_binop_1(A, A, A, B, D, F), k2_binop_1(A, A, A, B, E, F))) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k11_relat_1, axiom, $true).
fof(dt_k1_binop_1, axiom, $true).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_binop_1, axiom,  (! [A, B, C, D, E, F] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(A, B), C) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), C)))) )  &  (m1_subset_1(E, A) & m1_subset_1(F, B)) ) ) )  => m1_subset_1(k2_binop_1(A, B, C, D, E, F), C)) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_filter_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_partfun1(B, A) &  (v3_relat_2(B) &  (v8_relat_2(B) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  &  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) ) )  =>  (v1_funct_1(k3_filter_1(A, B, C)) &  (v1_funct_2(k3_filter_1(A, B, C), k2_zfmisc_1(k8_eqrel_1(A, B), k8_eqrel_1(A, B)), k8_eqrel_1(A, B)) & m1_subset_1(k3_filter_1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k8_eqrel_1(A, B), k8_eqrel_1(A, B)), k8_eqrel_1(A, B))))) ) ) ) ).
fof(dt_k4_binop_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (m1_subset_1(C, A) & m1_subset_1(D, A)) )  => m1_subset_1(k4_binop_1(A, B, C, D), A)) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k6_eqrel_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k6_eqrel_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k7_eqrel_1, axiom,  (! [A, B] :  ( (v3_relat_2(B) &  (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  => m1_subset_1(k7_eqrel_1(A, B), k1_zfmisc_1(k1_zfmisc_1(A)))) ) ).
fof(dt_k8_eqrel_1, axiom,  (! [A, B] :  ( (v3_relat_2(B) &  (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  => m1_eqrel_1(k8_eqrel_1(A, B), A)) ) ).
fof(dt_k9_eqrel_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( (v3_relat_2(B) &  (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  & m1_subset_1(C, A)) )  => m2_subset_1(k9_eqrel_1(A, B, C), k1_zfmisc_1(A), k8_eqrel_1(A, B))) ) ).
fof(dt_m1_eqrel_1, axiom,  (! [A] :  (! [B] :  (m1_eqrel_1(B, A) => m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A)))) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m2_filter_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & v1_relat_1(B))  =>  (! [C] :  (m2_filter_1(C, A, B) =>  (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) ) ) ) ) ) ).
fof(dt_m2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(A))) )  =>  (! [C] :  (m2_subset_1(C, A, B) => m1_subset_1(C, A)) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_eqrel_1, axiom,  (! [A] :  (? [B] : m1_eqrel_1(B, A)) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m2_filter_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & v1_relat_1(B))  =>  (? [C] : m2_filter_1(C, A, B)) ) ) ).
fof(existence_m2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(A))) )  =>  (? [C] : m2_subset_1(C, A, B)) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
fof(redefinition_k2_binop_1, axiom,  (! [A, B, C, D, E, F] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(A, B), C) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), C)))) )  &  (m1_subset_1(E, A) & m1_subset_1(F, B)) ) ) )  => k2_binop_1(A, B, C, D, E, F)=k1_binop_1(D, E, F)) ) ).
fof(redefinition_k4_binop_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (m1_subset_1(C, A) & m1_subset_1(D, A)) )  => k4_binop_1(A, B, C, D)=k1_binop_1(B, C, D)) ) ).
fof(redefinition_k6_eqrel_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k6_eqrel_1(A, B, C, D)=k11_relat_1(C, D)) ) ).
fof(redefinition_k8_eqrel_1, axiom,  (! [A, B] :  ( (v3_relat_2(B) &  (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  => k8_eqrel_1(A, B)=k7_eqrel_1(A, B)) ) ).
fof(redefinition_k9_eqrel_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( (v3_relat_2(B) &  (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  & m1_subset_1(C, A)) )  => k9_eqrel_1(A, B, C)=k11_relat_1(B, C)) ) ).
fof(redefinition_m2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(A))) )  =>  (! [C] :  (m2_subset_1(C, A, B) <=> m1_subset_1(C, B)) ) ) ) ).
fof(s3_filter_1__e3_18__filter_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_partfun1(B, A) &  (v3_relat_2(B) &  (v8_relat_2(B) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  &  (m2_filter_1(C, A, B) & m2_filter_1(D, A, B)) ) )  =>  ( (! [E] :  (m1_subset_1(E, A) =>  (! [F] :  (m1_subset_1(F, A) =>  (! [G] :  (m1_subset_1(G, A) => k4_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, C), k4_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, D), k9_eqrel_1(A, B, E), k9_eqrel_1(A, B, F)), k9_eqrel_1(A, B, G))=k4_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, D), k4_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, C), k9_eqrel_1(A, B, E), k9_eqrel_1(A, B, G)), k4_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, C), k9_eqrel_1(A, B, F), k9_eqrel_1(A, B, G)))) ) ) ) ) )  =>  (! [E] :  (m2_subset_1(E, k1_zfmisc_1(A), k8_eqrel_1(A, B)) =>  (! [F] :  (m2_subset_1(F, k1_zfmisc_1(A), k8_eqrel_1(A, B)) =>  (! [G] :  (m2_subset_1(G, k1_zfmisc_1(A), k8_eqrel_1(A, B)) => k4_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, C), k4_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, D), E, F), G)=k4_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, D), k4_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, C), E, G), k4_binop_1(k8_eqrel_1(A, B), k3_filter_1(A, B, C), F, G))) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_filter_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( (v1_partfun1(B, A) &  (v3_relat_2(B) &  (v8_relat_2(B) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  =>  (! [C] :  (m1_subset_1(C, A) =>  (! [D] :  (m1_subset_1(D, A) =>  (! [E] :  (m2_filter_1(E, A, B) => k1_binop_1(k3_filter_1(A, B, E), k6_eqrel_1(A, A, B, C), k6_eqrel_1(A, A, B, D))=k6_eqrel_1(A, A, B, k4_binop_1(A, E, C, D))) ) ) ) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
