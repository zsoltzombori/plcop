fof(t9_funct_3, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  => r1_tarski(k10_xtuple_0(k1_funct_3(A)), k1_zfmisc_1(k10_xtuple_0(A)))) ) ).
fof(d3_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k10_xtuple_0(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k9_xtuple_0(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(dt_k1_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k1_funct_3(A)) & v1_funct_1(k1_funct_3(A))) ) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(t111_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k7_relat_1(B, A), k10_xtuple_0(B))) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t7_funct_3, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r2_hidden(A, k9_xtuple_0(k1_funct_3(B))) => k1_funct_1(k1_funct_3(B), A)=k7_relat_1(B, A)) ) ) ) ).
