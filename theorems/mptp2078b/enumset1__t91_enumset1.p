% Mizar problem: t91_enumset1,enumset1,676,32 
fof(t91_enumset1, conjecture,  (! [A] : k4_enumset1(A, A, A, A, A, A)=k1_tarski(A)) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k4_enumset1, axiom, $true).
fof(t69_enumset1, axiom,  (! [A] : k2_tarski(A, A)=k1_tarski(A)) ).
fof(t88_enumset1, axiom,  (! [A] :  (! [B] : k4_enumset1(A, A, A, A, A, B)=k2_tarski(A, B)) ) ).
