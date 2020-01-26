fof(t32_relset_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(A)) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))) => r1_tarski(k4_subset_1(B, k6_relset_2(A, B, C, E), k6_relset_2(A, B, D, E)), k6_relset_2(A, B, k9_subset_1(A, C, D), E))) ) ) ) ) ) ) ) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(dt_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => m1_subset_1(k4_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k6_relset_2, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => m1_subset_1(k6_relset_2(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(redefinition_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k2_xboole_0(B, C)) ) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(t2_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  ( (! [D] :  (m1_subset_1(D, A) =>  (r2_hidden(D, B) => r2_hidden(D, C)) ) )  => r1_tarski(B, C)) ) ) ) ) ) ).
fof(t31_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(A)) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (r1_tarski(C, D) => r1_tarski(k6_relset_2(A, B, D, E), k6_relset_2(A, B, C, E))) ) ) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
