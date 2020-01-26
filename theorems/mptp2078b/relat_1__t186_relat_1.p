% Mizar problem: t186_relat_1,relat_1,2720,74 
fof(t186_relat_1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  ( (r1_tarski(k1_relat_1(C), A) & r1_tarski(C, B))  => r1_tarski(C, k7_relat_1(B, A))) ) ) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t106_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (! [D] :  (v1_relat_1(D) =>  ( (r1_tarski(C, D) & r1_tarski(A, B))  => r1_tarski(k7_relat_1(C, A), k7_relat_1(D, B))) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t97_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k1_relat_1(B), A) => k7_relat_1(B, A)=B) ) ) ) ).
