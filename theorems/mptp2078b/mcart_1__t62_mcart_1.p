% Mizar problem: t62_mcart_1,mcart_1,1323,60 
fof(t62_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  ~ ( (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) =>  ( ~ (E=k8_mcart_1(A, B, C, D, E))  &  ( ~ (E=k9_mcart_1(A, B, C, D, E))  &  ( ~ (E=k10_mcart_1(A, B, C, D, E))  &  ~ (E=k11_mcart_1(A, B, C, D, E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d3_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_mcart_1(A, B, C)=k4_tarski(k4_tarski(A, B), C)) ) ) ).
fof(d4_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k4_mcart_1(A, B, C, D)=k4_tarski(k3_mcart_1(A, B, C), D)) ) ) ) ).
fof(dt_k10_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k10_mcart_1(A, B, C, D, E), C)) ) ).
fof(dt_k11_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k11_mcart_1(A, B, C, D, E), D)) ) ).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_mcart_1, axiom, $true).
fof(dt_k3_zfmisc_1, axiom, $true).
fof(dt_k4_mcart_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k4_zfmisc_1, axiom, $true).
fof(dt_k5_mcart_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) => m1_subset_1(k5_mcart_1(A, B, C, D), A)) ) ).
fof(dt_k6_mcart_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) => m1_subset_1(k6_mcart_1(A, B, C, D), B)) ) ).
fof(dt_k7_mcart_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) => m1_subset_1(k7_mcart_1(A, B, C, D), C)) ) ).
fof(dt_k8_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k8_mcart_1(A, B, C, D, E), A)) ) ).
fof(dt_k9_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k9_mcart_1(A, B, C, D, E), B)) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t113_zfmisc_1, axiom,  (! [A] :  (! [B] :  (k2_zfmisc_1(A, B)=k1_xboole_0 <=>  (A=k1_xboole_0 | B=k1_xboole_0) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t50_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ~ ( (! [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) =>  (k5_mcart_1(A, B, C, D)=k1_mcart_1(k1_mcart_1(D)) &  (k6_mcart_1(A, B, C, D)=k2_mcart_1(k1_mcart_1(D)) & k7_mcart_1(A, B, C, D)=k2_mcart_1(D)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t51_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ~ ( (! [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) =>  ( ~ (D=k5_mcart_1(A, B, C, D))  &  ( ~ (D=k6_mcart_1(A, B, C, D))  &  ~ (D=k7_mcart_1(A, B, C, D)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t54_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k3_zfmisc_1(k2_zfmisc_1(A, B), C, D)=k4_zfmisc_1(A, B, C, D)) ) ) ) ).
fof(t60_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  ~ ( (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => E=k4_mcart_1(k8_mcart_1(A, B, C, D, E), k9_mcart_1(A, B, C, D, E), k10_mcart_1(A, B, C, D, E), k11_mcart_1(A, B, C, D, E))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t61_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  ~ ( (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) =>  (k8_mcart_1(A, B, C, D, E)=k1_mcart_1(k1_mcart_1(k1_mcart_1(E))) &  (k9_mcart_1(A, B, C, D, E)=k2_mcart_1(k1_mcart_1(k1_mcart_1(E))) &  (k10_mcart_1(A, B, C, D, E)=k2_mcart_1(k1_mcart_1(E)) & k11_mcart_1(A, B, C, D, E)=k2_mcart_1(E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t6_ordinal1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  ~ ( (r2_hidden(A, B) &  (r2_hidden(B, C) &  (r2_hidden(C, D) &  (r2_hidden(D, E) &  (r2_hidden(E, F) & r2_hidden(F, A)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
