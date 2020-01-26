% Mizar problem: t119_zfmisc_1,zfmisc_1,1489,52 
fof(t119_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_tarski(k2_zfmisc_1(A, C), k2_zfmisc_1(B, D))) ) ) ) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(t118_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, B) =>  (r1_tarski(k2_zfmisc_1(A, C), k2_zfmisc_1(B, C)) & r1_tarski(k2_zfmisc_1(C, A), k2_zfmisc_1(C, B))) ) ) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
