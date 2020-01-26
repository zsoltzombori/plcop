% Mizar problem: t80_relat_1,relat_1,1302,21 
fof(t80_relat_1, conjecture,  (! [A] :  (v1_relat_1(A) => k5_relat_1(A, k6_relat_1(k2_relat_1(A)))=A) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t79_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k2_relat_1(B), A) => k5_relat_1(B, k6_relat_1(A))=B) ) ) ) ).
