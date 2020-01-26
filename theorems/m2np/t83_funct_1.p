fof(t83_funct_1, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  ( (! [B] : r1_tarski(k8_relat_1(A, k7_relat_1(A, B)), B))  => v2_funct_1(A)) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  ( (r2_hidden(B, k9_xtuple_0(A)) =>  (C=k1_funct_1(A, B) <=> r2_hidden(k4_tarski(B, C), A)) )  &  ( ~ (r2_hidden(B, k9_xtuple_0(A)))  =>  (C=k1_funct_1(A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d4_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(B, k9_xtuple_0(A)) &  (r2_hidden(C, k9_xtuple_0(A)) & k1_funct_1(A, B)=k1_funct_1(A, C)) )  => B=C) ) ) ) ) ) ).
fof(d7_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  (C=k8_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, k9_xtuple_0(A)) & r2_hidden(k1_funct_1(A, D), B)) ) ) ) ) ) ) ) ).
fof(t110_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(A, k7_relat_1(C, B)) <=>  (? [D] :  (r2_hidden(D, k9_xtuple_0(C)) &  (r2_hidden(k4_tarski(D, A), C) & r2_hidden(D, B)) ) ) ) ) ) ) ) ).
