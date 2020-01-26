fof(t101_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( ~ (v1_xboole_0(D))  =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, A, D) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, D)))) )  =>  ( (r1_tarski(B, A) & r1_tarski(k7_relset_1(A, D, E, B), C))  =>  (v1_funct_1(k2_partfun1(A, D, E, B)) &  (v1_funct_2(k2_partfun1(A, D, E, B), B, C) & m1_subset_1(k2_partfun1(A, D, E, B), k1_zfmisc_1(k2_zfmisc_1(B, C)))) ) ) ) ) ) ) ) ) ) ).
fof(cc1_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_relat_1(A)) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( ~ (B=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, C)) )  &  (B=k1_xboole_0 =>  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ).
fof(dt_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (v1_funct_1(k2_partfun1(A, B, C, D)) & m1_subset_1(k2_partfun1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(fc10_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_xboole_0(k9_xtuple_0(A))) ) ).
fof(fc16_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_xboole_0(B))  =>  (v1_xboole_0(k5_relat_1(A, B)) & v1_relat_1(k5_relat_1(A, B))) ) ) ).
fof(fc17_relat_1, axiom,  (! [A, B] :  ( (v1_xboole_0(A) & v1_relat_1(A))  =>  (v1_xboole_0(k5_relat_1(A, B)) & v1_relat_1(k5_relat_1(A, B))) ) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(rc1_relset_1, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_xboole_0(C) &  (v1_relat_1(C) &  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(rd8_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k5_relat_1(B, A)=B) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k5_relat_1(C, D)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t115_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => k10_xtuple_0(k5_relat_1(B, A))=k7_relat_1(B, A)) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t42_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (k9_xtuple_0(A)=k1_xboole_0 <=> k10_xtuple_0(A)=k1_xboole_0) ) ) ).
fof(t4_relset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (r1_tarski(k9_xtuple_0(C), A) & r1_tarski(k10_xtuple_0(C), B))  => m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ) ) ).
fof(t62_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, k9_xtuple_0(B)) => k9_xtuple_0(k5_relat_1(B, A))=A) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
