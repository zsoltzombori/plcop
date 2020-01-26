fof(t19_relset_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, C))) =>  (r2_hidden(A, k9_xtuple_0(k3_relset_2(B, D))) => k1_funct_1(k3_relset_2(B, D), A)=k7_relset_1(B, C, D, A)) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(d1_relset_2, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (C=k3_relset_2(A, B) <=>  (k9_xtuple_0(C)=k9_setfam_1(A) &  (! [D] :  (r1_tarski(D, A) => k1_funct_1(C, D)=k7_relat_1(B, D)) ) ) ) ) ) ) ) ) ).
fof(dt_k3_relset_2, axiom,  (! [A, B] :  (v1_relat_1(B) =>  (v1_relat_1(k3_relset_2(A, B)) & v1_funct_1(k3_relset_2(A, B))) ) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
