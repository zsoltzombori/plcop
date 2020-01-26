fof(t49_relset_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_subset_1(B, k7_relset_1(A, B, D, C))=k6_relset_2(A, B, C, k3_subset_1(k2_zfmisc_1(A, B), D))) ) ) ) ) ) ).
fof(dt_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k3_subset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k6_relset_2, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => m1_subset_1(k6_relset_2(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(involutiveness_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, k3_subset_1(A, B))=B) ) ).
fof(t48_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k3_subset_1(B, k6_relset_2(A, B, C, D))=k7_relset_1(A, B, k3_subset_1(k2_zfmisc_1(A, B), D), C)) ) ) ) ) ) ).
