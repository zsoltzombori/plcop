% Mizar problem: t104_enumset1,enumset1,758,35 
fof(t104_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k2_enumset1(A, B, C, D)=k2_enumset1(A, C, B, D)) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_enumset1, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(t44_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k2_enumset1(A, B, C, D)=k2_xboole_0(k1_tarski(A), k1_enumset1(B, C, D))) ) ) ) ).
fof(t99_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] : k1_enumset1(A, B, C)=k1_enumset1(B, A, C)) ) ) ).
