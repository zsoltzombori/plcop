fof(t84_funct_2, conjecture,  (! [A] :  (! [B] : k5_partfun1(A, B, k3_partfun1(k1_xboole_0, A, B))=k1_funct_2(A, B)) ) ).
fof(cc1_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_funct_1(A)) ) ).
fof(cc1_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v1_partfun1(C, A) => v1_funct_2(C, A, B)) ) ) ) ).
fof(cc1_partfun1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_partfun1(C, A)) ) ) ) ).
fof(cc1_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_relat_1(A)) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_partfun1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ~ (v1_partfun1(C, A)) ) ) ) ) ).
fof(cc3_funct_2, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v1_funct_2(C, A, B) => v1_partfun1(C, A)) ) ) ) ) ).
fof(cc4_relset_1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) => v1_xboole_0(C)) ) ) ) ).
fof(d5_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (! [D] :  (D=k5_partfun1(A, B, C) <=>  (! [E] :  (r2_hidden(E, D) <=>  (? [F] :  ( (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (F=E &  (v1_partfun1(F, A) & r1_partfun1(C, F)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k3_partfun1, axiom,  (! [A, B, C] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_funct_1(k3_partfun1(A, B, C)) & m1_subset_1(k3_partfun1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, C)))) ) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc3_funct_2, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & v1_xboole_0(B))  => v1_xboole_0(k1_funct_2(A, B))) ) ).
fof(t60_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  => r1_partfun1(k3_partfun1(k1_xboole_0, A, B), C)) ) ) ) ).
fof(t66_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (r2_hidden(C, k1_funct_2(A, B)) =>  (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  ( (B=k1_xboole_0 => A=k1_xboole_0)  => r2_hidden(C, k1_funct_2(A, B))) ) ) ) ) ).
