% Mizar problem: t43_zfmisc_1,zfmisc_1,730,16 
fof(t43_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ~ ( (k1_tarski(A)=k2_xboole_0(B, C) &  ( ~ ( (B=k1_tarski(A) & C=k1_tarski(A)) )  &  ( ~ ( (B=k1_xboole_0 & C=k1_tarski(A)) )  &  ~ ( (B=k1_tarski(A) & C=k1_xboole_0) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(l3_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, k1_tarski(B)) <=>  (A=k1_xboole_0 | A=k1_tarski(B)) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(A, k2_xboole_0(A, B))) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
