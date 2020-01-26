fof(t26_mcart_1, conjecture,  (! [A] :  ~ ( ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ ( (r2_hidden(B, A) &  (! [C] :  (! [D] :  (! [E] :  ~ ( ( (r2_hidden(C, A) | r2_hidden(D, A))  & B=k3_xtuple_0(C, D, E)) ) ) ) ) ) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d4_xtuple_0, axiom,  (! [A] :  (! [B] :  (! [C] : k3_xtuple_0(A, B, C)=k4_tarski(k4_tarski(A, B), C)) ) ) ).
fof(d5_tarski, axiom,  (! [A] :  (! [B] : k4_tarski(A, B)=k2_tarski(k2_tarski(A, B), k1_tarski(A))) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).
fof(t4_xregular, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (r2_hidden(B, A) &  (! [C] :  (! [D] :  (! [E] :  ( (r2_hidden(C, D) &  (r2_hidden(D, E) & r2_hidden(E, B)) )  => r1_xboole_0(C, A)) ) ) ) ) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
