fof(t105_relat_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => k6_relat_1(k6_subset_1(A, B), C)=k6_subset_1(k6_relat_1(A, C), k6_relat_1(B, C))) ) ) ) ).
fof(d12_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  (C=k6_relat_1(A, B) <=>  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), C) <=>  (r2_hidden(E, A) & r2_hidden(k4_tarski(D, E), B)) ) ) ) ) ) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(dt_k6_relat_1, axiom,  (! [A, B] :  (v1_relat_1(B) => v1_relat_1(k6_relat_1(A, B))) ) ).
fof(fc2_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k4_xboole_0(A, B))) ) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
