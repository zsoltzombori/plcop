fof(t14_wellord2, conjecture,  (! [A] :  (! [B] :  (v3_ordinal1(B) =>  (r1_tarski(A, B) => r1_ordinal1(k2_wellord2(k1_wellord2(A)), B)) ) ) ) ).
fof(cc1_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (v1_ordinal1(A) & v2_ordinal1(A)) ) ) ).
fof(cc5_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (m1_subset_1(B, A) => v3_ordinal1(B)) ) ) ) ).
fof(d1_wellord2, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (B=k1_wellord2(A) <=>  (k1_relat_1(B)=A &  (! [C] :  (! [D] :  ( (r2_hidden(C, A) & r2_hidden(D, A))  =>  (r2_hidden(k4_tarski(C, D), B) <=> r1_tarski(C, D)) ) ) ) ) ) ) ) ) ).
fof(d2_ordinal1, axiom,  (! [A] :  (v1_ordinal1(A) <=>  (! [B] :  (r2_hidden(B, A) => r1_tarski(B, A)) ) ) ) ).
fof(d2_wellord2, axiom,  (! [A] :  (v1_relat_1(A) =>  (v2_wellord1(A) =>  (! [B] :  (v3_ordinal1(B) =>  (B=k2_wellord2(A) <=> r4_wellord1(A, k1_wellord2(B))) ) ) ) ) ) ).
fof(dt_k1_wellord2, axiom,  (! [A] : v1_relat_1(k1_wellord2(A))) ).
fof(redefinition_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  =>  (r1_ordinal1(A, B) <=> r1_tarski(A, B)) ) ) ).
fof(reflexivity_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  => r1_ordinal1(A, A)) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t40_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r4_wellord1(A, B) => r4_wellord1(B, A)) ) ) ) ) ).
fof(t53_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  ~ ( (r1_tarski(A, k1_relat_1(B)) &  (v2_wellord1(B) &  ( ~ (r4_wellord1(B, k2_wellord1(B, A)))  &  (! [C] :  ~ ( (r2_hidden(C, k1_relat_1(B)) & r4_wellord1(k2_wellord1(B, k1_wellord1(B, C)), k2_wellord1(B, A))) ) ) ) ) ) ) ) ) ) ).
fof(t7_wellord2, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => k2_wellord1(k1_wellord2(B), A)=k1_wellord2(A)) ) ) ).
fof(t8_wellord2, axiom,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (r1_tarski(B, A) => v2_wellord1(k1_wellord2(B))) ) ) ) ).
fof(t9_wellord2, axiom,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  (r2_hidden(A, B) => A=k1_wellord1(k1_wellord2(B), A)) ) ) ) ) ).
