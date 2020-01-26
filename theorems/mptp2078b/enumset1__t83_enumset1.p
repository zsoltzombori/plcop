% Mizar problem: t83_enumset1,enumset1,620,32 
fof(t83_enumset1, conjecture,  (! [A] :  (! [B] : k3_enumset1(A, A, A, A, B)=k2_tarski(A, B)) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k3_enumset1, axiom, $true).
fof(t70_enumset1, axiom,  (! [A] :  (! [B] : k1_enumset1(A, A, B)=k2_tarski(A, B)) ) ).
fof(t78_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_enumset1(A, A, A, B, C)=k1_enumset1(A, B, C)) ) ) ).
