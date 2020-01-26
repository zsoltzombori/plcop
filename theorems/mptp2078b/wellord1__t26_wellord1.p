% Mizar problem: t26_wellord1,wellord1,463,31 
fof(t26_wellord1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => k2_wellord1(k2_wellord1(C, A), B)=k2_wellord1(C, k3_xboole_0(A, B))) ) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d6_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] : k2_wellord1(A, B)=k3_xboole_0(A, k2_zfmisc_1(B, B))) ) ) ).
fof(dt_k2_wellord1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k2_wellord1(A, B))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(t123_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k2_zfmisc_1(k3_xboole_0(A, B), k3_xboole_0(C, D))=k3_xboole_0(k2_zfmisc_1(A, C), k2_zfmisc_1(B, D))) ) ) ) ).
fof(t16_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_xboole_0(k3_xboole_0(A, B), C)=k3_xboole_0(A, k3_xboole_0(B, C))) ) ) ).
