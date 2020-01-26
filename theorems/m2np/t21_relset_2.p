fof(t21_relset_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v1_funct_1(k3_relset_2(A, C)) &  (v1_funct_2(k3_relset_2(A, C), k9_setfam_1(A), k9_setfam_1(k2_relset_1(B, C))) & m1_subset_1(k3_relset_2(A, C), k1_zfmisc_1(k2_zfmisc_1(k9_setfam_1(A), k9_setfam_1(k2_relset_1(B, C)))))) ) ) ) ) ) ).
fof(cc2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B)) ) ) ) ).
fof(d1_relset_2, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (C=k3_relset_2(A, B) <=>  (k9_xtuple_0(C)=k9_setfam_1(A) &  (! [D] :  (r1_tarski(D, A) => k1_funct_1(C, D)=k7_relat_1(B, D)) ) ) ) ) ) ) ) ) ).
fof(dt_k3_relset_2, axiom,  (! [A, B] :  (v1_relat_1(B) =>  (v1_relat_1(k3_relset_2(A, B)) & v1_funct_1(k3_relset_2(A, B))) ) ) ).
fof(fc6_relat_1, axiom,  (! [A, B] : v1_relat_1(k2_zfmisc_1(A, B))) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(t20_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => r1_tarski(k10_xtuple_0(k3_relset_2(A, C)), k9_setfam_1(k2_relset_1(B, C)))) ) ) ) ).
fof(t2_funct_2, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_tarski(k10_xtuple_0(B), A) =>  (v1_funct_1(B) &  (v1_funct_2(B, k9_xtuple_0(B), A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(k9_xtuple_0(B), A)))) ) ) ) ) ) ).
