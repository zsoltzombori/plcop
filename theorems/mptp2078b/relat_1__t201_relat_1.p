% Mizar problem: t201_relat_1,relat_1,2991,30 
fof(t201_relat_1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  (k7_relat_1(B, A)=k7_relat_1(C, A) => k9_relat_1(B, A)=k9_relat_1(C, A)) ) ) ) ) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t162_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (! [C] :  (r1_tarski(B, C) => k9_relat_1(k7_relat_1(A, C), B)=k9_relat_1(A, B)) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
