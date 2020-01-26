fof(l3_wellord1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (v4_relat_2(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(k4_tarski(B, C), A) & r2_hidden(k4_tarski(C, B), A))  => B=C) ) ) ) ) ) ).
fof(d12_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (v4_relat_2(A) <=> r4_relat_2(A, k1_relat_1(A))) ) ) ).
fof(d4_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r4_relat_2(A, B) <=>  (! [C] :  (! [D] :  ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  (r2_hidden(k4_tarski(C, D), A) & r2_hidden(k4_tarski(D, C), A)) ) )  => C=D) ) ) ) ) ) ) ).
fof(t15_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(k4_tarski(A, B), C) =>  (r2_hidden(A, k1_relat_1(C)) & r2_hidden(B, k1_relat_1(C))) ) ) ) ) ) ).
