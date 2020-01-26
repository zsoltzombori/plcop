% Mizar problem: t219_relat_1,relat_1,3302,23 
fof(t219_relat_1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, B) <=> r1_tarski(A, k7_relat_1(B, k1_relat_1(A)))) ) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t105_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(B, C) => r1_tarski(k7_relat_1(B, A), k7_relat_1(C, A))) ) ) ) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t88_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k7_relat_1(B, A), B)) ) ) ).
fof(t97_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k1_relat_1(B), A) => k7_relat_1(B, A)=B) ) ) ) ).
