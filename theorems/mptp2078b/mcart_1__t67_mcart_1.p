% Mizar problem: t67_mcart_1,mcart_1,1427,45 
fof(t67_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (r2_hidden(A, k2_zfmisc_1(B, C)) =>  ( ~ (A=k1_mcart_1(A))  &  ~ (A=k2_mcart_1(A)) ) ) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(t66_mcart_1, axiom,  (! [A] :  (! [B] :  ( ~ (k2_zfmisc_1(A, B)=k1_xboole_0)  =>  (! [C] :  (m1_subset_1(C, k2_zfmisc_1(A, B)) =>  ( ~ (C=k1_mcart_1(C))  &  ~ (C=k2_mcart_1(C)) ) ) ) ) ) ) ).
