fof(t12_setfam_1, conjecture,  (! [A] :  (! [B] :  (r1_tarski(A, B) => r1_setfam_1(A, B)) ) ) ).
fof(d2_setfam_1, axiom,  (! [A] :  (! [B] :  (r1_setfam_1(A, B) <=>  (! [C] :  ~ ( (r2_hidden(C, A) &  (! [D] :  ~ ( (r2_hidden(D, B) & r1_tarski(C, D)) ) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
