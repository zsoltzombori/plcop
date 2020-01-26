% Mizar problem: t75_enumset1,enumset1,562,56 
fof(t75_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] : k6_enumset1(A, A, B, C, D, E, F, G)=k5_enumset1(A, B, C, D, E, F, G)) ) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k4_enumset1, axiom, $true).
fof(dt_k5_enumset1, axiom, $true).
fof(dt_k6_enumset1, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(t56_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] : k5_enumset1(A, B, C, D, E, F, G)=k2_xboole_0(k1_tarski(A), k4_enumset1(B, C, D, E, F, G))) ) ) ) ) ) ) ).
fof(t63_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] : k6_enumset1(A, B, C, D, E, F, G, H)=k2_xboole_0(k2_tarski(A, B), k4_enumset1(C, D, E, F, G, H))) ) ) ) ) ) ) ) ).
fof(t69_enumset1, axiom,  (! [A] : k2_tarski(A, A)=k1_tarski(A)) ).
