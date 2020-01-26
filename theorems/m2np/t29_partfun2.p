fof(t29_partfun2, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, A) =>  (! [E] :  (m1_subset_1(E, B) =>  (r2_hidden(D, C) => k7_partfun1(B, k4_partfun2(A, B, C, E), D)=E) ) ) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d6_partfun1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) &  (v5_relat_1(B, A) & v1_funct_1(B)) )  =>  (! [C] :  (r2_hidden(C, k9_xtuple_0(B)) => k7_partfun1(A, B, C)=k1_funct_1(B, C)) ) ) ) ) ).
fof(dt_k4_partfun2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, B)) ) )  =>  (v1_funct_1(k4_partfun2(A, B, C, D)) & m1_subset_1(k4_partfun2(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(redefinition_k4_partfun2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  (m1_subset_1(C, k1_zfmisc_1(A)) & m1_subset_1(D, B)) ) )  => k4_partfun2(A, B, C, D)=k2_funcop_1(C, D)) ) ).
fof(t13_funcop_1, axiom,  (! [A] :  (! [B] :  (k9_xtuple_0(k2_funcop_1(A, B))=A & r1_tarski(k10_xtuple_0(k2_funcop_1(A, B)), k1_tarski(B))) ) ) ).
fof(t7_funcop_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r2_hidden(B, A) => k1_funct_1(k2_funcop_1(A, C), B)=C) ) ) ) ).
