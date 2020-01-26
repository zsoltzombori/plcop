% Mizar problem: t33_zfmisc_1,zfmisc_1,574,42 
fof(t33_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (k4_tarski(A, B)=k4_tarski(C, D) =>  (A=C & B=D) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(t10_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( (k2_tarski(A, B)=k2_tarski(C, D) &  ( ~ (A=C)  &  ~ (A=D) ) ) ) ) ) ) ) ).
fof(t69_enumset1, axiom,  (! [A] : k2_tarski(A, A)=k1_tarski(A)) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t6_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), k1_tarski(B)) => A=B) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (k1_tarski(A)=k2_tarski(B, C) => A=B) ) ) ) ).
fof(t9_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (k1_tarski(A)=k2_tarski(B, C) => B=C) ) ) ) ).
