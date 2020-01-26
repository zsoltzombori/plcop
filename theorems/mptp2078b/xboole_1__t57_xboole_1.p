% Mizar problem: t57_xboole_1,xboole_1,857,23 
fof(t57_xboole_1, conjecture,  (! [A] :  (! [B] :  ~ ( (r2_xboole_0(A, B) & r2_xboole_0(B, A)) ) ) ) ).
fof(irreflexivity_r2_xboole_0, axiom,  (! [A, B] :  ~ (r2_xboole_0(A, A)) ) ).
fof(antisymmetry_r2_xboole_0, axiom,  (! [A, B] :  (r2_xboole_0(A, B) =>  ~ (r2_xboole_0(B, A)) ) ) ).
