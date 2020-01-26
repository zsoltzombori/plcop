% Mizar problem: t48_mcart_1,mcart_1,1005,29 
fof(t48_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ~ ( (! [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) => D=k3_mcart_1(k5_mcart_1(A, B, C, D), k6_mcart_1(A, B, C, D), k7_mcart_1(A, B, C, D))) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d5_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ~ ( (! [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) =>  (! [E] :  (m1_subset_1(E, A) =>  (E=k5_mcart_1(A, B, C, D) <=>  (! [F] :  (! [G] :  (! [H] :  (D=k3_mcart_1(F, G, H) => E=F) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d6_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ~ ( (! [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) =>  (! [E] :  (m1_subset_1(E, B) =>  (E=k6_mcart_1(A, B, C, D) <=>  (! [F] :  (! [G] :  (! [H] :  (D=k3_mcart_1(F, G, H) => E=G) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d7_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ~ ( (! [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) =>  (! [E] :  (m1_subset_1(E, C) =>  (E=k7_mcart_1(A, B, C, D) <=>  (! [F] :  (! [G] :  (! [H] :  (D=k3_mcart_1(F, G, H) => E=H) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k3_mcart_1, axiom, $true).
fof(dt_k3_zfmisc_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k5_mcart_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) => m1_subset_1(k5_mcart_1(A, B, C, D), A)) ) ).
fof(dt_k6_mcart_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) => m1_subset_1(k6_mcart_1(A, B, C, D), B)) ) ).
fof(dt_k7_mcart_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) => m1_subset_1(k7_mcart_1(A, B, C, D), C)) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(l44_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  (? [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) &  (! [E] :  (m1_subset_1(E, A) =>  (! [F] :  (m1_subset_1(F, B) =>  (! [G] :  (m1_subset_1(G, C) =>  ~ (D=k3_mcart_1(E, F, G)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
