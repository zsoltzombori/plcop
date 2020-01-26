% Mizar problem: t109_xboole_1,xboole_1,1417,20 
fof(t109_xboole_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, B) => r1_tarski(k4_xboole_0(A, C), B)) ) ) ) ).
fof(dt_k4_xboole_0, axiom, $true).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t36_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(k4_xboole_0(A, B), A)) ) ).
