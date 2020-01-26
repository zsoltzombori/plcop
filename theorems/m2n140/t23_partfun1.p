fof(t23_partfun1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r1_tarski(k1_relset_1(A, k3_partfun1(C, A, B)), k9_xtuple_0(C)) & r1_tarski(k10_xtuple_0(k3_partfun1(C, A, B)), k10_xtuple_0(C))) ) ) ) ) ).
fof(cc2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B)) ) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(dt_k3_partfun1, axiom,  (! [A, B, C] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_funct_1(k3_partfun1(A, B, C)) & m1_subset_1(k3_partfun1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, C)))) ) ) ).
fof(fc6_relat_1, axiom,  (! [A, B] : v1_relat_1(k2_zfmisc_1(A, B))) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_r1_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (r1_relset_1(A, B, C, D) <=> r1_tarski(C, D)) ) ) ).
fof(t11_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, B) =>  (r1_tarski(k9_xtuple_0(A), k9_xtuple_0(B)) & r1_tarski(k10_xtuple_0(A), k10_xtuple_0(B))) ) ) ) ) ) ).
fof(t22_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  => r1_relset_1(A, B, k3_partfun1(C, A, B), C)) ) ) ) ).
