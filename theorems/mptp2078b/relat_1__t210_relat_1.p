% Mizar problem: t210_relat_1,relat_1,3204,74 
fof(t210_relat_1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v4_relat_1(C, A))  =>  (r1_tarski(C, B) => r1_tarski(C, k7_relat_1(B, A))) ) ) ) ) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t105_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(B, C) => r1_tarski(k7_relat_1(B, A), k7_relat_1(C, A))) ) ) ) ) ) ).
fof(t209_relat_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => B=k7_relat_1(B, A)) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
