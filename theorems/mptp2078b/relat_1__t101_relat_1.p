% Mizar problem: t101_relat_1,relat_1,1523,14 
fof(t101_relat_1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) => k7_relat_1(k7_relat_1(B, A), A)=k7_relat_1(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(t100_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => k7_relat_1(k7_relat_1(C, A), B)=k7_relat_1(C, k3_xboole_0(A, B))) ) ) ) ).
