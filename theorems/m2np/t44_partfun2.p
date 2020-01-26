fof(t44_partfun2, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, B) => v3_funct_1(k2_partfun1(A, B, k4_partfun2(A, B, C, D), C))) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(dt_k4_partfun2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, B)) ) )  =>  (v1_funct_1(k4_partfun2(A, B, C, D)) & m1_subset_1(k4_partfun2(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(fc15_funcop_1, axiom,  (! [A, B] : v3_funct_1(k2_funcop_1(A, B))) ).
fof(fc16_funcop_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) )  =>  (v1_relat_1(k5_relat_1(A, B)) & v3_funct_1(k5_relat_1(A, B))) ) ) ).
fof(fc1_funcop_1, axiom,  (! [A, B] :  (v1_relat_1(k2_funcop_1(A, B)) & v1_funct_1(k2_funcop_1(A, B))) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k5_relat_1(C, D)) ) ).
fof(redefinition_k4_partfun2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, B)) ) )  => k4_partfun2(A, B, C, D)=k2_funcop_1(C, D)) ) ).
