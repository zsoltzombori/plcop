fof(t10_partfun1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (v1_funct_1(k5_relset_1(A, B, D, C)) & m1_subset_1(k5_relset_1(A, B, D, C), k1_zfmisc_1(k2_zfmisc_1(C, B)))) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(fc8_funct_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k5_relat_1(A, B)) & v1_funct_1(k5_relat_1(A, B))) ) ) ).
fof(redefinition_k5_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k5_relset_1(A, B, C, D)=k5_relat_1(C, D)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(t18_relset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, C))) => m1_subset_1(k5_relset_1(A, C, D, B), k1_zfmisc_1(k2_zfmisc_1(B, C)))) ) ) ) ) ).
