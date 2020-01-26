% Mizar problem: t9_wellord2,wellord2,216,52 
fof(t9_wellord2, conjecture,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (r1_tarski(B, A) => v2_wellord1(k1_wellord2(B))) ) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d6_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] : k2_wellord1(A, B)=k3_xboole_0(A, k2_zfmisc_1(B, B))) ) ) ).
fof(dt_k1_wellord2, axiom,  (! [A] : v1_relat_1(k1_wellord2(A))) ).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_wellord1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k2_wellord1(A, B))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(t32_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v2_wellord1(B) => v2_wellord1(k2_wellord1(B, A))) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t7_wellord2, axiom,  (! [A] :  (v3_ordinal1(A) => v2_wellord1(k1_wellord2(A))) ) ).
fof(t8_wellord2, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => k2_wellord1(k1_wellord2(B), A)=k1_wellord2(A)) ) ) ).
