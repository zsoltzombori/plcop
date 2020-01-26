% Mizar problem: t217_relat_1,relat_1,3283,52 
fof(t217_relat_1, conjecture,  (! [A] :  (! [B] :  (r1_tarski(A, B) =>  (! [C] :  ( (v1_relat_1(C) & v4_relat_1(C, A))  => v4_relat_1(C, B)) ) ) ) ) ).
fof(d18_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v4_relat_1(B, A) <=> r1_tarski(k1_relat_1(B), A)) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
