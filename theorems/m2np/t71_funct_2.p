fof(t71_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  ~ ( ( (B=k1_xboole_0 => A=k1_xboole_0)  &  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (? [E] :  (r2_hidden(E, k1_relset_1(A, C)) &  ~ (k1_funct_1(D, E)=k1_funct_1(C, E)) ) ) ) ) ) ) ) ) ) ) ).
fof(cc2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B)) ) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(cc4_relset_1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) => v1_xboole_0(C)) ) ) ) ).
fof(cc7_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  =>  (v1_xboole_0(B) &  (v1_relat_1(B) & v4_relat_1(B, A)) ) ) ) ) ) ).
fof(dt_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => m1_subset_1(k1_relset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_o_1_0_funct_2, axiom,  (! [A] : m1_subset_1(o_1_0_funct_2(A), A)) ).
fof(fc4_xtuple_0, axiom,  (! [A] :  (v1_xboole_0(A) => v1_xboole_0(k9_xtuple_0(A))) ) ).
fof(fc6_relat_1, axiom,  (! [A, B] : v1_relat_1(k2_zfmisc_1(A, B))) ).
fof(rc1_funct_2, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v5_relat_1(C, B) &  (v1_funct_1(C) & v1_funct_2(C, A, B)) ) ) ) ) ) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(s5_funct_2__e3_90_1_2__funct_2, axiom,  (! [A, B, C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  ( (! [D] :  (r2_hidden(D, A) =>  ( (r2_hidden(D, k1_relset_1(A, C)) => r2_hidden(k1_funct_1(C, D), B))  &  ( ~ (r2_hidden(D, k1_relset_1(A, C)))  => r2_hidden(o_1_0_funct_2(B), B)) ) ) )  =>  (? [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (! [E] :  (r2_hidden(E, A) =>  ( (r2_hidden(E, k1_relset_1(A, C)) => k1_funct_1(D, E)=k1_funct_1(C, E))  &  ( ~ (r2_hidden(E, k1_relset_1(A, C)))  => k1_funct_1(D, E)=o_1_0_funct_2(B)) ) ) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t4_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) &  (v5_relat_1(C, A) & v1_funct_1(C)) )  =>  (r2_hidden(B, k9_xtuple_0(C)) => r2_hidden(k1_funct_1(C, B), A)) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
