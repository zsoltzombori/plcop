% Mizar problem: t108_zfmisc_1,zfmisc_1,1272,17 
fof(t108_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (! [E] :  (! [F] :  (r2_hidden(k4_tarski(E, F), k2_zfmisc_1(A, B)) <=> r2_hidden(k4_tarski(E, F), k2_zfmisc_1(C, D))) ) )  => k2_zfmisc_1(A, B)=k2_zfmisc_1(C, D)) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d2_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_zfmisc_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (? [F] :  (r2_hidden(E, A) &  (r2_hidden(F, B) & D=k4_tarski(E, F)) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
