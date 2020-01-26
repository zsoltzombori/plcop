fof(t17_zfmisc_1, conjecture,  (! [A] :  (! [B] :  ( ~ (A=B)  => k4_xboole_0(k2_tarski(A, B), k1_tarski(B))=k1_tarski(A)) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(l31_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (k4_xboole_0(k2_tarski(A, B), C)=k1_tarski(A) <=>  ( ~ (r2_hidden(A, C))  &  (r2_hidden(B, C) | A=B) ) ) ) ) ) ).
