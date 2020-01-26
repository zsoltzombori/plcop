fof(l110_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  ( (r1_tarski(A, k2_zfmisc_1(B, C)) &  (r1_tarski(D, k2_zfmisc_1(E, F)) &  (! [G] :  (! [H] :  (r2_hidden(k4_tarski(G, H), A) <=> r2_hidden(k4_tarski(G, H), D)) ) ) ) )  => A=D) ) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d5_tarski, axiom,  (! [A] :  (! [B] : k4_tarski(A, B)=k2_tarski(k2_tarski(A, B), k1_tarski(A))) ) ).
fof(t1_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t84_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( (r1_tarski(A, k2_zfmisc_1(B, C)) &  (r2_hidden(D, A) &  (! [E] :  (! [F] :  ~ ( (r2_hidden(E, B) &  (r2_hidden(F, C) & D=k4_tarski(E, F)) ) ) ) ) ) ) ) ) ) ) ) ).
