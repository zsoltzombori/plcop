% Mizar problem: t88_mcart_1,mcart_1,1745,23 
fof(t88_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] :  ( (r1_tarski(A, B) &  (r1_tarski(C, D) &  (r1_tarski(E, F) & r1_tarski(G, H)) ) )  => r1_tarski(k4_zfmisc_1(A, C, E, G), k4_zfmisc_1(B, D, F, H))) ) ) ) ) ) ) ) ) ).
fof(d4_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k4_zfmisc_1(A, B, C, D)=k2_zfmisc_1(k3_zfmisc_1(A, B, C), D)) ) ) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_zfmisc_1, axiom, $true).
fof(dt_k4_zfmisc_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t119_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_tarski(k2_zfmisc_1(A, C), k2_zfmisc_1(B, D))) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t77_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  ( (r1_tarski(A, B) &  (r1_tarski(C, D) & r1_tarski(E, F)) )  => r1_tarski(k3_zfmisc_1(A, C, E), k3_zfmisc_1(B, D, F))) ) ) ) ) ) ) ).
