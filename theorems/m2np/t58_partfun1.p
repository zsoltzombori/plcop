fof(t58_partfun1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (! [D] :  ( (v1_funct_1(D) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (! [E] :  ( (v1_relat_1(E) & v1_funct_1(E))  =>  ( (r1_partfun1(C, E) & r1_relset_1(A, B, D, C))  => r1_partfun1(D, E)) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(redefinition_r1_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (r1_relset_1(A, B, C, D) <=> r1_tarski(C, D)) ) ) ).
fof(symmetry_r1_partfun1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (r1_partfun1(A, B) => r1_partfun1(B, A)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t52_partfun1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_partfun1(A, B) <=>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  &  (r1_tarski(A, C) & r1_tarski(B, C)) ) ) ) ) ) ) ) ).
