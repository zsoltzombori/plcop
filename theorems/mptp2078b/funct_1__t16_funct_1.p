% Mizar problem: t16_funct_1,funct_1,337,63 
fof(t16_funct_1, conjecture,  (! [A] :  ( (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (k1_relat_1(B)=A & k1_relat_1(C)=A)  => B=C) ) ) ) )  => A=k1_xboole_0) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_o_1_0_funct_1, axiom,  (! [A] : m1_subset_1(o_1_0_funct_1(A), A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(s3_funct_1__e2_25__funct_1, axiom,  (! [A] :  (? [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  &  (k1_relat_1(B)=A &  (! [C] :  (r2_hidden(C, A) => k1_funct_1(B, C)=k1_xboole_0) ) ) ) ) ) ).
fof(s3_funct_1__e7_25__funct_1, axiom,  (! [A] :  (? [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  &  (k1_relat_1(B)=A &  (! [C] :  (r2_hidden(C, A) => k1_funct_1(B, C)=1) ) ) ) ) ) ).
fof(spc1_boole, axiom,  ~ (v1_xboole_0(1)) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
