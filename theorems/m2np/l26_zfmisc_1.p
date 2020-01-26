fof(l26_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (k4_xboole_0(k1_tarski(A), B)=k1_tarski(A) <=>  ~ (r2_hidden(A, B)) ) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).
fof(t83_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k4_xboole_0(A, B)=A) ) ) ).
