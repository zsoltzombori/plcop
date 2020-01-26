fof(t53_funct_2, conjecture,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  ( (k2_relset_1(A, B)=A & k2_relset_1(A, C)=A)  => k2_relset_1(A, k4_relset_1(A, A, A, A, C, B))=A) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d18_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v4_relat_1(B, A) <=> r1_tarski(k9_xtuple_0(B), A)) ) ) ) ).
fof(dt_k3_relat_1, axiom,  (! [A, B] : v1_relat_1(k3_relat_1(A, B))) ).
fof(dt_k4_relset_1, axiom,  (! [A, B, C, D, E, F] :  ( (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D))))  => m1_subset_1(k4_relset_1(A, B, C, D, E, F), k1_zfmisc_1(k2_zfmisc_1(A, D)))) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(redefinition_k4_relset_1, axiom,  (! [A, B, C, D, E, F] :  ( (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D))))  => k4_relset_1(A, B, C, D, E, F)=k3_relat_1(E, F)) ) ).
fof(t28_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k9_xtuple_0(A), k10_xtuple_0(B)) => k10_xtuple_0(k3_relat_1(B, A))=k10_xtuple_0(A)) ) ) ) ) ).
