% Mizar problem: t67_funct_1,funct_1,1338,14 
fof(t67_funct_1, conjecture,  (! [A] : k2_funct_1(k6_relat_1(A))=k6_relat_1(A)) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k2_funct_1(A)) & v1_funct_1(k2_funct_1(A))) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(t44_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (k2_relat_1(A)=k1_relat_1(B) & k5_relat_1(A, B)=A)  => B=k6_relat_1(k1_relat_1(B))) ) ) ) ) ).
fof(t55_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (k2_relat_1(A)=k1_relat_1(k2_funct_1(A)) & k1_relat_1(A)=k2_relat_1(k2_funct_1(A))) ) ) ) ).
fof(t61_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (k5_relat_1(A, k2_funct_1(A))=k6_relat_1(k1_relat_1(A)) & k5_relat_1(k2_funct_1(A), A)=k6_relat_1(k2_relat_1(A))) ) ) ) ).
fof(t71_relat_1, axiom,  (! [A] :  (k1_relat_1(k6_relat_1(A))=A & k2_relat_1(k6_relat_1(A))=A) ) ).
fof(fc3_funct_1, axiom,  (! [A] :  (v1_relat_1(k6_relat_1(A)) & v1_funct_1(k6_relat_1(A))) ) ).
fof(fc4_funct_1, axiom,  (! [A] :  (v1_relat_1(k6_relat_1(A)) & v2_funct_1(k6_relat_1(A))) ) ).
