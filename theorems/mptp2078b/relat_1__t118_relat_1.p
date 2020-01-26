% Mizar problem: t118_relat_1,relat_1,1774,17 
fof(t118_relat_1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k2_relat_1(k8_relat_1(A, B)), k2_relat_1(B))) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k8_relat_1, axiom,  (! [A, B] :  (v1_relat_1(B) => v1_relat_1(k8_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t117_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k8_relat_1(A, B), B)) ) ) ).
fof(t25_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, B) =>  (r1_tarski(k1_relat_1(A), k1_relat_1(B)) & r1_tarski(k2_relat_1(A), k2_relat_1(B))) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
