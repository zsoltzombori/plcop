fof(t21_setfam_1, conjecture,  (! [A] : r1_setfam_1(k3_setfam_1(A, A), A)) ).
fof(d2_setfam_1, axiom,  (! [A] :  (! [B] :  (r1_setfam_1(A, B) <=>  (! [C] :  ~ ( (r2_hidden(C, A) &  (! [D] :  ~ ( (r2_hidden(D, B) & r1_tarski(C, D)) ) ) ) ) ) ) ) ) ).
fof(d5_setfam_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_setfam_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (? [F] :  (r2_hidden(E, A) &  (r2_hidden(F, B) & D=k3_xboole_0(E, F)) ) ) ) ) ) ) ) ) ) ).
fof(t17_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(k3_xboole_0(A, B), A)) ) ).
