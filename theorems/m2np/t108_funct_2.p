fof(t108_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( ~ (v1_xboole_0(C))  =>  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, B, C) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, C)))) )  =>  (! [E] :  ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(C, A))))  =>  (! [F] :  (m1_subset_1(F, B) =>  (r1_tarski(k2_relset_1(C, D), k1_relset_1(C, E)) =>  (B=k1_xboole_0 | k1_funct_1(k8_funct_2(B, A, C, D, E), F)=k1_funct_1(E, k1_funct_1(D, F))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d11_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( ~ (v1_xboole_0(C))  =>  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, C) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, C)))) )  =>  (! [E] :  ( (v1_relat_1(E) &  (v5_relat_1(E, B) & v1_funct_1(E)) )  =>  (r1_tarski(k2_relset_1(C, D), k9_xtuple_0(E)) => k8_funct_2(A, B, C, D, E)=k3_relat_1(D, E)) ) ) ) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(t15_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (! [E] :  ( (v1_relat_1(E) & v1_funct_1(E))  =>  (r2_hidden(C, A) =>  (B=k1_xboole_0 | k1_funct_1(k3_relat_1(D, E), C)=k1_funct_1(E, k1_funct_1(D, C))) ) ) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
