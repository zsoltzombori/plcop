fof(t24_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, B, C) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C)))) )  =>  ( (v2_funct_1(k1_partfun1(A, B, B, C, D, E)) & k2_relset_1(B, D)=B)  =>  ( (C=k1_xboole_0 &  ~ (B=k1_xboole_0) )  |  (v2_funct_1(D) & v2_funct_1(E)) ) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( ~ (B=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, C)) )  &  (B=k1_xboole_0 =>  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(fc10_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_xboole_0(k9_xtuple_0(A))) ) ).
fof(fc11_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_xboole_0(k10_xtuple_0(A))) ) ).
fof(rc1_relset_1, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_xboole_0(C) &  (v1_relat_1(C) &  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(redefinition_k1_partfun1, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) )  => k1_partfun1(A, B, C, D, E, F)=k3_relat_1(E, F)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(t26_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v2_funct_1(k3_relat_1(B, A)) & k10_xtuple_0(B)=k9_xtuple_0(A))  =>  (v2_funct_1(B) & v2_funct_1(A)) ) ) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
