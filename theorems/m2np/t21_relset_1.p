fof(t21_relset_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (r1_tarski(B, C) => r2_relset_1(A, B, k6_relset_1(A, B, C, D), D)) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d19_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v5_relat_1(B, A) <=> r1_tarski(k10_xtuple_0(B), A)) ) ) ) ).
fof(rd9_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k6_relat_1(A, B)=B) ) ).
fof(redefinition_k6_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k6_relset_1(A, B, C, D)=k6_relat_1(C, D)) ) ).
fof(reflexivity_r2_relset_1, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => r2_relset_1(A, B, C, C)) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
