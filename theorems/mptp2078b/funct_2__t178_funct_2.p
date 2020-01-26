% Mizar problem: t178_funct_2,funct_2,2183,42 
fof(t178_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( ~ (v1_xboole_0(D))  =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, A, D) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, D)))) )  =>  ( (r1_tarski(B, A) & r1_tarski(k7_relset_1(A, D, E, B), C))  =>  (v1_funct_1(k2_partfun1(A, D, E, B)) &  (v1_funct_2(k2_partfun1(A, D, E, B), B, C) & m1_subset_1(k2_partfun1(A, D, E, B), k1_zfmisc_1(k2_zfmisc_1(B, C)))) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( (B=k1_xboole_0 => A=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, B, C)) )  &  (B=k1_xboole_0 =>  (A=k1_xboole_0 |  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (v1_funct_1(k2_partfun1(A, B, C, D)) & m1_subset_1(k2_partfun1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k2_relset_1(A, B, C), k1_zfmisc_1(B))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k7_relset_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k2_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k9_relat_1(C, D)) ) ).
fof(t11_relset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (r1_tarski(k1_relat_1(C), A) & r1_tarski(k2_relat_1(C), B))  => m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ) ) ).
fof(t148_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => k2_relat_1(k7_relat_1(B, A))=k9_relat_1(B, A)) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t65_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (k1_relat_1(A)=k1_xboole_0 <=> k2_relat_1(A)=k1_xboole_0) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t91_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, k1_relat_1(B)) => k1_relat_1(k7_relat_1(B, A))=A) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
