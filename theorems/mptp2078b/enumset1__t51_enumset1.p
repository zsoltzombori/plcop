% Mizar problem: t51_enumset1,enumset1,341,54 
fof(t51_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] : k4_enumset1(A, B, C, D, E, F)=k2_xboole_0(k1_tarski(A), k3_enumset1(B, C, D, E, F))) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_enumset1, axiom, $true).
fof(dt_k4_enumset1, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(l62_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] : k4_enumset1(A, B, C, D, E, F)=k2_xboole_0(k1_enumset1(A, B, C), k1_enumset1(D, E, F))) ) ) ) ) ) ).
fof(t42_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] : k1_enumset1(A, B, C)=k2_xboole_0(k1_tarski(A), k2_tarski(B, C))) ) ) ).
fof(t48_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] : k3_enumset1(A, B, C, D, E)=k2_xboole_0(k2_tarski(A, B), k1_enumset1(C, D, E))) ) ) ) ) ).
fof(t4_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k2_xboole_0(k2_xboole_0(A, B), C)=k2_xboole_0(A, k2_xboole_0(B, C))) ) ) ).
