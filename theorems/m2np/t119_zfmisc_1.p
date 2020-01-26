fof(t119_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  ( (r1_tarski(A, k2_zfmisc_1(C, D)) & r1_tarski(B, k2_zfmisc_1(E, F)))  => r1_tarski(k2_xboole_0(A, B), k2_zfmisc_1(k2_xboole_0(C, E), k2_xboole_0(D, F)))) ) ) ) ) ) ) ).
fof(t10_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, B) => r1_tarski(A, k2_xboole_0(C, B))) ) ) ) ).
fof(t13_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_tarski(k2_xboole_0(A, C), k2_xboole_0(B, D))) ) ) ) ) ).
fof(t4_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k2_xboole_0(k2_xboole_0(A, B), C)=k2_xboole_0(A, k2_xboole_0(B, C))) ) ) ).
fof(t97_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (k2_zfmisc_1(k2_xboole_0(A, B), C)=k2_xboole_0(k2_zfmisc_1(A, C), k2_zfmisc_1(B, C)) & k2_zfmisc_1(C, k2_xboole_0(A, B))=k2_xboole_0(k2_zfmisc_1(C, A), k2_zfmisc_1(C, B))) ) ) ) ).
