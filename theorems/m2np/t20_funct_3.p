fof(t20_funct_3, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  ( (B=k1_xboole_0 => A=k1_xboole_0)  =>  (v1_funct_1(k1_funct_3(C)) &  (v1_funct_2(k1_funct_3(C), k1_zfmisc_1(A), k1_zfmisc_1(B)) & m1_subset_1(k1_funct_3(C), k1_zfmisc_1(k2_zfmisc_1(k1_zfmisc_1(A), k1_zfmisc_1(B))))) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(cc7_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  =>  (v1_xboole_0(B) &  (v1_relat_1(B) & v4_relat_1(B, A)) ) ) ) ) ) ).
fof(d19_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v5_relat_1(B, A) <=> r1_tarski(k10_xtuple_0(B), A)) ) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( ~ (B=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, C)) )  &  (B=k1_xboole_0 =>  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ).
fof(dt_k1_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k1_funct_3(A)) & v1_funct_1(k1_funct_3(A))) ) ) ).
fof(dt_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => m1_subset_1(k1_relset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(fc10_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_xboole_0(k9_xtuple_0(A))) ) ).
fof(fc11_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_xboole_0(k10_xtuple_0(A))) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(rc9_funct_1, axiom,  (! [A] :  (? [B] :  (v1_relat_1(B) &  (v2_relat_1(B) &  (v4_relat_1(B, A) & v1_funct_1(B)) ) ) ) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(t19_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_funct_1(k1_funct_3(A)) &  (v1_funct_2(k1_funct_3(A), k1_zfmisc_1(k9_xtuple_0(A)), k1_zfmisc_1(k10_xtuple_0(A))) & m1_subset_1(k1_funct_3(A), k1_zfmisc_1(k2_zfmisc_1(k1_zfmisc_1(k9_xtuple_0(A)), k1_zfmisc_1(k10_xtuple_0(A)))))) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_relset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (r1_tarski(k9_xtuple_0(C), A) & r1_tarski(k10_xtuple_0(C), B))  => m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t67_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => r1_tarski(k1_zfmisc_1(A), k1_zfmisc_1(B))) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
