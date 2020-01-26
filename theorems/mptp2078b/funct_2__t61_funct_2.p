% Mizar problem: t61_funct_2,funct_2,941,51 
fof(t61_funct_2, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, k1_tarski(A), B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(k1_tarski(A), B)))) )  =>  ( ~ (B=k1_xboole_0)  => r2_hidden(k1_funct_1(C, A), B)) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( (B=k1_xboole_0 => A=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, B, C)) )  &  (B=k1_xboole_0 =>  (A=k1_xboole_0 |  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k2_relset_1(A, B, C), k1_zfmisc_1(B))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k2_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(t14_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (k1_relat_1(B)=k1_tarski(A) => k2_relat_1(B)=k1_tarski(k1_funct_1(B, A))) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t37_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
