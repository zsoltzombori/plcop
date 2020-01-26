fof(t56_relset_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) => k7_relset_1(A, B, k3_relset_1(B, A, C), A)=k7_relset_1(B, B, k7_relset_2(B, A, B, C, k3_relset_1(B, A, C)), B)) ) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(dt_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k3_relset_1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, A)))) ) ).
fof(dt_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k7_relset_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k7_relset_2, axiom,  (! [A, B, C, D, E] :  ( (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C))))  => m1_subset_1(k7_relset_2(A, B, C, D, E), k1_zfmisc_1(k2_zfmisc_1(A, C)))) ) ).
fof(t28_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => k3_xboole_0(A, B)=A) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t47_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (! [D] : k7_relset_1(B, A, k3_relset_1(A, B, C), D)=k7_relset_1(B, A, k3_relset_1(A, B, C), k3_xboole_0(D, k10_xtuple_0(C)))) ) ) ) ) ).
fof(t50_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) =>  (k9_xtuple_0(C)=k7_relset_1(A, B, k3_relset_1(B, A, C), A) & k10_xtuple_0(C)=k7_relset_1(B, A, C, B)) ) ) ) ) ).
fof(t52_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C))) =>  (k10_xtuple_0(k7_relset_2(A, B, C, D, E))=k7_relset_1(B, C, E, k10_xtuple_0(D)) & r1_tarski(k10_xtuple_0(k7_relset_2(A, B, C, D, E)), k10_xtuple_0(E))) ) ) ) ) ) ) ) ).
