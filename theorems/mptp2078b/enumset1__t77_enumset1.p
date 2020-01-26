% Mizar problem: t77_enumset1,enumset1,578,29 
fof(t77_enumset1, conjecture,  (! [A] :  (! [B] : k2_enumset1(A, A, A, B)=k2_tarski(A, B)) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(dt_k1_enumset1, axiom, $true).
fof(dt_k2_enumset1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(t70_enumset1, axiom,  (! [A] :  (! [B] : k1_enumset1(A, A, B)=k2_tarski(A, B)) ) ).
fof(t71_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] : k2_enumset1(A, A, B, C)=k1_enumset1(A, B, C)) ) ) ).
