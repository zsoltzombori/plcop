% Mizar problem: t121_zfmisc_1,zfmisc_1,1544,76 
fof(t121_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k2_zfmisc_1(k2_xboole_0(A, B), k2_xboole_0(C, D))=k2_xboole_0(k2_xboole_0(k2_xboole_0(k2_zfmisc_1(A, C), k2_zfmisc_1(A, D)), k2_zfmisc_1(B, C)), k2_zfmisc_1(B, D))) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(t120_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (k2_zfmisc_1(k2_xboole_0(A, B), C)=k2_xboole_0(k2_zfmisc_1(A, C), k2_zfmisc_1(B, C)) & k2_zfmisc_1(C, k2_xboole_0(A, B))=k2_xboole_0(k2_zfmisc_1(C, A), k2_zfmisc_1(C, B))) ) ) ) ).
fof(t4_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k2_xboole_0(k2_xboole_0(A, B), C)=k2_xboole_0(A, k2_xboole_0(B, C))) ) ) ).
