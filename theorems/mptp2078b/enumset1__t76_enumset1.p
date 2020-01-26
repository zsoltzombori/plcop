% Mizar problem: t76_enumset1,enumset1,571,23 
fof(t76_enumset1, conjecture,  (! [A] : k1_enumset1(A, A, A)=k1_tarski(A)) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(t69_enumset1, axiom,  (! [A] : k2_tarski(A, A)=k1_tarski(A)) ).
fof(t70_enumset1, axiom,  (! [A] :  (! [B] : k1_enumset1(A, A, B)=k2_tarski(A, B)) ) ).
