% Mizar problem: t48_ordinal1,ordinal1,1045,64 
fof(t48_ordinal1, conjecture,  (! [A] :  (! [B] :  ( (v1_relat_1(B) &  (v5_relat_1(B, A) &  (v1_funct_1(B) & v5_ordinal1(B)) ) )  =>  (! [C] :  (v3_ordinal1(C) =>  (v1_relat_1(k7_relat_1(B, C)) &  (v5_relat_1(k7_relat_1(B, C), A) &  (v1_funct_1(k7_relat_1(B, C)) & v5_ordinal1(k7_relat_1(B, C))) ) ) ) ) ) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(fc22_relat_1, axiom,  (! [A, B, C] :  ( (v1_relat_1(C) & v5_relat_1(C, B))  =>  (v1_relat_1(k7_relat_1(C, A)) & v5_relat_1(k7_relat_1(C, A), B)) ) ) ).
fof(fc5_ordinal1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) &  (v1_funct_1(A) & v5_ordinal1(A)) )  & v3_ordinal1(B))  =>  (v1_relat_1(k7_relat_1(A, B)) &  (v5_relat_1(k7_relat_1(A, B), k2_relat_1(A)) & v5_ordinal1(k7_relat_1(A, B))) ) ) ) ).
fof(fc8_funct_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k7_relat_1(A, B)) & v1_funct_1(k7_relat_1(A, B))) ) ) ).
