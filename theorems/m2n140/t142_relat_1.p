fof(t142_relat_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => r1_tarski(k6_subset_1(k8_relat_1(C, A), k8_relat_1(C, B)), k8_relat_1(C, k6_subset_1(A, B)))) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
fof(t131_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(A, k8_relat_1(C, B)) <=>  (? [D] :  (r2_hidden(D, k10_xtuple_0(C)) &  (r2_hidden(k4_tarski(A, D), C) & r2_hidden(D, B)) ) ) ) ) ) ) ) ).
