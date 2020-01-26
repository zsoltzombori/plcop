% Mizar problem: t193_funct_2,funct_2,2622,38 
fof(t193_funct_2, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, B, A) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, A)))) )  =>  (! [E] :  ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, C))))  =>  (! [F] :  (m1_subset_1(F, B) =>  (v1_partfun1(E, A) => k3_funct_2(B, C, k8_funct_2(B, A, C, D, E), F)=k7_partfun1(C, E, k3_funct_2(B, A, D, F))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d4_partfun1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  =>  (v1_partfun1(B, A) <=> k1_relat_1(B)=A) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k2_relset_1(A, B, C), k1_zfmisc_1(B))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => m1_subset_1(k3_funct_2(A, B, C, D), B)) ) ).
fof(dt_k7_partfun1, axiom,  (! [A, B, C] :  ( (v1_relat_1(B) &  (v5_relat_1(B, A) & v1_funct_1(B)) )  => m1_subset_1(k7_partfun1(A, B, C), A)) ) ).
fof(dt_k8_funct_2, axiom,  (! [A, B, C, D, E] :  ( ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C)))) )  =>  (v1_funct_1(k8_funct_2(A, B, C, D, E)) &  (v1_funct_2(k8_funct_2(A, B, C, D, E), A, C) & m1_subset_1(k8_funct_2(A, B, C, D, E), k1_zfmisc_1(k2_zfmisc_1(A, C)))) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(ie1_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) ) )  => k7_partfun1(B, C, D)=k3_funct_2(A, B, C, D)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k2_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => k3_funct_2(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(t186_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( ~ (v1_xboole_0(C))  =>  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, B, C) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, C)))) )  =>  (! [E] :  ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(C, A))))  =>  (! [F] :  (m1_subset_1(F, B) =>  (r1_tarski(k2_relset_1(B, C, D), k1_relset_1(C, A, E)) =>  (B=k1_xboole_0 | k1_funct_1(k8_funct_2(B, C, A, D, E), F)=k7_partfun1(A, E, k1_funct_1(D, F))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
