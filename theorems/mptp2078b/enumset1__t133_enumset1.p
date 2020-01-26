% Mizar problem: t133_enumset1,enumset1,951,72 
fof(t133_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] :  (! [I] : k7_enumset1(A, B, C, D, E, F, G, H, I)=k2_xboole_0(k5_enumset1(A, B, C, D, E, F, G), k2_tarski(H, I))) ) ) ) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k2_enumset1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_enumset1, axiom, $true).
fof(dt_k5_enumset1, axiom, $true).
fof(dt_k7_enumset1, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(l142_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] :  (! [I] : k7_enumset1(A, B, C, D, E, F, G, H, I)=k2_xboole_0(k2_enumset1(A, B, C, D), k3_enumset1(E, F, G, H, I))) ) ) ) ) ) ) ) ) ).
fof(l57_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] : k3_enumset1(A, B, C, D, E)=k2_xboole_0(k1_enumset1(A, B, C), k2_tarski(D, E))) ) ) ) ) ).
fof(l68_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] : k5_enumset1(A, B, C, D, E, F, G)=k2_xboole_0(k2_enumset1(A, B, C, D), k1_enumset1(E, F, G))) ) ) ) ) ) ) ).
fof(t4_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k2_xboole_0(k2_xboole_0(A, B), C)=k2_xboole_0(A, k2_xboole_0(B, C))) ) ) ).
