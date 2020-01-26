% Mizar problem: t8_mcart_1,mcart_1,466,38 
fof(t8_mcart_1, conjecture,  (! [A] :  ( (? [B] :  (? [C] : A=k4_tarski(B, C)) )  => k4_tarski(k1_mcart_1(A), k2_mcart_1(A))=A) ) ).
fof(d1_mcart_1, axiom,  (! [A] :  ( (? [B] :  (? [C] : A=k4_tarski(B, C)) )  =>  (! [B] :  (B=k1_mcart_1(A) <=>  (! [C] :  (! [D] :  (A=k4_tarski(C, D) => B=C) ) ) ) ) ) ) ).
fof(d2_mcart_1, axiom,  (! [A] :  ( (? [B] :  (? [C] : A=k4_tarski(B, C)) )  =>  (! [B] :  (B=k2_mcart_1(A) <=>  (! [C] :  (! [D] :  (A=k4_tarski(C, D) => B=D) ) ) ) ) ) ) ).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
