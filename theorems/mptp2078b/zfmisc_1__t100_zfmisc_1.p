% Mizar problem: t100_zfmisc_1,zfmisc_1,1154,17 
fof(t100_zfmisc_1, conjecture,  (! [A] : r1_tarski(A, k1_zfmisc_1(k3_tarski(A)))) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d1_zfmisc_1, axiom,  (! [A] :  (! [B] :  (B=k1_zfmisc_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=> r1_tarski(C, A)) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k3_tarski, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(l49_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => r1_tarski(A, k3_tarski(B))) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
