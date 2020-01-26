% Mizar problem: t55_enumset1,enumset1,371,54 
fof(t55_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] : k4_enumset1(A, B, C, D, E, F)=k2_xboole_0(k3_enumset1(A, B, C, D, E), k1_tarski(F))) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_enumset1, axiom, $true).
fof(dt_k4_enumset1, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(l57_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] : k3_enumset1(A, B, C, D, E)=k2_xboole_0(k1_enumset1(A, B, C), k2_tarski(D, E))) ) ) ) ) ).
fof(l62_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] : k4_enumset1(A, B, C, D, E, F)=k2_xboole_0(k1_enumset1(A, B, C), k1_enumset1(D, E, F))) ) ) ) ) ) ).
fof(t43_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] : k1_enumset1(A, B, C)=k2_xboole_0(k2_tarski(A, B), k1_tarski(C))) ) ) ).
fof(t4_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k2_xboole_0(k2_xboole_0(A, B), C)=k2_xboole_0(A, k2_xboole_0(B, C))) ) ) ).
