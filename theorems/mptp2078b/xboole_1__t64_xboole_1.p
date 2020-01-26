% Mizar problem: t64_xboole_1,xboole_1,908,47 
fof(t64_xboole_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_tarski(A, B) &  (r1_tarski(C, D) & r1_xboole_0(B, D)) )  => r1_xboole_0(A, C)) ) ) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t63_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_xboole_0(B, C))  => r1_xboole_0(A, C)) ) ) ) ).
