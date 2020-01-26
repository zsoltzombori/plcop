fof(t61_funct_2, conjecture,  (! [A] :  (! [B] :  ( (v1_funct_1(B) &  (v1_funct_2(B, A, A) &  (v3_funct_2(B, A, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  =>  (r2_relset_1(A, A, k1_partfun1(A, A, A, A, B, k2_funct_2(A, B)), k6_partfun1(A)) & r2_relset_1(A, A, k1_partfun1(A, A, A, A, k2_funct_2(A, B), B), k6_partfun1(A))) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(cc5_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v3_funct_2(C, A, B))  =>  (v1_funct_1(C) &  (v2_funct_1(C) & v2_funct_2(C, B)) ) ) ) ) ) ).
fof(d3_funct_2, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  =>  (v2_funct_2(B, A) <=> k2_relset_1(A, B)=A) ) ) ) ).
fof(dt_k2_funct_2, axiom,  (! [A, B] :  ( (v1_funct_1(B) &  (v1_funct_2(B, A, A) &  (v3_funct_2(B, A, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  =>  (v1_funct_1(k2_funct_2(A, B)) &  (v1_funct_2(k2_funct_2(A, B), A, A) &  (v3_funct_2(k2_funct_2(A, B), A, A) & m1_subset_1(k2_funct_2(A, B), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ) ) ) ).
fof(dt_k6_partfun1, axiom,  (! [A] :  (v1_partfun1(k6_partfun1(A), A) & m1_subset_1(k6_partfun1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ).
fof(redefinition_k1_partfun1, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) )  => k1_partfun1(A, B, C, D, E, F)=k3_relat_1(E, F)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k2_funct_2, axiom,  (! [A, B] :  ( (v1_funct_1(B) &  (v1_funct_2(B, A, A) &  (v3_funct_2(B, A, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  => k2_funct_2(A, B)=k2_funct_1(B)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(redefinition_k6_partfun1, axiom,  (! [A] : k6_partfun1(A)=k4_relat_1(A)) ).
fof(redefinition_r2_relset_1, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (r2_relset_1(A, B, C, D) <=> C=D) ) ) ).
fof(t39_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (k3_relat_1(A, k2_funct_1(A))=k4_relat_1(k9_xtuple_0(A)) & k3_relat_1(k2_funct_1(A), A)=k4_relat_1(k10_xtuple_0(A))) ) ) ) ).
fof(t52_funct_2, axiom,  (! [A] :  (! [B] :  ( (v1_funct_1(B) &  (v1_funct_2(B, A, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) )  => k1_relset_1(A, B)=A) ) ) ).
