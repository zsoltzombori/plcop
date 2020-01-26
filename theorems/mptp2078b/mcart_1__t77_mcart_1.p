% Mizar problem: t77_mcart_1,mcart_1,1575,6 
fof(t77_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  ( (r1_tarski(A, B) &  (r1_tarski(C, D) & r1_tarski(E, F)) )  => r1_tarski(k3_zfmisc_1(A, C, E), k3_zfmisc_1(B, D, F))) ) ) ) ) ) ) ).
fof(d3_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_zfmisc_1(A, B, C)=k2_zfmisc_1(k2_zfmisc_1(A, B), C)) ) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_zfmisc_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t119_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_tarski(k2_zfmisc_1(A, C), k2_zfmisc_1(B, D))) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
