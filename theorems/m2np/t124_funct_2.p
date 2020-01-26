fof(t124_funct_2, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( (v1_funct_1(B) &  (v1_funct_2(B, A, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) )  =>  ( (! [C] :  (m1_subset_1(C, A) => k3_funct_2(A, A, B, C)=C) )  => r2_funct_2(A, A, B, k6_partfun1(A))) ) ) ) ) ).
fof(cc1_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v1_partfun1(C, A) => v1_funct_2(C, A, B)) ) ) ) ).
fof(d8_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (r2_funct_2(A, B, C, D) <=>  (! [E] :  (m1_subset_1(E, A) => k1_funct_1(C, E)=k1_funct_1(D, E)) ) ) ) ) ) ) ) ) ).
fof(dt_k6_partfun1, axiom,  (! [A] :  (v1_partfun1(k6_partfun1(A), A) & m1_subset_1(k6_partfun1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ).
fof(fc11_funct_2, axiom,  (! [A] :  (v1_relat_1(k4_relat_1(A)) &  (v4_relat_1(k4_relat_1(A), A) &  (v1_funct_1(k4_relat_1(A)) & v1_partfun1(k4_relat_1(A), A)) ) ) ) ).
fof(redefinition_k3_funct_2, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  & m1_subset_1(D, A)) )  => k3_funct_2(A, B, C, D)=k1_funct_1(C, D)) ) ).
fof(redefinition_k6_partfun1, axiom,  (! [A] : k6_partfun1(A)=k4_relat_1(A)) ).
fof(t18_funct_1, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => k1_funct_1(k4_relat_1(B), A)=A) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
