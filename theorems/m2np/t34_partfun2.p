fof(t34_partfun2, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(B)) =>  (! [D] :  (m1_subset_1(D, A) =>  (v1_partfun1(k4_partfun2(B, A, C, D), B) <=> C=B) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d2_partfun1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  =>  (v1_partfun1(B, A) <=> k1_relset_1(A, B)=A) ) ) ) ).
fof(dt_k4_partfun2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, B)) ) )  =>  (v1_funct_1(k4_partfun2(A, B, C, D)) & m1_subset_1(k4_partfun2(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k4_partfun2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, B)) ) )  => k4_partfun2(A, B, C, D)=k2_funcop_1(C, D)) ) ).
fof(t13_funcop_1, axiom,  (! [A] :  (! [B] :  (k9_xtuple_0(k2_funcop_1(A, B))=A & r1_tarski(k10_xtuple_0(k2_funcop_1(A, B)), k1_tarski(B))) ) ) ).
