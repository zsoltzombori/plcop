fof(t12_relset_2, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) => k9_relat_1(k6_subset_1(B, C), A)=k6_subset_1(k9_relat_1(B, A), k9_relat_1(C, A))) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(fc2_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k4_xboole_0(A, B))) ) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
fof(t9_relset_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(A, k9_relat_1(C, B)) <=> r2_hidden(k4_tarski(B, A), C)) ) ) ) ) ).
