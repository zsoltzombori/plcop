fof(t16_setfam_1, conjecture,  (! [A] :  (r1_setfam_1(A, k1_xboole_0) => A=k1_xboole_0) ) ).
fof(d2_setfam_1, axiom,  (! [A] :  (! [B] :  (r1_setfam_1(A, B) <=>  (! [C] :  ~ ( (r2_hidden(C, A) &  (! [D] :  ~ ( (r2_hidden(D, B) & r1_tarski(C, D)) ) ) ) ) ) ) ) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_xboole_0, axiom,  (! [A] :  ~ ( ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ) ).
