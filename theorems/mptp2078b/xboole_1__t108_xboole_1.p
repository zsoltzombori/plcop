% Mizar problem: t108_xboole_1,xboole_1,1410,21 
fof(t108_xboole_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, B) => r1_tarski(k3_xboole_0(A, C), B)) ) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(t17_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(k3_xboole_0(A, B), A)) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
