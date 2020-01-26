% Mizar problem: t185_relat_1,relat_1,2711,22 
fof(t185_relat_1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (! [D] :  ( (k7_relat_1(A, C)=k7_relat_1(B, C) & k7_relat_1(A, D)=k7_relat_1(B, D))  => k7_relat_1(A, k2_xboole_0(C, D))=k7_relat_1(B, k2_xboole_0(C, D))) ) ) ) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(t107_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => k7_relat_1(C, k2_xboole_0(A, B))=k2_xboole_0(k7_relat_1(C, A), k7_relat_1(C, B))) ) ) ) ).
