fof(t29_zfmisc_1, conjecture,  (! [A] :  (! [B] : k2_zfmisc_1(k1_tarski(A), k1_tarski(B))=k1_tarski(k4_tarski(A, B))) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d2_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_zfmisc_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (? [F] :  (r2_hidden(E, A) &  (r2_hidden(F, B) & D=k4_tarski(E, F)) ) ) ) ) ) ) ) ) ) ).
