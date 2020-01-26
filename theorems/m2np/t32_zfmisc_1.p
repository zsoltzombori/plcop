fof(t32_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(k2_tarski(A, B), C) <=>  (r2_hidden(A, C) & r2_hidden(B, C)) ) ) ) ) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
