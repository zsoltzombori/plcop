fof(t62_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, A) &  (v3_funct_2(C, A, A) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  =>  (r1_tarski(B, A) =>  (k7_relset_1(A, A, C, k8_relset_1(A, A, C, B))=B & k8_relset_1(A, A, C, k7_relset_1(A, A, C, B))=B) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(cc5_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v3_funct_2(C, A, B))  =>  (v1_funct_1(C) &  (v2_funct_1(C) & v2_funct_2(C, B)) ) ) ) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d3_funct_2, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  =>  (v2_funct_2(B, A) <=> k2_relset_1(A, B)=A) ) ) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(redefinition_k8_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k8_relset_1(A, B, C, D)=k8_relat_1(C, D)) ) ).
fof(t52_funct_2, axiom,  (! [A] :  (! [B] :  ( (v1_funct_1(B) &  (v1_funct_2(B, A, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) )  => k1_relset_1(A, B)=A) ) ) ).
fof(t76_funct_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, k9_xtuple_0(B)) => r1_tarski(A, k8_relat_1(B, k7_relat_1(B, A)))) ) ) ) ).
fof(t77_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_tarski(A, k10_xtuple_0(B)) => k7_relat_1(B, k8_relat_1(B, A))=A) ) ) ) ).
fof(t82_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (v2_funct_1(B) => r1_tarski(k8_relat_1(B, k7_relat_1(B, A)), A)) ) ) ) ).
