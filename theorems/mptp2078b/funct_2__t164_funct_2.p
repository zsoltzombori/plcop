% Mizar problem: t164_funct_2,funct_2,1657,18 
fof(t164_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, k1_tarski(B)))))  =>  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, k1_tarski(B)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, k1_tarski(B))))) )  => k5_partfun1(A, k1_tarski(B), C)=k1_tarski(D)) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d7_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (! [D] :  (D=k5_partfun1(A, B, C) <=>  (! [E] :  (r2_hidden(E, D) <=>  (? [F] :  ( (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (F=E &  (v1_partfun1(F, A) & r1_partfun1(C, F)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k5_partfun1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(redefinition_r2_relset_1, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (r2_relset_1(A, B, C, D) <=> C=D) ) ) ).
fof(reflexivity_r1_partfun1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  => r1_partfun1(A, A)) ) ).
fof(reflexivity_r2_relset_1, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => r2_relset_1(A, B, C, C)) ) ).
fof(symmetry_r1_partfun1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (r1_partfun1(A, B) => r1_partfun1(B, A)) ) ) ).
fof(symmetry_r2_relset_1, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (r2_relset_1(A, B, C, D) => r2_relset_1(A, B, D, C)) ) ) ).
fof(t143_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, k1_tarski(B)))))  =>  (! [D] :  ( (v1_funct_1(D) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, k1_tarski(B)))))  => r1_partfun1(C, D)) ) ) ) ) ) ).
fof(t158_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (! [D] :  (r2_hidden(D, k5_partfun1(A, B, C)) =>  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t66_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, k1_tarski(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, k1_tarski(B))))) )  =>  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, k1_tarski(B)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, k1_tarski(B))))) )  => r2_relset_1(A, k1_tarski(B), C, D)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc5_funct_2, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v1_funct_2(C, A, B))  =>  (v1_funct_1(C) & v1_partfun1(C, A)) ) ) ) ) ) ).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
