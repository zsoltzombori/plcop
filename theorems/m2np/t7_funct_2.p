fof(t7_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (r1_tarski(B, C) =>  ( (B=k1_xboole_0 &  ~ (A=k1_xboole_0) )  |  (v1_funct_1(D) &  (v1_funct_2(D, A, C) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, C)))) ) ) ) ) ) ) ) ) ).
fof(cc1_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v1_partfun1(C, A) => v1_funct_2(C, A, B)) ) ) ) ).
fof(cc1_partfun1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_partfun1(C, A)) ) ) ) ).
fof(cc3_funct_2, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v1_funct_2(C, A, B) => v1_partfun1(C, A)) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(l6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t7_relset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, C))) =>  ( (r1_tarski(A, B) & r1_tarski(C, D))  => m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, D)))) ) ) ) ) ) ) ).
