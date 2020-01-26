fof(t2_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] : k1_enumset1(A, B, C)=k2_xboole_0(k1_tarski(A), k2_tarski(B, C))) ) ) ).
fof(d1_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (D=k1_enumset1(A, B, C) <=>  (! [E] :  (r2_hidden(E, D) <=>  ~ ( ( ~ (E=A)  &  ( ~ (E=B)  &  ~ (E=C) ) ) ) ) ) ) ) ) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
