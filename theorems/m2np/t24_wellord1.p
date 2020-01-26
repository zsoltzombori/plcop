fof(t24_wellord1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v1_wellord1(B) => v1_wellord1(k2_wellord1(B, A))) ) ) ) ).
fof(d2_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v1_wellord1(A) <=>  (! [B] :  ~ ( (r1_tarski(B, k1_relat_1(A)) &  ( ~ (B=k1_xboole_0)  &  (! [C] :  ~ ( (r2_hidden(C, B) & r1_xboole_0(k1_wellord1(A, C), B)) ) ) ) ) ) ) ) ) ) ).
fof(d6_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k1_relat_1(A)=k2_xboole_0(k9_xtuple_0(A), k10_xtuple_0(A))) ) ).
fof(dt_k2_wellord1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k2_wellord1(A, B))) ) ).
fof(t13_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k1_relat_1(k2_wellord1(B, A)), k1_relat_1(B)) & r1_tarski(k1_relat_1(k2_wellord1(B, A)), A)) ) ) ) ).
fof(t14_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => r1_tarski(k1_wellord1(k2_wellord1(C, A), B), k1_wellord1(C, B))) ) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
