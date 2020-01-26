fof(t11_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  ~ ( (r2_hidden(C, k2_relset_1(B, D)) &  (! [E] :  ~ ( (r2_hidden(E, A) & k1_funct_1(D, E)=C) ) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  (C=k7_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (r2_hidden(E, k9_xtuple_0(A)) &  (r2_hidden(E, B) & D=k1_funct_1(A, E)) ) ) ) ) ) ) ) ) ) ).
fof(rd8_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k5_relat_1(B, A)=B) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(t115_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => k10_xtuple_0(k5_relat_1(B, A))=k7_relat_1(B, A)) ) ) ).
