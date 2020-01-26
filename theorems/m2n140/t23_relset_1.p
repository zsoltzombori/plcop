fof(t23_relset_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) =>  (k7_relset_1(B, A, C, k8_relset_1(B, A, C, A))=k2_relset_1(A, C) & k8_relset_1(B, A, C, k7_relset_1(B, A, C, B))=k1_relset_1(B, C)) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(redefinition_k8_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k8_relset_1(A, B, C, D)=k8_relat_1(C, D)) ) ).
fof(t113_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k7_relat_1(A, k9_xtuple_0(A))=k10_xtuple_0(A)) ) ).
fof(t134_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k8_relat_1(A, k10_xtuple_0(A))=k9_xtuple_0(A)) ) ).
fof(t22_relset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (k7_relset_1(A, B, C, A)=k2_relset_1(B, C) & k8_relset_1(A, B, C, B)=k1_relset_1(A, C)) ) ) ) ) ).
