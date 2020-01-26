fof(t33_partfun2, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, B) =>  ~ ( (v1_partfun1(k4_partfun2(A, B, C, D), A) & C=k1_xboole_0) ) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d2_partfun1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  =>  (v1_partfun1(B, A) <=> k1_relset_1(A, B)=A) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k4_partfun2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, B)) ) )  =>  (v1_funct_1(k4_partfun2(A, B, C, D)) & m1_subset_1(k4_partfun2(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k4_partfun2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, B)) ) )  => k4_partfun2(A, B, C, D)=k2_funcop_1(C, D)) ) ).
fof(t10_funcop_1, axiom,  (! [A] :  (k9_xtuple_0(k2_funcop_1(k1_xboole_0, A))=k1_xboole_0 & k10_xtuple_0(k2_funcop_1(k1_xboole_0, A))=k1_xboole_0) ) ).
