% Mizar problem: t58_xboole_1,xboole_1,860,30 
fof(t58_xboole_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (r2_xboole_0(A, B) & r1_tarski(B, C))  => r2_xboole_0(A, C)) ) ) ) ).
fof(antisymmetry_r2_xboole_0, axiom,  (! [A, B] :  (r2_xboole_0(A, B) =>  ~ (r2_xboole_0(B, A)) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d8_xboole_0, axiom,  (! [A] :  (! [B] :  (r2_xboole_0(A, B) <=>  (r1_tarski(A, B) &  ~ (A=B) ) ) ) ) ).
fof(irreflexivity_r2_xboole_0, axiom,  (! [A, B] :  ~ (r2_xboole_0(A, A)) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
