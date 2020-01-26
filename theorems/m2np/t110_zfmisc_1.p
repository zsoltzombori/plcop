fof(t110_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (k2_zfmisc_1(A, B)=k2_zfmisc_1(C, D) =>  (A=k1_xboole_0 |  (B=k1_xboole_0 |  (A=C & B=D) ) ) ) ) ) ) ) ).
fof(d5_tarski, axiom,  (! [A] :  (! [B] : k4_tarski(A, B)=k2_tarski(k2_tarski(A, B), k1_tarski(A))) ) ).
fof(l46_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(A, B), k2_zfmisc_1(C, D)) <=>  (r2_hidden(A, C) & r2_hidden(B, D)) ) ) ) ) ) ).
fof(t1_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t7_xboole_0, axiom,  (! [A] :  ~ ( ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ) ).
fof(t90_zfmisc_1, axiom,  (! [A] :  (! [B] :  (k2_zfmisc_1(A, B)=k1_xboole_0 <=>  (A=k1_xboole_0 | B=k1_xboole_0) ) ) ) ).
