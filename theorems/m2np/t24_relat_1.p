fof(t24_relat_1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) => k2_relat_1(k6_subset_1(A, B))=k6_subset_1(k2_relat_1(A), k2_relat_1(B))) ) ) ) ).
fof(d2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (A=B <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), A) <=> r2_hidden(k4_tarski(C, D), B)) ) ) ) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(d7_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (B=k2_relat_1(A) <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), B) <=> r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ) ) ).
fof(dt_k2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => v1_relat_1(k2_relat_1(A))) ) ).
fof(fc2_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k4_xboole_0(A, B))) ) ).
fof(involutiveness_k2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k2_relat_1(k2_relat_1(A))=A) ) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
