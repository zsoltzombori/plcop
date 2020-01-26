% Mizar problem: t63_mcart_1,mcart_1,1348,45 
fof(t63_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( ~ ( ( ~ (r1_tarski(A, k4_zfmisc_1(A, B, C, D)))  &  ( ~ (r1_tarski(A, k4_zfmisc_1(B, C, D, A)))  &  ( ~ (r1_tarski(A, k4_zfmisc_1(C, D, A, B)))  &  ~ (r1_tarski(A, k4_zfmisc_1(D, A, B, C))) ) ) ) )  => A=k1_xboole_0) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d3_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_mcart_1(A, B, C)=k4_tarski(k4_tarski(A, B), C)) ) ) ).
fof(d4_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k4_mcart_1(A, B, C, D)=k4_tarski(k3_mcart_1(A, B, C), D)) ) ) ) ).
fof(dt_k10_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k10_mcart_1(A, B, C, D, E), C)) ) ).
fof(dt_k11_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k11_mcart_1(A, B, C, D, E), D)) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_mcart_1, axiom, $true).
fof(dt_k3_zfmisc_1, axiom, $true).
fof(dt_k4_mcart_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k4_zfmisc_1, axiom, $true).
fof(dt_k8_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k8_mcart_1(A, B, C, D, E), A)) ) ).
fof(dt_k9_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k9_mcart_1(A, B, C, D, E), B)) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t34_mcart_1, axiom,  (! [A] :  ~ ( ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ ( (r2_hidden(B, A) &  (! [C] :  (! [D] :  (! [E] :  (! [F] :  ~ ( ( (r2_hidden(C, A) | r2_hidden(D, A))  & B=k4_mcart_1(C, D, E, F)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t3_xboole_1, axiom,  (! [A] :  (r1_tarski(A, k1_xboole_0) => A=k1_xboole_0) ) ).
fof(t49_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( ~ ( ( ~ (r1_tarski(A, k3_zfmisc_1(A, B, C)))  &  ( ~ (r1_tarski(A, k3_zfmisc_1(B, C, A)))  &  ~ (r1_tarski(A, k3_zfmisc_1(C, A, B))) ) ) )  => A=k1_xboole_0) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t54_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k3_zfmisc_1(k2_zfmisc_1(A, B), C, D)=k4_zfmisc_1(A, B, C, D)) ) ) ) ).
fof(t55_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ~ (D=k1_xboole_0) ) ) )  <=>  ~ (k4_zfmisc_1(A, B, C, D)=k1_xboole_0) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t60_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  ~ ( (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => E=k4_mcart_1(k8_mcart_1(A, B, C, D, E), k9_mcart_1(A, B, C, D, E), k10_mcart_1(A, B, C, D, E), k11_mcart_1(A, B, C, D, E))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
