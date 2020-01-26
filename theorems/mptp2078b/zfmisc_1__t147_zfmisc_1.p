% Mizar problem: t147_zfmisc_1,zfmisc_1,2238,51 
fof(t147_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( ~ (A=B)  => k4_xboole_0(k2_xboole_0(C, k1_tarski(A)), k1_tarski(B))=k2_xboole_0(k4_xboole_0(C, k1_tarski(B)), k1_tarski(A))) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(t17_zfmisc_1, axiom,  (! [A] :  (! [B] :  ( ~ (A=B)  => r1_xboole_0(k1_tarski(A), k1_tarski(B))) ) ) ).
fof(t87_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_xboole_0(A, B) => k2_xboole_0(k4_xboole_0(C, A), B)=k4_xboole_0(k2_xboole_0(C, B), A)) ) ) ) ).
