fof(t15_relset_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (r1_tarski(k4_relat_1(C), D) =>  (r1_tarski(C, k1_relset_1(A, D)) & r1_tarski(C, k2_relset_1(B, D))) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(rd1_relat_1, axiom,  (! [A] : k9_xtuple_0(k4_relat_1(A))=A) ).
fof(rd2_relat_1, axiom,  (! [A] : k10_xtuple_0(k4_relat_1(A))=A) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(t8_xtuple_0, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => r1_tarski(k9_xtuple_0(A), k9_xtuple_0(B))) ) ) ).
fof(t9_xtuple_0, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => r1_tarski(k10_xtuple_0(A), k10_xtuple_0(B))) ) ) ).
