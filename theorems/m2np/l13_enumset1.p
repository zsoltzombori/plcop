fof(l13_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k2_enumset1(A, B, C, D)=k2_xboole_0(k2_tarski(A, B), k2_tarski(C, D))) ) ) ) ).
fof(d2_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (E=k2_enumset1(A, B, C, D) <=>  (! [F] :  (r2_hidden(F, E) <=>  ~ ( ( ~ (F=A)  &  ( ~ (F=B)  &  ( ~ (F=C)  &  ~ (F=D) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
