fof(t32_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (r1_tarski(C, A) =>  ( (B=k1_xboole_0 &  ~ (A=k1_xboole_0) )  |  (v1_funct_1(k2_partfun1(A, B, D, C)) &  (v1_funct_2(k2_partfun1(A, B, D, C), C, B) & m1_subset_1(k2_partfun1(A, B, D, C), k1_zfmisc_1(k2_zfmisc_1(C, B)))) ) ) ) ) ) ) ) ) ).
fof(cc1_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v1_partfun1(C, A) => v1_funct_2(C, A, B)) ) ) ) ).
fof(cc1_partfun1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_partfun1(C, A)) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( ~ (B=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, C)) )  &  (B=k1_xboole_0 =>  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ).
fof(dt_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => m1_subset_1(k1_relset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => m1_subset_1(k2_relset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc26_relat_1, axiom,  (! [A, B, C] :  ( (v1_relat_1(C) & v5_relat_1(C, B))  =>  (v1_relat_1(k5_relat_1(C, A)) & v5_relat_1(k5_relat_1(C, A), B)) ) ) ).
fof(fc27_relat_1, axiom,  (! [A, B, C] :  ( (v1_relat_1(C) & v4_relat_1(C, B))  =>  (v1_relat_1(k5_relat_1(C, A)) &  (v4_relat_1(k5_relat_1(C, A), A) & v4_relat_1(k5_relat_1(C, A), B)) ) ) ) ).
fof(fc8_funct_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k5_relat_1(A, B)) & v1_funct_1(k5_relat_1(A, B))) ) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k5_relat_1(C, D)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_relset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (r1_tarski(k9_xtuple_0(C), A) & r1_tarski(k10_xtuple_0(C), B))  => m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ) ) ).
fof(t62_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, k9_xtuple_0(B)) => k9_xtuple_0(k5_relat_1(B, A))=A) ) ) ) ).
