% Mizar problem: t7_mcart_1,mcart_1,463,26 
fof(t7_mcart_1, conjecture,  (! [A] :  (! [B] :  (k1_mcart_1(k4_tarski(A, B))=A & k2_mcart_1(k4_tarski(A, B))=B) ) ) ).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(d1_mcart_1, axiom,  (! [A] :  ( (? [B] :  (? [C] : A=k4_tarski(B, C)) )  =>  (! [B] :  (B=k1_mcart_1(A) <=>  (! [C] :  (! [D] :  (A=k4_tarski(C, D) => B=C) ) ) ) ) ) ) ).
fof(d2_mcart_1, axiom,  (! [A] :  ( (? [B] :  (? [C] : A=k4_tarski(B, C)) )  =>  (! [B] :  (B=k2_mcart_1(A) <=>  (! [C] :  (! [D] :  (A=k4_tarski(C, D) => B=D) ) ) ) ) ) ) ).
