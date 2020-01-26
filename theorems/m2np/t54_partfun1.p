fof(t54_partfun1, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_tarski(A, B) => r1_partfun1(A, B)) ) ) ) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t52_partfun1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_partfun1(A, B) <=>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  &  (r1_tarski(A, C) & r1_tarski(B, C)) ) ) ) ) ) ) ) ).
