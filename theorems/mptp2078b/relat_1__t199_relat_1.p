% Mizar problem: t199_relat_1,relat_1,2915,42 
fof(t199_relat_1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  (k2_relat_1(A)=k2_relat_1(B) => k2_relat_1(k5_relat_1(A, C))=k2_relat_1(k5_relat_1(B, C))) ) ) ) ) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k9_relat_1, axiom, $true).
fof(t160_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) => k2_relat_1(k5_relat_1(A, B))=k9_relat_1(B, k2_relat_1(A))) ) ) ) ).
