fof(t43_partfun2, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( ~ (v1_xboole_0(C))  =>  (! [D] :  ( ~ (v1_xboole_0(D))  =>  (! [E] :  ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(C, D))))  =>  (v3_funct_1(k2_partfun1(C, D, E, A)) => v3_funct_1(k2_partfun1(C, D, k2_partfun1(C, D, E, B), A))) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(dt_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (v1_funct_1(k2_partfun1(A, B, C, D)) & m1_subset_1(k2_partfun1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(fc16_funcop_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) )  =>  (v1_relat_1(k5_relat_1(A, B)) & v3_funct_1(k5_relat_1(A, B))) ) ) ).
fof(fc8_funct_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k5_relat_1(A, B)) & v1_funct_1(k5_relat_1(A, B))) ) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k5_relat_1(C, D)) ) ).
fof(t71_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => k5_relat_1(k5_relat_1(C, A), B)=k5_relat_1(C, k3_xboole_0(A, B))) ) ) ) ).
