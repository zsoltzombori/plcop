% Mizar problem: t82_relat_1,relat_1,1312,59 
fof(t82_relat_1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  (! [D] :  (v1_relat_1(D) =>  ( (r1_tarski(k2_relat_1(B), A) &  (k5_relat_1(B, C)=k6_relat_1(k1_relat_1(D)) & k5_relat_1(C, D)=k6_relat_1(A)) )  => D=B) ) ) ) ) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t55_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) => k5_relat_1(k5_relat_1(A, B), C)=k5_relat_1(A, k5_relat_1(B, C))) ) ) ) ) ) ).
fof(t77_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k1_relat_1(B), A) => k5_relat_1(k6_relat_1(A), B)=B) ) ) ) ).
fof(t79_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k2_relat_1(B), A) => k5_relat_1(B, k6_relat_1(A))=B) ) ) ) ).
