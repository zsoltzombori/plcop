% Mizar problem: t27_filter_1,filter_1,1130,11 
fof(t27_filter_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, A) =>  (! [D] :  (m1_subset_1(D, B) =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, k2_zfmisc_1(A, A), A) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  =>  (! [F] :  ( (v1_funct_1(F) &  (v1_funct_2(F, k2_zfmisc_1(B, B), B) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) )  =>  ( (r3_binop_1(A, C, E) & r3_binop_1(B, D, F))  <=> r3_binop_1(k2_zfmisc_1(A, B), k1_domain_1(A, B, C, D), k6_filter_1(A, B, E, F))) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d7_binop_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, A) =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  =>  (r3_binop_1(A, B, C) <=>  (r1_binop_1(A, B, C) & r2_binop_1(A, B, C)) ) ) ) ) ) ) ).
fof(dt_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => m1_subset_1(k1_domain_1(A, B, C, D), k2_zfmisc_1(A, B))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_4, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k3_funct_4(A, B)) & v1_funct_1(k3_funct_4(A, B))) ) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  =>  (v1_funct_1(k6_filter_1(A, B, C, D)) &  (v1_funct_2(k6_filter_1(A, B, C, D), k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B)) & m1_subset_1(k6_filter_1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B))))) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fc10_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  ~ (v1_xboole_0(k2_zfmisc_1(A, B))) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
fof(redefinition_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => k1_domain_1(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  => k6_filter_1(A, B, C, D)=k3_funct_4(C, D)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t25_filter_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, A) =>  (! [D] :  (m1_subset_1(D, B) =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, k2_zfmisc_1(A, A), A) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  =>  (! [F] :  ( (v1_funct_1(F) &  (v1_funct_2(F, k2_zfmisc_1(B, B), B) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) )  =>  ( (r1_binop_1(A, C, E) & r1_binop_1(B, D, F))  <=> r1_binop_1(k2_zfmisc_1(A, B), k1_domain_1(A, B, C, D), k6_filter_1(A, B, E, F))) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t26_filter_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, A) =>  (! [D] :  (m1_subset_1(D, B) =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, k2_zfmisc_1(A, A), A) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  =>  (! [F] :  ( (v1_funct_1(F) &  (v1_funct_2(F, k2_zfmisc_1(B, B), B) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) )  =>  ( (r2_binop_1(A, C, E) & r2_binop_1(B, D, F))  <=> r2_binop_1(k2_zfmisc_1(A, B), k1_domain_1(A, B, C, D), k6_filter_1(A, B, E, F))) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
