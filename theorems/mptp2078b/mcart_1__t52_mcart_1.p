% Mizar problem: t52_mcart_1,mcart_1,1089,7 
fof(t52_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  ( ~ (r1_xboole_0(k3_zfmisc_1(A, B, C), k3_zfmisc_1(D, E, F)))  =>  ( ~ (r1_xboole_0(A, D))  &  ( ~ (r1_xboole_0(B, E))  &  ~ (r1_xboole_0(C, F)) ) ) ) ) ) ) ) ) ) ).
fof(d3_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_zfmisc_1(A, B, C)=k2_zfmisc_1(k2_zfmisc_1(A, B), C)) ) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_zfmisc_1, axiom, $true).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t127_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_xboole_0(A, B) | r1_xboole_0(C, D))  => r1_xboole_0(k2_zfmisc_1(A, C), k2_zfmisc_1(B, D))) ) ) ) ) ).
