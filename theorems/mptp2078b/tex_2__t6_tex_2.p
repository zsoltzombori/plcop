% Mizar problem: t6_tex_2,tex_2,112,26 
fof(t6_tex_2, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, A) =>  ~ ( (v1_subset_1(k6_domain_1(A, B), A) & v1_zfmisc_1(A)) ) ) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(cc6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) )  =>  ( ~ (v1_zfmisc_1(A))  &  (v1_relat_1(A) & v1_funct_1(A)) ) ) ) ).
fof(rc2_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ).
fof(rc2_relat_1, axiom,  (? [A] :  (v1_relat_1(A) & v2_relat_1(A)) ) ).
fof(rc3_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v2_relat_1(A) & v1_funct_1(A)) ) ) ).
fof(rc4_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  &  (v1_relat_1(A) &  (v2_relat_1(A) & v1_funct_1(A)) ) ) ) ).
fof(rc5_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(cc10_funct_1, axiom,  (! [A] :  (v4_funct_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v4_funct_1(B)) ) ) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(cc1_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (v1_subset_1(B, A) => v1_xboole_0(B)) ) ) ) ) ).
fof(cc2_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ) ).
fof(cc2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B)) ) ) ) ).
fof(cc2_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ~ (v1_subset_1(B, A))  =>  ~ (v1_xboole_0(B)) ) ) ) ) ) ).
fof(cc2_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ~ (v1_xboole_0(B))  =>  ~ (v1_subset_1(B, A)) ) ) ) ) ) ).
fof(cc3_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_funct_1(B)) ) ) ) ).
fof(cc3_relat_1, axiom,  (! [A] :  ( (v1_xboole_0(A) & v1_relat_1(A))  =>  (v1_relat_1(A) & v3_relat_1(A)) ) ) ).
fof(cc3_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (v1_xboole_0(B) => v1_subset_1(B, A)) ) ) ) ) ).
fof(cc4_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc4_realset1, axiom,  (! [A] :  ( ~ (v1_finset_1(A))  =>  ~ (v1_zfmisc_1(A)) ) ) ).
fof(cc4_relat_1, axiom,  (! [A] :  ( (v1_xboole_0(A) & v1_relat_1(A))  =>  (v1_relat_1(A) & v2_relat_1(A)) ) ) ).
fof(cc4_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ~ (v1_subset_1(B, A)) ) ) ) ) ).
fof(cc5_funct_1, axiom,  (! [A] :  (v1_zfmisc_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_zfmisc_1(B)) ) ) ) ).
fof(cc7_funct_1, axiom,  (! [A] :  ( (v1_zfmisc_1(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc9_funct_1, axiom,  (! [A] :  (v4_funct_1(A) =>  (! [B] :  (m1_subset_1(B, A) =>  (v1_relat_1(B) & v1_funct_1(B)) ) ) ) ) ).
fof(fc14_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  => v4_funct_1(k1_tarski(A))) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
fof(fc2_zfmisc_1, axiom,  (! [A] : v1_zfmisc_1(k1_tarski(A))) ).
fof(rc1_funct_1, axiom,  (? [A] :  (v1_relat_1(A) & v1_funct_1(A)) ) ).
fof(rc1_relat_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v1_relat_1(A)) ) ).
fof(rc1_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(rc1_tex_2, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(rc3_realset1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ).
fof(rc3_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_subset_1(B, A)) ) ) ) ).
fof(rc4_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_subset_1(B, A)) ) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(dt_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => m1_subset_1(k6_domain_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(cc1_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_funct_1(A)) ) ).
fof(cc1_realset1, axiom,  (! [A] :  ( ~ (v1_zfmisc_1(A))  =>  ~ (v1_xboole_0(A)) ) ) ).
fof(cc1_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_relat_1(A)) ) ).
fof(cc1_zfmisc_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_zfmisc_1(A)) ) ).
fof(cc2_realset1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_zfmisc_1(A)) ) ).
fof(cc3_realset1, axiom,  (! [A] :  (v1_zfmisc_1(A) => v1_finset_1(A)) ) ).
fof(cc8_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v4_funct_1(A)) ) ).
fof(rc1_realset1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A)) ) ).
fof(rc1_xboole_0, axiom,  (? [A] : v1_xboole_0(A)) ).
fof(rc2_realset1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) ) ) ).
fof(rc2_xboole_0, axiom,  (? [A] :  ~ (v1_xboole_0(A)) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
