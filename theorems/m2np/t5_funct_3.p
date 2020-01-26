fof(t5_funct_3, conjecture,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (r1_tarski(A, k10_xtuple_0(C)) & r1_tarski(k8_relat_1(C, A), k10_xtuple_0(B)))  => r1_tarski(A, k10_xtuple_0(k3_relat_1(B, C)))) ) ) ) ) ) ).
fof(dt_k3_relat_1, axiom,  (! [A, B] : v1_relat_1(k3_relat_1(A, B))) ).
fof(t135_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k8_relat_1(B, A), k8_relat_1(B, k10_xtuple_0(B)))) ) ) ).
fof(t146_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) => k8_relat_1(k3_relat_1(B, C), A)=k8_relat_1(B, k8_relat_1(C, A))) ) ) ) ) ).
fof(t88_funct_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (r1_tarski(k8_relat_1(C, A), k8_relat_1(C, B)) & r1_tarski(A, k10_xtuple_0(C)))  => r1_tarski(A, B)) ) ) ) ) ).
