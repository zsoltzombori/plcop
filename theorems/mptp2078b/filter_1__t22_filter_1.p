% Mizar problem: t22_filter_1,filter_1,912,47 
fof(t22_filter_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, A) =>  (! [D] :  (m1_subset_1(D, A) =>  (! [E] :  (m1_subset_1(E, B) =>  (! [F] :  (m1_subset_1(F, B) =>  (! [G] :  ( (v1_funct_1(G) &  (v1_funct_2(G, k2_zfmisc_1(A, A), A) & m1_subset_1(G, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  =>  (! [H] :  ( (v1_funct_1(H) &  (v1_funct_2(H, k2_zfmisc_1(B, B), B) & m1_subset_1(H, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) )  => k4_binop_1(k2_zfmisc_1(A, B), k6_filter_1(A, B, G, H), k1_domain_1(A, B, C, E), k1_domain_1(A, B, D, F))=k1_domain_1(A, B, k4_binop_1(A, G, C, D), k4_binop_1(B, H, E, F))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( (B=k1_xboole_0 => A=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, B, C)) )  &  (B=k1_xboole_0 =>  (A=k1_xboole_0 |  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k1_binop_1, axiom, $true).
fof(dt_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => m1_subset_1(k1_domain_1(A, B, C, D), k2_zfmisc_1(A, B))) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_4, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k3_funct_4(A, B)) & v1_funct_1(k3_funct_4(A, B))) ) ) ).
fof(dt_k4_binop_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (m1_subset_1(C, A) & m1_subset_1(D, A)) )  => m1_subset_1(k4_binop_1(A, B, C, D), A)) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  =>  (v1_funct_1(k6_filter_1(A, B, C, D)) &  (v1_funct_2(k6_filter_1(A, B, C, D), k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B)) & m1_subset_1(k6_filter_1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(A, B)), k2_zfmisc_1(A, B))))) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fc10_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  ~ (v1_xboole_0(k2_zfmisc_1(A, B))) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
fof(redefinition_k1_domain_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, A) & m1_subset_1(D, B)) ) )  => k1_domain_1(A, B, C, D)=k4_tarski(C, D)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k4_binop_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(B) &  (v1_funct_2(B, k2_zfmisc_1(A, A), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (m1_subset_1(C, A) & m1_subset_1(D, A)) )  => k4_binop_1(A, B, C, D)=k1_binop_1(B, C, D)) ) ).
fof(redefinition_k6_filter_1, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, k2_zfmisc_1(A, A), A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, A), A)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, k2_zfmisc_1(B, B), B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(B, B), B)))) ) )  => k6_filter_1(A, B, C, D)=k3_funct_4(C, D)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t58_funct_4, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  ( (v1_relat_1(E) & v1_funct_1(E))  =>  (! [F] :  ( (v1_relat_1(F) & v1_funct_1(F))  =>  (r2_hidden(k4_tarski(k4_tarski(A, B), k4_tarski(C, D)), k1_relat_1(k3_funct_4(E, F))) => k1_binop_1(k3_funct_4(E, F), k4_tarski(A, B), k4_tarski(C, D))=k4_tarski(k1_binop_1(E, A, C), k1_binop_1(F, B, D))) ) ) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
