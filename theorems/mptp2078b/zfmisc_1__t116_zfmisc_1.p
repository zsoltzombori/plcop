% Mizar problem: t116_zfmisc_1,zfmisc_1,1409,29 
fof(t116_zfmisc_1, conjecture,  (! [A] :  (r1_tarski(A, k2_zfmisc_1(A, A)) => A=k1_xboole_0) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d2_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_zfmisc_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (? [F] :  (r2_hidden(E, A) &  (r2_hidden(F, B) & D=k4_tarski(E, F)) ) ) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d4_tarski, axiom,  (! [A] :  (! [B] :  (B=k3_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(C, D) & r2_hidden(D, A)) ) ) ) ) ) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_tarski, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(l139_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, k2_zfmisc_1(B, C)) &  (! [D] :  (! [E] :  ~ (k4_tarski(D, E)=A) ) ) ) ) ) ) ) ).
fof(l49_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => r1_tarski(A, k3_tarski(B))) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_tarski, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) &  (! [C] :  ~ ( (r2_hidden(C, B) &  (! [D] :  ~ ( (r2_hidden(D, B) & r2_hidden(D, C)) ) ) ) ) ) ) ) ) ) ).
fof(t7_xboole_0, axiom,  (! [A] :  ~ ( ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
