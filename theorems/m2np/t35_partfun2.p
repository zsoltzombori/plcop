fof(t35_partfun2, conjecture,  (! [A] :  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( ~ (v1_xboole_0(C))  =>  (! [D] :  ( (v1_funct_1(D) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(C, B))))  =>  (v3_funct_1(k2_partfun1(C, B, D, A)) <=>  (? [E] :  (m1_subset_1(E, B) &  (! [F] :  (m1_subset_1(F, C) =>  (r2_hidden(F, k9_subset_1(C, A, k1_relset_1(C, D))) => k7_partfun1(B, D, F)=E) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d1_partfun2, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (v3_funct_1(C) <=>  (? [D] :  (m1_subset_1(D, B) &  (! [E] :  (m1_subset_1(E, A) =>  (r2_hidden(E, k1_relset_1(A, C)) => k1_funct_1(C, E)=D) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d6_partfun1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) &  (v5_relat_1(B, A) & v1_funct_1(B)) )  =>  (! [C] :  (r2_hidden(C, k9_xtuple_0(B)) => k7_partfun1(A, B, C)=k1_funct_1(B, C)) ) ) ) ) ).
fof(dt_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => m1_subset_1(k1_relset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (v1_funct_1(k2_partfun1(A, B, C, D)) & m1_subset_1(k2_partfun1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k7_partfun1, axiom,  (! [A, B, C] :  ( (v1_relat_1(B) &  (v5_relat_1(B, A) & v1_funct_1(B)) )  => m1_subset_1(k7_partfun1(A, B, C), A)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k5_relat_1(C, D)) ) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(t47_funct_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, k9_xtuple_0(k5_relat_1(C, B))) => k1_funct_1(k5_relat_1(C, B), A)=k1_funct_1(C, A)) ) ) ) ) ).
fof(t61_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => k9_xtuple_0(k5_relat_1(B, A))=k3_xboole_0(k9_xtuple_0(B), A)) ) ) ).
