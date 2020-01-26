fof(t20_mcart_1, conjecture,  (! [A] :  ( (? [B] :  (? [C] : A=k4_tarski(B, C)) )  =>  ( ~ (A=k1_xtuple_0(A))  &  ~ (A=k2_xtuple_0(A)) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d5_tarski, axiom,  (! [A] :  (! [B] : k4_tarski(A, B)=k2_tarski(k2_tarski(A, B), k1_tarski(A))) ) ).
fof(rd1_xtuple_0, axiom,  (! [A, B] : k1_xtuple_0(k4_tarski(A, B))=A) ).
fof(rd2_xtuple_0, axiom,  (! [A, B] : k2_xtuple_0(k4_tarski(A, B))=B) ).
