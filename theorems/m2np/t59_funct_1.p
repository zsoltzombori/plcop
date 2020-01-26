fof(t59_funct_1, conjecture,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r2_hidden(A, k9_xtuple_0(B)) => k9_relat_1(B, A)=k1_tarski(k1_funct_1(B, A))) ) ) ) ).
fof(d16_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] : k9_relat_1(A, B)=k7_relat_1(A, k1_tarski(B))) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  (C=k7_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (r2_hidden(E, k9_xtuple_0(A)) &  (r2_hidden(E, B) & D=k1_funct_1(A, E)) ) ) ) ) ) ) ) ) ) ).
