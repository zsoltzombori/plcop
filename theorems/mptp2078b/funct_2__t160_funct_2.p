% Mizar problem: t160_funct_2,funct_2,1610,29 
fof(t160_funct_2, conjecture,  (! [A] :  (! [B] : k5_partfun1(A, B, k3_partfun1(k1_xboole_0, A, B))=k1_funct_2(A, B)) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d7_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (! [D] :  (D=k5_partfun1(A, B, C) <=>  (! [E] :  (r2_hidden(E, D) <=>  (? [F] :  ( (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (F=E &  (v1_partfun1(F, A) & r1_partfun1(C, F)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_funct_2, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_partfun1, axiom,  (! [A, B, C] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_funct_1(k3_partfun1(A, B, C)) & m1_subset_1(k3_partfun1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, C)))) ) ) ).
fof(dt_k5_partfun1, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_k8_relat_1, axiom,  (! [A, B] :  (v1_relat_1(B) => v1_relat_1(k8_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(reflexivity_r1_partfun1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  => r1_partfun1(A, A)) ) ).
fof(symmetry_r1_partfun1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (r1_partfun1(A, B) => r1_partfun1(B, A)) ) ) ).
fof(t11_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  ( (B=k1_xboole_0 => A=k1_xboole_0)  => r2_hidden(C, k1_funct_2(A, B))) ) ) ) ) ).
fof(t121_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (r2_hidden(C, k1_funct_2(A, B)) =>  (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ) ) ) ).
fof(t142_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  => r1_partfun1(k3_partfun1(k1_xboole_0, A, B), C)) ) ) ) ).
fof(t158_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (! [D] :  (r2_hidden(D, k5_partfun1(A, B, C)) =>  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_funct_1(A)) ) ).
fof(cc1_partfun1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_partfun1(C, A)) ) ) ) ).
fof(cc1_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_relat_1(A)) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc5_funct_2, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) & v1_funct_2(C, A, B))  =>  (v1_funct_1(C) & v1_partfun1(C, A)) ) ) ) ) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc2_partfun1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  (v1_xboole_0(B) &  (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  => v1_xboole_0(k5_partfun1(A, B, C))) ) ).
fof(fc3_funct_2, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & v1_xboole_0(B))  => v1_xboole_0(k1_funct_2(A, B))) ) ).
