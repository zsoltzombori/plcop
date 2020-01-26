% Mizar problem: t45_zfmisc_1,zfmisc_1,749,33 
fof(t45_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (r1_tarski(k2_xboole_0(k1_tarski(A), B), B) => r2_hidden(A, B)) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_k1_xboole_0, axiom, $true).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(l20_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k2_xboole_0(k1_tarski(A), B), B) => r2_hidden(A, B)) ) ) ).
