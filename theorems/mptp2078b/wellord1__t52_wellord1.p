% Mizar problem: t52_wellord1,wellord1,1057,68 
fof(t52_wellord1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  ( (r4_wellord1(A, B) & r4_wellord1(B, C))  => r4_wellord1(A, C)) ) ) ) ) ) ) ).
fof(d8_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r4_wellord1(A, B) <=>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  & r3_wellord1(A, B, C)) ) ) ) ) ) ) ).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(t51_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  (! [D] :  ( (v1_relat_1(D) & v1_funct_1(D))  =>  (! [E] :  ( (v1_relat_1(E) & v1_funct_1(E))  =>  ( (r3_wellord1(A, B, D) & r3_wellord1(B, C, E))  => r3_wellord1(A, C, k5_relat_1(D, E))) ) ) ) ) ) ) ) ) ) ) ).
fof(fc2_funct_1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k5_relat_1(A, B)) & v1_funct_1(k5_relat_1(A, B))) ) ) ).
