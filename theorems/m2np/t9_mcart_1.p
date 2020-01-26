fof(t9_mcart_1, conjecture,  (! [A] :  ~ ( ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ ( (r2_hidden(B, A) &  (! [C] :  (! [D] :  ~ ( ( (r2_hidden(C, A) | r2_hidden(D, A))  & B=k4_tarski(C, D)) ) ) ) ) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d5_tarski, axiom,  (! [A] :  (! [B] : k4_tarski(A, B)=k2_tarski(k2_tarski(A, B), k1_tarski(A))) ) ).
fof(t2_xregular, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (r2_hidden(B, A) &  (! [C] :  (r2_hidden(C, B) => r1_xboole_0(C, A)) ) ) ) ) ) ).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
