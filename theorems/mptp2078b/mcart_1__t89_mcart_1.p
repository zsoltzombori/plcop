% Mizar problem: t89_mcart_1,mcart_1,1854,8 
fof(t89_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (k17_mcart_1(k4_tarski(k4_tarski(A, B), C))=A &  (k18_mcart_1(k4_tarski(k4_tarski(A, B), C))=B &  (k19_mcart_1(k4_tarski(F, k4_tarski(D, E)))=D & k20_mcart_1(k4_tarski(F, k4_tarski(D, E)))=E) ) ) ) ) ) ) ) ) ).
fof(d14_mcart_1, axiom,  (! [A] : k17_mcart_1(A)=k1_mcart_1(k1_mcart_1(A))) ).
fof(d15_mcart_1, axiom,  (! [A] : k18_mcart_1(A)=k2_mcart_1(k1_mcart_1(A))) ).
fof(d16_mcart_1, axiom,  (! [A] : k19_mcart_1(A)=k1_mcart_1(k2_mcart_1(A))) ).
fof(d17_mcart_1, axiom,  (! [A] : k20_mcart_1(A)=k2_mcart_1(k2_mcart_1(A))) ).
fof(d1_mcart_1, axiom,  (! [A] :  ( (? [B] :  (? [C] : A=k4_tarski(B, C)) )  =>  (! [B] :  (B=k1_mcart_1(A) <=>  (! [C] :  (! [D] :  (A=k4_tarski(C, D) => B=C) ) ) ) ) ) ) ).
fof(d2_mcart_1, axiom,  (! [A] :  ( (? [B] :  (? [C] : A=k4_tarski(B, C)) )  =>  (! [B] :  (B=k2_mcart_1(A) <=>  (! [C] :  (! [D] :  (A=k4_tarski(C, D) => B=D) ) ) ) ) ) ) ).
fof(dt_k17_mcart_1, axiom, $true).
fof(dt_k18_mcart_1, axiom, $true).
fof(dt_k19_mcart_1, axiom, $true).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k20_mcart_1, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
