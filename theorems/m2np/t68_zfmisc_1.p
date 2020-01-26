fof(t68_zfmisc_1, conjecture,  (! [A] : r1_tarski(k1_tarski(A), k1_zfmisc_1(A))) ).
fof(d1_zfmisc_1, axiom,  (! [A] :  (! [B] :  (B=k1_zfmisc_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=> r1_tarski(C, A)) ) ) ) ) ).
fof(l1_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
