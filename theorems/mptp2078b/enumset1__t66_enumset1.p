% Mizar problem: t66_enumset1,enumset1,484,66 
fof(t66_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] : k6_enumset1(A, B, C, D, E, F, G, H)=k2_xboole_0(k3_enumset1(A, B, C, D, E), k1_enumset1(F, G, H))) ) ) ) ) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_enumset1, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_enumset1, axiom, $true).
fof(dt_k6_enumset1, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(l75_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] : k6_enumset1(A, B, C, D, E, F, G, H)=k2_xboole_0(k2_enumset1(A, B, C, D), k2_enumset1(E, F, G, H))) ) ) ) ) ) ) ) ).
fof(t44_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k2_enumset1(A, B, C, D)=k2_xboole_0(k1_tarski(A), k1_enumset1(B, C, D))) ) ) ) ).
fof(t4_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k2_xboole_0(k2_xboole_0(A, B), C)=k2_xboole_0(A, k2_xboole_0(B, C))) ) ) ).
fof(t50_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] : k3_enumset1(A, B, C, D, E)=k2_xboole_0(k2_enumset1(A, B, C, D), k1_tarski(E))) ) ) ) ) ).
