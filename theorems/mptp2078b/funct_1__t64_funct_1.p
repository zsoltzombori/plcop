% Mizar problem: t64_funct_1,funct_1,1238,65 
fof(t64_funct_1, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v2_funct_1(A) &  (k2_relat_1(B)=k1_relat_1(A) & k5_relat_1(B, A)=k6_relat_1(k2_relat_1(A))) )  => B=k2_funct_1(A)) ) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k2_funct_1(A)) & v1_funct_1(k2_funct_1(A))) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(l72_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (! [D] :  ( (v1_relat_1(D) & v1_funct_1(D))  =>  ( (k2_relat_1(B)=A &  (k5_relat_1(B, C)=k6_relat_1(k1_relat_1(D)) & k5_relat_1(C, D)=k6_relat_1(A)) )  => D=B) ) ) ) ) ) ) ) ).
fof(t55_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (k2_relat_1(A)=k1_relat_1(k2_funct_1(A)) & k1_relat_1(A)=k2_relat_1(k2_funct_1(A))) ) ) ) ).
fof(t61_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (k5_relat_1(A, k2_funct_1(A))=k6_relat_1(k1_relat_1(A)) & k5_relat_1(k2_funct_1(A), A)=k6_relat_1(k2_relat_1(A))) ) ) ) ).
