% Mizar problem: t128_relat_1,relat_1,1865,14 
fof(t128_relat_1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) => k8_relat_1(A, k8_relat_1(A, B))=k8_relat_1(A, B)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k8_relat_1, axiom,  (! [A, B] :  (v1_relat_1(B) => v1_relat_1(k8_relat_1(A, B))) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(t127_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => k8_relat_1(A, k8_relat_1(B, C))=k8_relat_1(k3_xboole_0(A, B), C)) ) ) ) ).
