fof(t29_relset_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (C=k1_xboole_0 => k6_relset_2(A, B, C, D)=B) ) ) ) ) ) ) ).
fof(d2_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k5_relset_2(A, B, C, D)=k8_setfam_1(B, k7_relset_1(k9_setfam_1(A), k9_setfam_1(B), k4_relset_2(B, A, D), k10_eqrel_1(C)))) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d9_setfam_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  ( ( ~ (B=k1_xboole_0)  => k8_setfam_1(A, B)=k6_setfam_1(A, B))  &  (B=k1_xboole_0 => k8_setfam_1(A, B)=A) ) ) ) ) ).
fof(dt_k4_relset_2, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) =>  (v1_funct_1(k4_relset_2(A, B, C)) &  (v1_funct_2(k4_relset_2(A, B, C), k9_setfam_1(B), k9_setfam_1(A)) & m1_subset_1(k4_relset_2(A, B, C), k1_zfmisc_1(k2_zfmisc_1(k9_setfam_1(B), k9_setfam_1(A))))) ) ) ) ).
fof(dt_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k7_relset_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(rc1_partfun1, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v5_relat_1(C, B) & v1_funct_1(C)) ) ) ) ) ) ).
fof(redefinition_k4_relset_2, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) => k4_relset_2(A, B, C)=k3_relset_2(B, C)) ) ).
fof(redefinition_k6_relset_2, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k6_relset_2(A, B, C, D)=k5_relset_2(A, B, C, D)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(t23_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (k7_relset_1(k9_setfam_1(A), k9_setfam_1(B), k4_relset_2(B, A, D), k10_eqrel_1(C))=k1_xboole_0 <=> C=k1_xboole_0) ) ) ) ) ) ) ).
