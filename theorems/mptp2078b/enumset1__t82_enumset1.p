% Mizar problem: t82_enumset1,enumset1,613,26 
fof(t82_enumset1, conjecture,  (! [A] : k2_enumset1(A, A, A, A)=k1_tarski(A)) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_enumset1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(t69_enumset1, axiom,  (! [A] : k2_tarski(A, A)=k1_tarski(A)) ).
fof(t77_enumset1, axiom,  (! [A] :  (! [B] : k2_enumset1(A, A, A, B)=k2_tarski(A, B)) ) ).
