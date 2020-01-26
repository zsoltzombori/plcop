fof(t33_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (r1_tarski(A, C) => r2_relset_1(A, B, k2_partfun1(A, B, D, C), D)) ) ) ) ) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k5_relat_1(C, D)) ) ).
fof(redefinition_k5_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k5_relset_1(A, B, C, D)=k5_relat_1(C, D)) ) ).
fof(t19_relset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, A))) =>  (r1_tarski(B, C) => r2_relset_1(B, A, k5_relset_1(B, A, D, C), D)) ) ) ) ) ) ).
