fof(t60_relset_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(B)) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (r1_tarski(C, k6_relset_2(B, A, D, k3_relset_1(A, B, E))) <=> r1_tarski(D, k6_relset_2(A, B, C, E))) ) ) ) ) ) ) ) ) ).
fof(cc2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B)) ) ) ) ).
fof(dt_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k3_relset_1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, A)))) ) ).
fof(dt_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k3_subset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k6_relset_2, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => m1_subset_1(k6_relset_2(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(fc6_relat_1, axiom,  (! [A, B] : v1_relat_1(k2_zfmisc_1(A, B))) ).
fof(involutiveness_k2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k2_relat_1(k2_relat_1(A))=A) ) ).
fof(redefinition_k3_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_r2_relset_1, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (r2_relset_1(A, B, C, D) <=> C=D) ) ) ).
fof(t24_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (r1_xboole_0(B, k3_subset_1(A, C)) <=> r1_tarski(B, C)) ) ) ) ) ) ).
fof(t45_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(B)) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (r1_xboole_0(C, k7_relset_1(B, A, k3_relset_1(A, B, E), D)) <=> r1_xboole_0(D, k7_relset_1(A, B, E, C))) ) ) ) ) ) ) ) ) ).
fof(t48_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_subset_1(B, k6_relset_2(A, B, C, D))=k7_relset_1(A, B, k3_subset_1(k2_zfmisc_1(A, B), D), C)) ) ) ) ) ) ).
fof(t59_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => r2_relset_1(B, A, k3_relset_1(A, B, k3_subset_1(k2_zfmisc_1(A, B), C)), k3_subset_1(k2_zfmisc_1(B, A), k3_relset_1(A, B, C)))) ) ) ) ).
