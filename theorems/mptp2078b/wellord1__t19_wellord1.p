% Mizar problem: t19_wellord1,wellord1,350,49 
fof(t19_wellord1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(A, k3_relat_1(k2_wellord1(C, B))) =>  (r2_hidden(A, k3_relat_1(C)) & r2_hidden(A, B)) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d6_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k3_relat_1(A)=k2_xboole_0(k1_relat_1(A), k2_relat_1(A))) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_wellord1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k2_wellord1(A, B))) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_relat_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_k8_relat_1, axiom,  (! [A, B] :  (v1_relat_1(B) => v1_relat_1(k8_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(l29_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k1_relat_1(k8_relat_1(A, B)), k1_relat_1(B))) ) ) ).
fof(t119_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => k2_relat_1(k8_relat_1(A, B))=k3_xboole_0(k2_relat_1(B), A)) ) ) ).
fof(t17_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => k2_wellord1(B, A)=k7_relat_1(k8_relat_1(A, B), A)) ) ) ).
fof(t18_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => k2_wellord1(B, A)=k8_relat_1(A, k7_relat_1(B, A))) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t90_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => k1_relat_1(k7_relat_1(B, A))=k3_xboole_0(k1_relat_1(B), A)) ) ) ).
fof(t99_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k2_relat_1(k7_relat_1(B, A)), k2_relat_1(B))) ) ) ).
