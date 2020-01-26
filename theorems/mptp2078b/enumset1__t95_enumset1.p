% Mizar problem: t95_enumset1,enumset1,704,41 
fof(t95_enumset1, conjecture,  (! [A] :  (! [B] : k6_enumset1(A, A, A, A, A, A, A, B)=k2_tarski(A, B)) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k6_enumset1, axiom, $true).
fof(t70_enumset1, axiom,  (! [A] :  (! [B] : k1_enumset1(A, A, B)=k2_tarski(A, B)) ) ).
fof(t93_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] : k6_enumset1(A, A, A, A, A, A, B, C)=k1_enumset1(A, B, C)) ) ) ).
