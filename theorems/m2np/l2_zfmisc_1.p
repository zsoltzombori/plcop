fof(l2_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, B) =>  (r2_hidden(C, A) | r1_tarski(A, k4_xboole_0(B, k1_tarski(C)))) ) ) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
