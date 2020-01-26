fof(t60_funct_3, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, A, C) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, C)))) )  => r1_tarski(k10_xtuple_0(k13_funct_3(D, E)), k2_zfmisc_1(B, C))) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d19_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v5_relat_1(B, A) <=> r1_tarski(k10_xtuple_0(B), A)) ) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t51_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  => r1_tarski(k10_xtuple_0(k13_funct_3(A, B)), k2_zfmisc_1(k10_xtuple_0(A), k10_xtuple_0(B)))) ) ) ) ).
fof(t96_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_tarski(k2_zfmisc_1(A, C), k2_zfmisc_1(B, D))) ) ) ) ) ).
