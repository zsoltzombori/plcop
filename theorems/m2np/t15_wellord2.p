fof(t15_wellord2, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (r2_wellord2(A, B) & r2_wellord2(B, C))  => r2_wellord2(A, C)) ) ) ) ).
fof(d4_wellord2, axiom,  (! [A] :  (! [B] :  (r2_wellord2(A, B) <=>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  &  (v2_funct_1(C) &  (k9_xtuple_0(C)=A & k10_xtuple_0(C)=B) ) ) ) ) ) ) ).
fof(dt_k3_relat_1, axiom,  (! [A, B] : v1_relat_1(k3_relat_1(A, B))) ).
fof(fc2_funct_1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k3_relat_1(A, B)) & v1_funct_1(k3_relat_1(A, B))) ) ) ).
fof(fc7_funct_1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) )  &  (v1_relat_1(B) &  (v1_funct_1(B) & v2_funct_1(B)) ) )  =>  (v1_relat_1(k3_relat_1(A, B)) & v2_funct_1(k3_relat_1(A, B))) ) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t27_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k10_xtuple_0(A), k9_xtuple_0(B)) => k9_xtuple_0(k3_relat_1(A, B))=k9_xtuple_0(A)) ) ) ) ) ).
fof(t28_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k9_xtuple_0(A), k10_xtuple_0(B)) => k10_xtuple_0(k3_relat_1(B, A))=k10_xtuple_0(A)) ) ) ) ) ).
