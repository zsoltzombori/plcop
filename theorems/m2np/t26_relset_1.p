fof(t26_relset_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ~ ( ( ~ (k1_relset_1(A, C)=k1_xboole_0)  &  (! [D] :  (m1_subset_1(D, B) =>  ~ (r2_hidden(D, k2_relset_1(B, C))) ) ) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(dt_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => m1_subset_1(k2_relset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(t42_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (k9_xtuple_0(A)=k1_xboole_0 <=> k10_xtuple_0(A)=k1_xboole_0) ) ) ).
fof(t4_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ~ ( ( ~ (B=k1_xboole_0)  &  (! [C] :  (m1_subset_1(C, A) =>  ~ (r2_hidden(C, B)) ) ) ) ) ) ) ) ).
