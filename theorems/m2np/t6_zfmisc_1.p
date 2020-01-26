fof(t6_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( (k2_tarski(A, B)=k2_tarski(C, D) &  ( ~ (A=C)  &  ~ (A=D) ) ) ) ) ) ) ) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
