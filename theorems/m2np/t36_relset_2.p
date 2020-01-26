fof(t36_relset_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (D=k1_xboole_0 =>  (C=k1_xboole_0 | k6_relset_2(A, B, C, D)=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(d16_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] : k9_relat_1(A, B)=k7_relat_1(A, k1_tarski(B))) ) ) ).
fof(d1_xboole_0, axiom,  (! [A] :  (v1_xboole_0(A) <=>  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc20_relat_1, axiom,  (! [A, B] :  ( (v1_xboole_0(A) & v1_relat_1(A))  => v1_xboole_0(k7_relat_1(A, B))) ) ).
fof(redefinition_k1_relset_2, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_2(A, B, C, D)=k9_relat_1(C, D)) ) ).
fof(t24_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(A)) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (r2_hidden(C, k6_relset_2(A, B, D, E)) =>  (! [F] :  (r2_hidden(F, D) => r2_hidden(C, k1_relset_2(A, B, E, F))) ) ) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
