fof(t22_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( (r1_tarski(k2_tarski(A, B), k2_tarski(C, D)) &  ( ~ (A=C)  &  ~ (A=D) ) ) ) ) ) ) ) ).
fof(t11_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(k2_xboole_0(A, B), C) => r1_tarski(A, C)) ) ) ) ).
fof(t19_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r1_tarski(k1_tarski(A), k2_tarski(B, C)) &  ( ~ (A=B)  &  ~ (A=C) ) ) ) ) ) ) ).
fof(t1_enumset1, axiom,  (! [A] :  (! [B] : k2_tarski(A, B)=k2_xboole_0(k1_tarski(A), k1_tarski(B))) ) ).
