% Mizar problem: t42_zfmisc_1,zfmisc_1,722,67 
fof(t42_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, k2_tarski(B, C)) <=>  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (A=k1_tarski(B))  &  ( ~ (A=k1_tarski(C))  &  ~ (A=k2_tarski(B, C)) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(l45_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, k2_tarski(B, C)) <=>  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (A=k1_tarski(B))  &  ( ~ (A=k1_tarski(C))  &  ~ (A=k2_tarski(B, C)) ) ) ) ) ) ) ) ) ).
