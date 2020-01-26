fof(t6_setfam_1, conjecture,  (! [A] :  (! [B] :  (r1_tarski(A, B) =>  (A=k1_xboole_0 | r1_tarski(k1_setfam_1(B), k1_setfam_1(A))) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(t3_setfam_1, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => r1_tarski(k1_setfam_1(B), A)) ) ) ).
fof(t5_setfam_1, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) => r1_tarski(B, C)) )  =>  (A=k1_xboole_0 | r1_tarski(B, k1_setfam_1(A))) ) ) ) ).
