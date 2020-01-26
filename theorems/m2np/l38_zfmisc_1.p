fof(l38_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, k2_tarski(B, C)) <=>  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (A=k1_tarski(B))  &  ( ~ (A=k1_tarski(C))  &  ~ (A=k2_tarski(B, C)) ) ) ) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(l37_zfmisc_1, axiom,  (! [A] :  (! [B] :  ~ ( ( ~ (A=k1_tarski(B))  &  ( ~ (A=k1_xboole_0)  &  (! [C] :  ~ ( (r2_hidden(C, A) &  ~ (C=B) ) ) ) ) ) ) ) ) ).
fof(t2_xboole_1, axiom,  (! [A] : r1_tarski(k1_xboole_0, A)) ).
fof(t7_zfmisc_1, axiom,  (! [A] :  (! [B] : r1_tarski(k1_tarski(A), k2_tarski(A, B))) ) ).
