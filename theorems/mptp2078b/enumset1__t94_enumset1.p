% Mizar problem: t94_enumset1,enumset1,697,35 
fof(t94_enumset1, conjecture,  (! [A] : k5_enumset1(A, A, A, A, A, A, A)=k1_tarski(A)) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k5_enumset1, axiom, $true).
fof(t69_enumset1, axiom,  (! [A] : k2_tarski(A, A)=k1_tarski(A)) ).
fof(t92_enumset1, axiom,  (! [A] :  (! [B] : k5_enumset1(A, A, A, A, A, A, B)=k2_tarski(A, B)) ) ).
