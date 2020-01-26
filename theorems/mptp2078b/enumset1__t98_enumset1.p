% Mizar problem: t98_enumset1,enumset1,720,29 
fof(t98_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] : k1_enumset1(A, B, C)=k1_enumset1(A, C, B)) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(t42_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] : k1_enumset1(A, B, C)=k2_xboole_0(k1_tarski(A), k2_tarski(B, C))) ) ) ).
