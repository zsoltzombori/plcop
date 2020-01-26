fof(t91_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (k2_zfmisc_1(A, B)=k2_zfmisc_1(B, A) =>  (A=k1_xboole_0 |  (B=k1_xboole_0 | A=B) ) ) ) ) ).
fof(l46_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(A, B), k2_zfmisc_1(C, D)) <=>  (r2_hidden(A, C) & r2_hidden(B, D)) ) ) ) ) ) ).
fof(t1_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t7_xboole_0, axiom,  (! [A] :  ~ ( ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ) ).
