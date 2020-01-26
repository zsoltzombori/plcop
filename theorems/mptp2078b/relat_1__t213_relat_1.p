% Mizar problem: t213_relat_1,relat_1,3230,32 
fof(t213_relat_1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) => k6_subset_1(k1_relat_1(B), k1_relat_1(k7_relat_1(B, A)))=k1_relat_1(k6_subset_1(B, k7_relat_1(B, A)))) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k6_subset_1, axiom,  (! [A, B] : m1_subset_1(k6_subset_1(A, B), k1_zfmisc_1(A))) ).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
fof(t212_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => k1_relat_1(k6_subset_1(B, k7_relat_1(B, A)))=k6_subset_1(k1_relat_1(B), A)) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t47_xboole_1, axiom,  (! [A] :  (! [B] : k4_xboole_0(A, k3_xboole_0(A, B))=k4_xboole_0(A, B)) ) ).
fof(t90_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => k1_relat_1(k7_relat_1(B, A))=k3_xboole_0(k1_relat_1(B), A)) ) ) ).
