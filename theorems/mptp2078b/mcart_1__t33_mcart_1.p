% Mizar problem: t33_mcart_1,mcart_1,728,11 
fof(t33_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] :  (k4_mcart_1(A, B, C, D)=k4_mcart_1(E, F, G, H) =>  (A=E &  (B=F &  (C=G & D=H) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d4_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k4_mcart_1(A, B, C, D)=k4_tarski(k3_mcart_1(A, B, C), D)) ) ) ) ).
fof(dt_k3_mcart_1, axiom, $true).
fof(dt_k4_mcart_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(t28_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (k3_mcart_1(A, B, C)=k3_mcart_1(D, E, F) =>  (A=D &  (B=E & C=F) ) ) ) ) ) ) ) ) ).
fof(t33_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (k4_tarski(A, B)=k4_tarski(C, D) =>  (A=C & B=D) ) ) ) ) ) ).
