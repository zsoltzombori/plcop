% Mizar problem: t65_subset_1,subset_1,1068,55 
fof(t65_subset_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( (r2_hidden(D, C) &  (r1_tarski(C, k2_zfmisc_1(A, B)) &  (! [E] :  (m1_subset_1(E, A) =>  (! [F] :  (m1_subset_1(F, B) =>  ~ (D=k4_tarski(E, F)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d2_subset_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(A))  =>  (m1_subset_1(B, A) <=> r2_hidden(B, A)) )  &  (v1_xboole_0(A) =>  (m1_subset_1(B, A) <=> v1_xboole_0(B)) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t103_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( (r1_tarski(A, k2_zfmisc_1(B, C)) &  (r2_hidden(D, A) &  (! [E] :  (! [F] :  ~ ( (r2_hidden(E, B) &  (r2_hidden(F, C) & D=k4_tarski(E, F)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
