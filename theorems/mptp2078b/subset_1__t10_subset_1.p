% Mizar problem: t10_subset_1,subset_1,222,49 
fof(t10_subset_1, conjecture,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ~ ( ( ~ (B=k1_xboole_0)  &  (! [C] :  (m1_subset_1(C, A) =>  ~ (r2_hidden(C, B)) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d1_xboole_0, axiom,  (! [A] :  (v1_xboole_0(A) <=>  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ).
fof(d2_subset_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(A))  =>  (m1_subset_1(B, A) <=> r2_hidden(B, A)) )  &  (v1_xboole_0(A) =>  (m1_subset_1(B, A) <=> v1_xboole_0(B)) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(l3_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (! [C] :  (r2_hidden(C, B) => r2_hidden(C, A)) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
