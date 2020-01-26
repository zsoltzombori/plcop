% Mizar problem: t65_funct_1,funct_1,1248,29 
fof(t65_funct_1, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) => k2_funct_1(k2_funct_1(A))=A) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k2_funct_1(A)) & v1_funct_1(k2_funct_1(A))) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(t55_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (k2_relat_1(A)=k1_relat_1(k2_funct_1(A)) & k1_relat_1(A)=k2_relat_1(k2_funct_1(A))) ) ) ) ).
fof(t61_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (k5_relat_1(A, k2_funct_1(A))=k6_relat_1(k1_relat_1(A)) & k5_relat_1(k2_funct_1(A), A)=k6_relat_1(k2_relat_1(A))) ) ) ) ).
fof(t63_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v2_funct_1(A) &  (k2_relat_1(A)=k1_relat_1(B) & k5_relat_1(A, B)=k6_relat_1(k1_relat_1(A))) )  => B=k2_funct_1(A)) ) ) ) ) ).
fof(fc6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) )  =>  (v1_relat_1(k2_funct_1(A)) &  (v1_funct_1(k2_funct_1(A)) & v2_funct_1(k2_funct_1(A))) ) ) ) ).
