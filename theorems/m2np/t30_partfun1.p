fof(t30_partfun1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  ( (v1_relat_1(E) & v1_funct_1(E))  =>  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_relset_1(A, C, k3_partfun1(E, A, C), k3_partfun1(E, B, D))) ) ) ) ) ) ) ).
fof(dt_k3_partfun1, axiom,  (! [A, B, C] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_funct_1(k3_partfun1(A, B, C)) & m1_subset_1(k3_partfun1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, C)))) ) ) ).
fof(redefinition_r1_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (r1_relset_1(A, B, C, D) <=> r1_tarski(C, D)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t28_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_relat_1(D) & v1_funct_1(D))  =>  (r1_tarski(A, B) => r1_relset_1(A, C, k3_partfun1(D, A, C), k3_partfun1(D, B, C))) ) ) ) ) ) ).
fof(t29_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_relat_1(D) & v1_funct_1(D))  =>  (r1_tarski(A, B) => r1_relset_1(C, A, k3_partfun1(D, C, A), k3_partfun1(D, C, B))) ) ) ) ) ) ).
