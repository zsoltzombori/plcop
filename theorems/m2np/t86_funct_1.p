fof(t86_funct_1, conjecture,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (! [D] :  ( (v1_relat_1(D) & v1_funct_1(D))  =>  ( (A=k10_xtuple_0(B) &  (k9_xtuple_0(C)=A &  (k9_xtuple_0(D)=A & k3_relat_1(B, C)=k3_relat_1(B, D)) ) )  => C=D) ) ) ) ) ) ) ) ).
fof(d3_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k10_xtuple_0(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k9_xtuple_0(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(t13_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, k9_xtuple_0(B)) => k1_funct_1(k3_relat_1(B, C), A)=k1_funct_1(C, k1_funct_1(B, A))) ) ) ) ) ) ).
fof(t2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (k9_xtuple_0(A)=k9_xtuple_0(B) &  (! [C] :  (r2_hidden(C, k9_xtuple_0(A)) => k1_funct_1(A, C)=k1_funct_1(B, C)) ) )  => A=B) ) ) ) ) ).