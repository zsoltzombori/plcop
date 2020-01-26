fof(t18_partfun2, conjecture,  (! [A] :  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( ~ (v1_xboole_0(C))  =>  (! [D] :  (m1_subset_1(D, B) =>  (! [E] :  ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C))))  =>  ( (r2_hidden(D, k1_relset_1(B, E)) & r2_hidden(D, A))  => r2_hidden(k7_partfun1(C, E, D), k2_relset_1(C, k2_partfun1(B, C, E, A)))) ) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d6_partfun1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) &  (v5_relat_1(B, A) & v1_funct_1(B)) )  =>  (! [C] :  (r2_hidden(C, k9_xtuple_0(B)) => k7_partfun1(A, B, C)=k1_funct_1(B, C)) ) ) ) ) ).
fof(dt_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (v1_funct_1(k2_partfun1(A, B, C, D)) & m1_subset_1(k2_partfun1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k5_relat_1(C, D)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(t50_funct_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (r2_hidden(A, k9_xtuple_0(C)) & r2_hidden(A, B))  => r2_hidden(k1_funct_1(C, A), k10_xtuple_0(k5_relat_1(C, B)))) ) ) ) ) ).
