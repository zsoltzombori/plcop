fof(t20_relset_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => r1_tarski(k10_xtuple_0(k3_relset_2(A, C)), k9_setfam_1(k2_relset_1(B, C)))) ) ) ) ).
fof(cc2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B)) ) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d3_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k10_xtuple_0(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k9_xtuple_0(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(dt_k3_relset_2, axiom,  (! [A, B] :  (v1_relat_1(B) =>  (v1_relat_1(k3_relset_2(A, B)) & v1_funct_1(k3_relset_2(A, B))) ) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc6_relat_1, axiom,  (! [A, B] : v1_relat_1(k2_zfmisc_1(A, B))) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(t111_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k7_relat_1(B, A), k10_xtuple_0(B))) ) ) ).
fof(t19_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, C))) =>  (r2_hidden(A, k9_xtuple_0(k3_relset_2(B, D))) => k1_funct_1(k3_relset_2(B, D), A)=k7_relset_1(B, C, D, A)) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
