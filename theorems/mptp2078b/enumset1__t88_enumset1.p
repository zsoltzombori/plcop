% Mizar problem: t88_enumset1,enumset1,655,35 
fof(t88_enumset1, conjecture,  (! [A] :  (! [B] : k4_enumset1(A, A, A, A, A, B)=k2_tarski(A, B)) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k4_enumset1, axiom, $true).
fof(t70_enumset1, axiom,  (! [A] :  (! [B] : k1_enumset1(A, A, B)=k2_tarski(A, B)) ) ).
fof(t84_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] : k4_enumset1(A, A, A, A, B, C)=k1_enumset1(A, B, C)) ) ) ).
