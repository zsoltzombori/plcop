% Mizar problem: t4_tex_2,tex_2,79,33 
fof(t4_tex_2, conjecture,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_struct_0(B) =>  ( (u1_struct_0(A)=u1_struct_0(B) & v7_struct_0(A))  => v7_struct_0(B)) ) ) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(cc6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) )  =>  ( ~ (v1_zfmisc_1(A))  &  (v1_relat_1(A) & v1_funct_1(A)) ) ) ) ).
fof(cc9_funct_1, axiom,  (! [A] :  (v4_funct_1(A) =>  (! [B] :  (m1_subset_1(B, A) =>  (v1_relat_1(B) & v1_funct_1(B)) ) ) ) ) ).
fof(rc2_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ).
fof(rc2_relat_1, axiom,  (? [A] :  (v1_relat_1(A) & v2_relat_1(A)) ) ).
fof(rc3_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v2_relat_1(A) & v1_funct_1(A)) ) ) ).
fof(rc4_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  &  (v1_relat_1(A) &  (v2_relat_1(A) & v1_funct_1(A)) ) ) ) ).
fof(rc5_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(cc2_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ) ).
fof(cc3_relat_1, axiom,  (! [A] :  ( (v1_xboole_0(A) & v1_relat_1(A))  =>  (v1_relat_1(A) & v3_relat_1(A)) ) ) ).
fof(cc4_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc4_relat_1, axiom,  (! [A] :  ( (v1_xboole_0(A) & v1_relat_1(A))  =>  (v1_relat_1(A) & v2_relat_1(A)) ) ) ).
fof(cc7_funct_1, axiom,  (! [A] :  ( (v1_zfmisc_1(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(rc1_funct_1, axiom,  (? [A] :  (v1_relat_1(A) & v1_funct_1(A)) ) ).
fof(rc1_relat_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v1_relat_1(A)) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(cc1_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_funct_1(A)) ) ).
fof(cc1_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_relat_1(A)) ) ).
fof(cc1_zfmisc_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_zfmisc_1(A)) ) ).
fof(cc2_realset1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_zfmisc_1(A)) ) ).
fof(cc4_realset1, axiom,  (! [A] :  ( ~ (v1_finset_1(A))  =>  ~ (v1_zfmisc_1(A)) ) ) ).
fof(cc8_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v4_funct_1(A)) ) ).
fof(rc1_realset1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A)) ) ).
fof(rc1_xboole_0, axiom,  (? [A] : v1_xboole_0(A)) ).
fof(rc2_realset1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) ) ) ).
fof(rc2_xboole_0, axiom,  (? [A] :  ~ (v1_xboole_0(A)) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_realset1, axiom,  (! [A] :  ( ~ (v1_zfmisc_1(A))  =>  ~ (v1_xboole_0(A)) ) ) ).
fof(cc1_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) => v7_struct_0(A)) ) ) ).
fof(cc3_realset1, axiom,  (! [A] :  (v1_zfmisc_1(A) => v1_finset_1(A)) ) ).
fof(cc4_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v2_struct_0(A) =>  (v2_struct_0(A) & v8_struct_0(A)) ) ) ) ).
fof(cc5_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ( ~ (v2_struct_0(A))  &  ~ (v8_struct_0(A)) ) ) ) ) ).
fof(cc7_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v8_struct_0(A))  =>  ~ (v7_struct_0(A)) ) ) ) ).
fof(fc1_struct_0, axiom,  (! [A] :  ( (v2_struct_0(A) & l1_struct_0(A))  => v1_xboole_0(u1_struct_0(A))) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc8_struct_0, axiom,  (! [A] :  ( (v8_struct_0(A) & l1_struct_0(A))  => v1_finset_1(u1_struct_0(A))) ) ).
fof(fc9_struct_0, axiom,  (! [A] :  ( ( ~ (v8_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_finset_1(u1_struct_0(A))) ) ) ).
fof(rc10_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  &  ~ (v7_struct_0(A)) ) ) ) ).
fof(rc9_struct_0, axiom,  (? [A] :  (l1_struct_0(A) &  ( ~ (v2_struct_0(A))  & v7_struct_0(A)) ) ) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_u1_struct_0, axiom, $true).
fof(cc2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  ( ~ (v7_struct_0(A))  =>  ~ (v2_struct_0(A)) ) ) ) ).
fof(cc6_struct_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (v7_struct_0(A) => v8_struct_0(A)) ) ) ).
fof(fc6_struct_0, axiom,  (! [A] :  ( ( ~ (v7_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_zfmisc_1(u1_struct_0(A))) ) ) ).
fof(fc7_struct_0, axiom,  (! [A] :  ( (v7_struct_0(A) & l1_struct_0(A))  => v1_zfmisc_1(u1_struct_0(A))) ) ).
