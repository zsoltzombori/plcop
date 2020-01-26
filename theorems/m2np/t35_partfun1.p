fof(t35_partfun1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_relat_1(D) & v1_funct_1(D))  =>  (! [E] :  ( (v1_relat_1(E) & v1_funct_1(E))  => r1_relset_1(C, B, k1_partfun1(C, A, A, B, k3_partfun1(D, C, A), k3_partfun1(E, A, B)), k3_partfun1(k3_relat_1(D, E), C, B))) ) ) ) ) ) ) ).
fof(d1_partfun1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] : k3_partfun1(A, B, C)=k5_relat_1(k6_relat_1(C, A), B)) ) ) ) ).
fof(dt_k1_partfun1, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) )  =>  (v1_funct_1(k1_partfun1(A, B, C, D, E, F)) & m1_subset_1(k1_partfun1(A, B, C, D, E, F), k1_zfmisc_1(k2_zfmisc_1(A, D)))) ) ) ).
fof(dt_k3_partfun1, axiom,  (! [A, B, C] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_funct_1(k3_partfun1(A, B, C)) & m1_subset_1(k3_partfun1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, C)))) ) ) ).
fof(dt_k3_relat_1, axiom,  (! [A, B] : v1_relat_1(k3_relat_1(A, B))) ).
fof(fc2_funct_1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k3_relat_1(A, B)) & v1_funct_1(k3_relat_1(A, B))) ) ) ).
fof(redefinition_k1_partfun1, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) )  => k1_partfun1(A, B, C, D, E, F)=k3_relat_1(E, F)) ) ).
fof(redefinition_r1_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (r1_relset_1(A, B, C, D) <=> r1_tarski(C, D)) ) ) ).
fof(t1_grfunc_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (r1_tarski(B, A) =>  (v1_relat_1(B) & v1_funct_1(B)) ) ) ) ) ).
fof(t22_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  => r1_relset_1(A, B, k3_partfun1(C, A, B), C)) ) ) ) ).
fof(t27_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (! [D] :  ( (v1_relat_1(D) & v1_funct_1(D))  =>  (r1_tarski(C, D) => r1_relset_1(A, B, k3_partfun1(C, A, B), k3_partfun1(D, A, B))) ) ) ) ) ) ) ).
fof(t31_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  (! [D] :  (v1_relat_1(D) =>  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_tarski(k3_relat_1(A, C), k3_relat_1(B, D))) ) ) ) ) ) ) ) ) ).
fof(t33_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k3_partfun1(C, A, B)=C) ) ) ) ).
