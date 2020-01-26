fof(t12_relat_2, conjecture,  (! [A] :  (v1_relat_1(A) =>  (v1_relat_2(A) =>  (k9_xtuple_0(A)=k9_xtuple_0(k2_relat_1(A)) & k10_xtuple_0(A)=k10_xtuple_0(k2_relat_1(A))) ) ) ) ).
fof(d12_xtuple_0, axiom,  (! [A] :  (! [B] :  (B=k9_xtuple_0(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] : r2_hidden(k4_tarski(C, D), A)) ) ) ) ) ) ).
fof(d13_xtuple_0, axiom,  (! [A] :  (! [B] :  (B=k10_xtuple_0(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] : r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ).
fof(d1_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r1_relat_2(A, B) <=>  (! [C] :  (r2_hidden(C, B) => r2_hidden(k4_tarski(C, C), A)) ) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d6_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k1_relat_1(A)=k2_xboole_0(k9_xtuple_0(A), k10_xtuple_0(A))) ) ).
fof(d7_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (B=k2_relat_1(A) <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), B) <=> r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ) ) ).
fof(d9_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (v1_relat_2(A) <=> r1_relat_2(A, k1_relat_1(A))) ) ) ).
fof(dt_k2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => v1_relat_1(k2_relat_1(A))) ) ).
fof(fc2_relat_2, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_relat_2(A))  =>  (v1_relat_1(k2_relat_1(A)) & v1_relat_2(k2_relat_1(A))) ) ) ).
fof(involutiveness_k2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k2_relat_1(k2_relat_1(A))=A) ) ).
