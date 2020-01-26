fof(t130_zfmisc_1, conjecture,  (! [A] :  (! [B] :  ( (r1_tarski(A, B) & v1_zfmisc_1(B))  => v1_zfmisc_1(A)) ) ) ).
fof(d10_zfmisc_1, axiom,  (! [A] :  (v1_zfmisc_1(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(B, A) & r2_hidden(C, A))  => B=C) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
