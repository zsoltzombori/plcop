fof(t78_funct_3, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, A, C) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, C)))) )  => k13_funct_3(D, E)=k3_relat_1(k12_funct_3(A), k16_funct_3(A, A, B, C, D, E))) ) ) ) ) ) ) ).
fof(cc1_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_funct_1(A)) ) ).
fof(cc1_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_relat_1(A)) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( ~ (B=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, C)) )  &  (B=k1_xboole_0 =>  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ).
fof(dt_k11_funct_3, axiom,  (! [A] :  (v1_relat_1(k11_funct_3(A)) & v1_funct_1(k11_funct_3(A))) ) ).
fof(dt_k16_funct_3, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) &  (v1_funct_2(E, A, C) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, C)))) )  &  (v1_funct_1(F) &  (v1_funct_2(F, B, D) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(B, D)))) ) )  =>  (v1_funct_1(k16_funct_3(A, B, C, D, E, F)) &  (v1_funct_2(k16_funct_3(A, B, C, D, E, F), k2_zfmisc_1(A, B), k2_zfmisc_1(C, D)) & m1_subset_1(k16_funct_3(A, B, C, D, E, F), k1_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), k2_zfmisc_1(C, D))))) ) ) ) ).
fof(fc13_relat_1, axiom,  (! [A, B] :  ( (v1_xboole_0(A) & v1_relat_1(B))  =>  (v1_xboole_0(k3_relat_1(B, A)) & v1_relat_1(k3_relat_1(B, A))) ) ) ).
fof(fc1_funct_3, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) &  (v1_funct_1(A) & v1_xboole_0(A)) )  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k13_funct_3(A, B)) &  (v1_funct_1(k13_funct_3(A, B)) & v1_xboole_0(k13_funct_3(A, B))) ) ) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc2_funct_3, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) &  (v1_funct_1(A) & v1_xboole_0(A)) )  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k13_funct_3(B, A)) &  (v1_funct_1(k13_funct_3(B, A)) & v1_xboole_0(k13_funct_3(B, A))) ) ) ) ).
fof(rc1_relset_1, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_xboole_0(C) &  (v1_relat_1(C) &  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ) ) ).
fof(redefinition_k12_funct_3, axiom,  (! [A] : k12_funct_3(A)=k11_funct_3(A)) ).
fof(redefinition_k16_funct_3, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) &  (v1_funct_2(E, A, C) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, C)))) )  &  (v1_funct_1(F) &  (v1_funct_2(F, B, D) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(B, D)))) ) )  => k16_funct_3(A, B, C, D, E, F)=k15_funct_3(E, F)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(t68_funct_3, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (k9_xtuple_0(B)=A & k9_xtuple_0(C)=A)  => k13_funct_3(B, C)=k3_relat_1(k12_funct_3(A), k15_funct_3(B, C))) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t90_zfmisc_1, axiom,  (! [A] :  (! [B] :  (k2_zfmisc_1(A, B)=k1_xboole_0 <=>  (A=k1_xboole_0 | B=k1_xboole_0) ) ) ) ).
