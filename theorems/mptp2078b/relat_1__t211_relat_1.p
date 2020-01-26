% Mizar problem: t211_relat_1,relat_1,3213,38 
fof(t211_relat_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(k1_relat_1(C), A) => k6_subset_1(C, k7_relat_1(C, B))=k7_relat_1(C, k6_subset_1(A, B))) ) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k6_subset_1, axiom,  (! [A, B] : m1_subset_1(k6_subset_1(A, B), k1_zfmisc_1(A))) ).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
fof(t109_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => k7_relat_1(C, k6_subset_1(A, B))=k6_subset_1(k7_relat_1(C, A), k7_relat_1(C, B))) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t97_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k1_relat_1(B), A) => k7_relat_1(B, A)=B) ) ) ) ).
