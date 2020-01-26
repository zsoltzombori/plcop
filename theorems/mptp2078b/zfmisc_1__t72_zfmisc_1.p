% Mizar problem: t72_zfmisc_1,zfmisc_1,905,45 
fof(t72_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (k4_xboole_0(k2_tarski(A, B), C)=k2_tarski(A, B) <=>  ( ~ (r2_hidden(A, C))  &  ~ (r2_hidden(B, C)) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t55_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r1_xboole_0(k2_tarski(A, B), C) & r2_hidden(A, C)) ) ) ) ) ).
fof(t57_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( ( ~ (r2_hidden(A, B))  &  ( ~ (r2_hidden(C, B))  &  ~ (r1_xboole_0(k2_tarski(A, C), B)) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t83_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k4_xboole_0(A, B)=A) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
