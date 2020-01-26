fof(t95_funct_1, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (r1_tarski(C, k9_xtuple_0(A)) & r1_tarski(C, k9_xtuple_0(B)))  =>  (k5_relat_1(A, C)=k5_relat_1(B, C) <=>  (! [D] :  (r2_hidden(D, C) => k1_funct_1(A, D)=k1_funct_1(B, D)) ) ) ) ) ) ) ) ) ).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(fc8_funct_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k5_relat_1(A, B)) & v1_funct_1(k5_relat_1(A, B))) ) ) ).
fof(t2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (k9_xtuple_0(A)=k9_xtuple_0(B) &  (! [C] :  (r2_hidden(C, k9_xtuple_0(A)) => k1_funct_1(A, C)=k1_funct_1(B, C)) ) )  => A=B) ) ) ) ) ).
fof(t47_funct_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, k9_xtuple_0(k5_relat_1(C, B))) => k1_funct_1(k5_relat_1(C, B), A)=k1_funct_1(C, A)) ) ) ) ) ).
fof(t49_funct_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, B) => k1_funct_1(k5_relat_1(C, B), A)=k1_funct_1(C, A)) ) ) ) ) ).
fof(t62_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, k9_xtuple_0(B)) => k9_xtuple_0(k5_relat_1(B, A))=A) ) ) ) ).
