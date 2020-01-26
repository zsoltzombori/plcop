% Mizar problem: t136_zfmisc_1,zfmisc_1,1922,24 
fof(t136_zfmisc_1, conjecture,  (! [A] :  (? [B] :  (r2_hidden(A, B) &  ( (! [C] :  (! [D] :  ( (r2_hidden(C, B) & r1_tarski(D, C))  => r2_hidden(D, B)) ) )  &  ( (! [C] :  (r2_hidden(C, B) => r2_hidden(k1_zfmisc_1(C), B)) )  &  (! [C] :  ~ ( (r1_tarski(C, B) &  ( ~ (r2_tarski(C, B))  &  ~ (r2_hidden(C, B)) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d1_zfmisc_1, axiom,  (! [A] :  (! [B] :  (B=k1_zfmisc_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=> r1_tarski(C, A)) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t9_tarski, axiom,  (! [A] :  (? [B] :  (r2_hidden(A, B) &  ( (! [C] :  (! [D] :  ( (r2_hidden(C, B) & r1_tarski(D, C))  => r2_hidden(D, B)) ) )  &  ( (! [C] :  ~ ( (r2_hidden(C, B) &  (! [D] :  ~ ( (r2_hidden(D, B) &  (! [E] :  (r1_tarski(E, C) => r2_hidden(E, D)) ) ) ) ) ) ) )  &  (! [C] :  ~ ( (r1_tarski(C, B) &  ( ~ (r2_tarski(C, B))  &  ~ (r2_hidden(C, B)) ) ) ) ) ) ) ) ) ) ).
