% Mizar problem: t59_xboole_1,xboole_1,870,35 
fof(t59_xboole_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r2_xboole_0(B, C))  => r2_xboole_0(A, C)) ) ) ) ).
fof(irreflexivity_r2_xboole_0, axiom,  (! [A, B] :  ~ (r2_xboole_0(A, A)) ) ).
fof(antisymmetry_r2_xboole_0, axiom,  (! [A, B] :  (r2_xboole_0(A, B) =>  ~ (r2_xboole_0(B, A)) ) ) ).
fof(l58_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r2_xboole_0(B, C))  => r2_xboole_0(A, C)) ) ) ) ).
