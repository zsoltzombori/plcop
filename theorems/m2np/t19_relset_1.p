fof(t19_relset_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, A))) =>  (r1_tarski(B, C) => r2_relset_1(B, A, k5_relset_1(B, A, D, C), D)) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(redefinition_k5_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k5_relset_1(A, B, C, D)=k5_relat_1(C, D)) ) ).
fof(reflexivity_r2_relset_1, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => r2_relset_1(A, B, C, C)) ) ).
fof(t158_relat_1, axiom,  (! [A] :  (! [B] : r1_tarski(k9_xtuple_0(k2_zfmisc_1(A, B)), A)) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t68_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k9_xtuple_0(B), A) => k5_relat_1(B, A)=B) ) ) ) ).
fof(t8_xtuple_0, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => r1_tarski(k9_xtuple_0(A), k9_xtuple_0(B))) ) ) ).
