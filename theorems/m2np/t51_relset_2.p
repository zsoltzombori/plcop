fof(t51_relset_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C))) =>  (k9_xtuple_0(k7_relset_2(A, B, C, D, E))=k7_relset_1(B, A, k3_relset_1(A, B, D), k9_xtuple_0(E)) & r1_tarski(k9_xtuple_0(k7_relset_2(A, B, C, D, E)), k9_xtuple_0(D))) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(dt_k2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => v1_relat_1(k2_relat_1(A))) ) ).
fof(dt_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k3_relset_1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, A)))) ) ).
fof(dt_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k7_relset_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k7_relset_2, axiom,  (! [A, B, C, D, E] :  ( (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C))))  => m1_subset_1(k7_relset_2(A, B, C, D, E), k1_zfmisc_1(k2_zfmisc_1(A, C)))) ) ).
fof(redefinition_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(redefinition_k7_relset_2, axiom,  (! [A, B, C, D, E] :  ( (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C))))  => k7_relset_2(A, B, C, D, E)=k3_relat_1(D, E)) ) ).
fof(t123_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(A, B) => r1_tarski(k7_relat_1(C, A), k7_relat_1(C, B))) ) ) ) ) ).
fof(t126_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) => k7_relat_1(k3_relat_1(B, C), A)=k7_relat_1(C, k7_relat_1(B, A))) ) ) ) ) ).
fof(t35_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) => k2_relat_1(k3_relat_1(A, B))=k3_relat_1(k2_relat_1(B), k2_relat_1(A))) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t50_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) =>  (k9_xtuple_0(C)=k7_relset_1(A, B, k3_relset_1(B, A, C), A) & k10_xtuple_0(C)=k7_relset_1(B, A, C, B)) ) ) ) ) ).
