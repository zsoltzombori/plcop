fof(t138_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r1_tarski(A, B) &  (r1_tarski(B, k2_xboole_0(A, k1_tarski(C))) &  ( ~ (k2_xboole_0(A, k1_tarski(C))=B)  &  ~ (A=B) ) ) ) ) ) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(t135_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r1_tarski(C, k2_xboole_0(A, k1_tarski(B))) &  ( ~ (r2_hidden(B, C))  &  ~ (r1_tarski(C, A)) ) ) ) ) ) ) ).
fof(t137_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(k2_xboole_0(C, k1_tarski(A)), B) <=>  (r2_hidden(A, B) & r1_tarski(C, B)) ) ) ) ) ).
