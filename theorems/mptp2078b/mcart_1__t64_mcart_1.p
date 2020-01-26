% Mizar problem: t64_mcart_1,mcart_1,1394,29 
fof(t64_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] :  ( ~ (r1_xboole_0(k4_zfmisc_1(A, B, C, D), k4_zfmisc_1(E, F, G, H)))  =>  ( ~ (r1_xboole_0(A, E))  &  ( ~ (r1_xboole_0(B, F))  &  ( ~ (r1_xboole_0(C, G))  &  ~ (r1_xboole_0(D, H)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k4_zfmisc_1, axiom, $true).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t127_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_xboole_0(A, B) | r1_xboole_0(C, D))  => r1_xboole_0(k2_zfmisc_1(A, C), k2_zfmisc_1(B, D))) ) ) ) ) ).
fof(t53_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k4_zfmisc_1(A, B, C, D)=k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(A, B), C), D)) ) ) ) ).
