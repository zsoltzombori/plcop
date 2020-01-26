% Mizar problem: t132_enumset1,enumset1,941,72 
fof(t132_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] :  (! [I] : k7_enumset1(A, B, C, D, E, F, G, H, I)=k2_xboole_0(k4_enumset1(A, B, C, D, E, F), k1_enumset1(G, H, I))) ) ) ) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k2_enumset1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_enumset1, axiom, $true).
fof(dt_k4_enumset1, axiom, $true).
fof(dt_k7_enumset1, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(l142_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] :  (! [I] : k7_enumset1(A, B, C, D, E, F, G, H, I)=k2_xboole_0(k2_enumset1(A, B, C, D), k3_enumset1(E, F, G, H, I))) ) ) ) ) ) ) ) ) ).
fof(t48_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] : k3_enumset1(A, B, C, D, E)=k2_xboole_0(k2_tarski(A, B), k1_enumset1(C, D, E))) ) ) ) ) ).
fof(t4_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k2_xboole_0(k2_xboole_0(A, B), C)=k2_xboole_0(A, k2_xboole_0(B, C))) ) ) ).
fof(t54_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] : k4_enumset1(A, B, C, D, E, F)=k2_xboole_0(k2_enumset1(A, B, C, D), k2_tarski(E, F))) ) ) ) ) ) ).
