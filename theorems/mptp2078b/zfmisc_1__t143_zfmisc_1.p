% Mizar problem: t143_zfmisc_1,zfmisc_1,2137,68 
fof(t143_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  ( (r1_tarski(A, k2_zfmisc_1(C, D)) & r1_tarski(B, k2_zfmisc_1(E, F)))  => r1_tarski(k2_xboole_0(A, B), k2_zfmisc_1(k2_xboole_0(C, E), k2_xboole_0(D, F)))) ) ) ) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(t119_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_tarski(k2_zfmisc_1(A, C), k2_zfmisc_1(B, D))) ) ) ) ) ).
fof(t13_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_tarski(k2_xboole_0(A, C), k2_xboole_0(B, D))) ) ) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t7_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(A, k2_xboole_0(A, B))) ) ).
fof(t8_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(C, B))  => r1_tarski(k2_xboole_0(A, C), B)) ) ) ) ).
