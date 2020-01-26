% Mizar problem: t104_xboole_1,xboole_1,1362,53 
fof(t104_xboole_1, conjecture,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r2_xboole_0(A, B))  &  ( ~ (A=B)  &  ~ (r2_xboole_0(B, A)) ) ) )  <=> r3_xboole_0(A, B)) ) ) ).
fof(antisymmetry_r2_xboole_0, axiom,  (! [A, B] :  (r2_xboole_0(A, B) =>  ~ (r2_xboole_0(B, A)) ) ) ).
fof(d8_xboole_0, axiom,  (! [A] :  (! [B] :  (r2_xboole_0(A, B) <=>  (r1_tarski(A, B) &  ~ (A=B) ) ) ) ) ).
fof(d9_xboole_0, axiom,  (! [A] :  (! [B] :  (r3_xboole_0(A, B) <=>  (r1_tarski(A, B) | r1_tarski(B, A)) ) ) ) ).
fof(irreflexivity_r2_xboole_0, axiom,  (! [A, B] :  ~ (r2_xboole_0(A, A)) ) ).
fof(reflexivity_r3_xboole_0, axiom,  (! [A, B] : r3_xboole_0(A, A)) ).
fof(symmetry_r3_xboole_0, axiom,  (! [A, B] :  (r3_xboole_0(A, B) => r3_xboole_0(B, A)) ) ).
