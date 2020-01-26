fof(t14_setfam_1, conjecture,  (! [A] :  (! [B] :  (r2_setfam_1(B, A) =>  (A=k1_xboole_0 | r1_tarski(k1_setfam_1(B), k1_setfam_1(A))) ) ) ) ).
fof(d3_setfam_1, axiom,  (! [A] :  (! [B] :  (r2_setfam_1(A, B) <=>  (! [C] :  ~ ( (r2_hidden(C, B) &  (! [D] :  ~ ( (r2_hidden(D, A) & r1_tarski(D, C)) ) ) ) ) ) ) ) ) ).
fof(t5_setfam_1, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) => r1_tarski(B, C)) )  =>  (A=k1_xboole_0 | r1_tarski(B, k1_setfam_1(A))) ) ) ) ).
fof(t7_setfam_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & r1_tarski(A, C))  => r1_tarski(k1_setfam_1(B), C)) ) ) ) ).
