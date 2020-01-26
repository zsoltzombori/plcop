% Mizar problem: t28_mcart_1,mcart_1,676,58 
fof(t28_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (k3_mcart_1(A, B, C)=k3_mcart_1(D, E, F) =>  (A=D &  (B=E & C=F) ) ) ) ) ) ) ) ) ).
fof(d3_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_mcart_1(A, B, C)=k4_tarski(k4_tarski(A, B), C)) ) ) ).
fof(dt_k3_mcart_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(t33_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (k4_tarski(A, B)=k4_tarski(C, D) =>  (A=C & B=D) ) ) ) ) ) ).
