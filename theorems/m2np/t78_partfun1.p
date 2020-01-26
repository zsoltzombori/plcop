fof(t78_partfun1, conjecture,  (! [A] :  ( (v4_funct_1(A) &  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (r2_hidden(B, A) & r2_hidden(C, A))  => r1_partfun1(B, C)) ) ) ) ) )  =>  (v1_relat_1(k3_tarski(A)) & v1_funct_1(k3_tarski(A))) ) ) ).
fof(d13_funct_1, axiom,  (! [A] :  (v4_funct_1(A) <=>  (! [B] :  (r2_hidden(B, A) =>  (v1_relat_1(B) & v1_funct_1(B)) ) ) ) ) ).
fof(d1_funct_1, axiom,  (! [A] :  (v1_funct_1(A) <=>  (! [B] :  (! [C] :  (! [D] :  ( (r2_hidden(k4_tarski(B, C), A) & r2_hidden(k4_tarski(B, D), A))  => C=D) ) ) ) ) ) ).
fof(d1_relat_1, axiom,  (! [A] :  (v1_relat_1(A) <=>  (! [B] :  ~ ( (r2_hidden(B, A) &  (! [C] :  (! [D] :  ~ (B=k4_tarski(C, D)) ) ) ) ) ) ) ) ).
fof(d4_tarski, axiom,  (! [A] :  (! [B] :  (B=k3_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(C, D) & r2_hidden(D, A)) ) ) ) ) ) ) ).
fof(t77_partfun1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_relat_1(D) & v1_funct_1(D))  =>  (! [E] :  ( (v1_relat_1(E) & v1_funct_1(E))  =>  ( (r1_partfun1(D, E) &  (r2_hidden(k4_tarski(A, B), D) & r2_hidden(k4_tarski(A, C), E)) )  => B=C) ) ) ) ) ) ) ) ).
