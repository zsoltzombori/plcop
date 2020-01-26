% Mizar problem: t209_relat_1,relat_1,3197,45 
fof(t209_relat_1, conjecture,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => B=k7_relat_1(B, A)) ) ) ).
fof(d18_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v4_relat_1(B, A) <=> r1_tarski(k1_relat_1(B), A)) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t97_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k1_relat_1(B), A) => k7_relat_1(B, A)=B) ) ) ) ).
