% Mizar problem: t88_xboole_1,xboole_1,1216,26 
fof(t88_xboole_1, conjecture,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) => k4_xboole_0(k2_xboole_0(A, B), B)=A) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(l32_xboole_1, axiom,  (! [A] :  (! [B] :  (k4_xboole_0(A, B)=k1_xboole_0 <=> r1_tarski(A, B)) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t42_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k4_xboole_0(k2_xboole_0(A, B), C)=k2_xboole_0(k4_xboole_0(A, C), k4_xboole_0(B, C))) ) ) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t83_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k4_xboole_0(A, B)=A) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
