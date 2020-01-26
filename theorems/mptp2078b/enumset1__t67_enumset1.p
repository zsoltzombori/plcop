% Mizar problem: t67_enumset1,enumset1,493,66 
fof(t67_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] : k6_enumset1(A, B, C, D, E, F, G, H)=k2_xboole_0(k4_enumset1(A, B, C, D, E, F), k2_tarski(G, H))) ) ) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k2_enumset1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k4_enumset1, axiom, $true).
fof(dt_k6_enumset1, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(l53_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k2_enumset1(A, B, C, D)=k2_xboole_0(k2_tarski(A, B), k2_tarski(C, D))) ) ) ) ).
fof(l75_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] : k6_enumset1(A, B, C, D, E, F, G, H)=k2_xboole_0(k2_enumset1(A, B, C, D), k2_enumset1(E, F, G, H))) ) ) ) ) ) ) ) ).
fof(t4_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k2_xboole_0(k2_xboole_0(A, B), C)=k2_xboole_0(A, k2_xboole_0(B, C))) ) ) ).
fof(t54_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] : k4_enumset1(A, B, C, D, E, F)=k2_xboole_0(k2_enumset1(A, B, C, D), k2_tarski(E, F))) ) ) ) ) ) ).
