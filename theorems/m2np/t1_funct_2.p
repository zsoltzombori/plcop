fof(t1_funct_2, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_funct_1(A) &  (v1_funct_2(A, k9_xtuple_0(A), k10_xtuple_0(A)) & m1_subset_1(A, k1_zfmisc_1(k2_zfmisc_1(k9_xtuple_0(A), k10_xtuple_0(A))))) ) ) ) ).
fof(cc1_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v1_partfun1(C, A) => v1_funct_2(C, A, B)) ) ) ) ).
fof(dt_k3_partfun1, axiom,  (! [A, B, C] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_funct_1(k3_partfun1(A, B, C)) & m1_subset_1(k3_partfun1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, C)))) ) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t32_partfun1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  => A=k3_partfun1(A, k9_xtuple_0(A), k10_xtuple_0(A))) ) ).
fof(t42_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (r1_tarski(A, k9_xtuple_0(C)) & r1_tarski(k10_xtuple_0(C), B))  => v1_partfun1(k3_partfun1(C, A, B), A)) ) ) ) ) ).
