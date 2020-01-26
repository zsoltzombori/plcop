fof(t75_funct_1, conjecture,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  => r1_tarski(k7_relat_1(B, k8_relat_1(B, A)), A)) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  (C=k7_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (r2_hidden(E, k9_xtuple_0(A)) &  (r2_hidden(E, B) & D=k1_funct_1(A, E)) ) ) ) ) ) ) ) ) ) ).
fof(d7_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  (C=k8_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, k9_xtuple_0(A)) & r2_hidden(k1_funct_1(A, D), B)) ) ) ) ) ) ) ) ).
