fof(t6_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (r1_tarski(k2_relset_1(B, D), C) =>  ( (B=k1_xboole_0 &  ~ (A=k1_xboole_0) )  |  (v1_funct_1(D) &  (v1_funct_2(D, A, C) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, C)))) ) ) ) ) ) ) ) ) ).
fof(cc1_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v1_partfun1(C, A) => v1_funct_2(C, A, B)) ) ) ) ).
fof(cc1_partfun1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_partfun1(C, A)) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(cc3_funct_2, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v1_funct_2(C, A, B) => v1_partfun1(C, A)) ) ) ) ) ).
fof(d18_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v4_relat_1(B, A) <=> r1_tarski(k9_xtuple_0(B), A)) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_relset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (r1_tarski(k9_xtuple_0(C), A) & r1_tarski(k10_xtuple_0(C), B))  => m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
