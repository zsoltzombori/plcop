fof(t58_relset_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(A)) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (! [F] :  (m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(B, C))) => k6_relset_2(B, C, k7_relset_1(A, B, E, D), F)=k6_relset_2(A, C, D, k3_subset_1(k2_zfmisc_1(A, C), k7_relset_2(A, B, C, E, k3_subset_1(k2_zfmisc_1(B, C), F))))) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B)) ) ) ) ).
fof(d4_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, B)=k4_xboole_0(A, B)) ) ) ).
fof(dt_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k7_relset_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k7_relset_2, axiom,  (! [A, B, C, D, E] :  ( (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C))))  => m1_subset_1(k7_relset_2(A, B, C, D, E), k1_zfmisc_1(k2_zfmisc_1(A, C)))) ) ).
fof(fc6_relat_1, axiom,  (! [A, B] : v1_relat_1(k2_zfmisc_1(A, B))) ).
fof(involutiveness_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, k3_subset_1(A, B))=B) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(redefinition_k7_relset_2, axiom,  (! [A, B, C, D, E] :  ( (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C))))  => k7_relset_2(A, B, C, D, E)=k3_relat_1(D, E)) ) ).
fof(t126_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) => k7_relat_1(k3_relat_1(B, C), A)=k7_relat_1(C, k7_relat_1(B, A))) ) ) ) ) ).
fof(t36_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(k4_xboole_0(A, B), A)) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t49_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_subset_1(B, k7_relset_1(A, B, D, C))=k6_relset_2(A, B, C, k3_subset_1(k2_zfmisc_1(A, B), D))) ) ) ) ) ) ).
