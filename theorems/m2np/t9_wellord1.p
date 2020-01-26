fof(t9_wellord1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k1_wellord1(B, A), k1_relat_1(B))) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(t15_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(k4_tarski(A, B), C) =>  (r2_hidden(A, k1_relat_1(C)) & r2_hidden(B, k1_relat_1(C))) ) ) ) ) ) ).
fof(t1_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(A, k1_wellord1(C, B)) <=>  ( ~ (A=B)  & r2_hidden(k4_tarski(A, B), C)) ) ) ) ) ) ).
