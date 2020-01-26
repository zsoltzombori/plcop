% Mizar problem: t55_mcart_1,mcart_1,1119,4 
fof(t55_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ~ (D=k1_xboole_0) ) ) )  <=>  ~ (k4_zfmisc_1(A, B, C, D)=k1_xboole_0) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d4_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k4_zfmisc_1(A, B, C, D)=k2_zfmisc_1(k3_zfmisc_1(A, B, C), D)) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_zfmisc_1, axiom, $true).
fof(dt_k4_zfmisc_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t113_zfmisc_1, axiom,  (! [A] :  (! [B] :  (k2_zfmisc_1(A, B)=k1_xboole_0 <=>  (A=k1_xboole_0 | B=k1_xboole_0) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t35_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ~ (C=k1_xboole_0) ) )  <=>  ~ (k3_zfmisc_1(A, B, C)=k1_xboole_0) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
