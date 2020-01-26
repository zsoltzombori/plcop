fof(t159_relat_1, conjecture,  (! [A] :  (! [B] : r1_tarski(k10_xtuple_0(k2_zfmisc_1(A, B)), B)) ) ).
fof(d13_xtuple_0, axiom,  (! [A] :  (! [B] :  (B=k10_xtuple_0(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] : r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(t87_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(A, B), k2_zfmisc_1(C, D)) <=>  (r2_hidden(A, C) & r2_hidden(B, D)) ) ) ) ) ) ).
