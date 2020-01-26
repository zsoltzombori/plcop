% Mizar problem: t60_mcart_1,mcart_1,1285,44 
fof(t60_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  ~ ( (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => E=k4_mcart_1(k8_mcart_1(A, B, C, D, E), k9_mcart_1(A, B, C, D, E), k10_mcart_1(A, B, C, D, E), k11_mcart_1(A, B, C, D, E))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d10_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  ~ ( (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) =>  (! [F] :  (m1_subset_1(F, C) =>  (F=k10_mcart_1(A, B, C, D, E) <=>  (! [G] :  (! [H] :  (! [I] :  (! [J] :  (E=k4_mcart_1(G, H, I, J) => F=I) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d11_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  ~ ( (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) =>  (! [F] :  (m1_subset_1(F, D) =>  (F=k11_mcart_1(A, B, C, D, E) <=>  (! [G] :  (! [H] :  (! [I] :  (! [J] :  (E=k4_mcart_1(G, H, I, J) => F=J) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d8_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  ~ ( (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) =>  (! [F] :  (m1_subset_1(F, A) =>  (F=k8_mcart_1(A, B, C, D, E) <=>  (! [G] :  (! [H] :  (! [I] :  (! [J] :  (E=k4_mcart_1(G, H, I, J) => F=G) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d9_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  ~ ( (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) =>  (! [F] :  (m1_subset_1(F, B) =>  (F=k9_mcart_1(A, B, C, D, E) <=>  (! [G] :  (! [H] :  (! [I] :  (! [J] :  (E=k4_mcart_1(G, H, I, J) => F=H) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k10_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k10_mcart_1(A, B, C, D, E), C)) ) ).
fof(dt_k11_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k11_mcart_1(A, B, C, D, E), D)) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k3_mcart_1, axiom, $true).
fof(dt_k4_mcart_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k4_zfmisc_1, axiom, $true).
fof(dt_k8_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k8_mcart_1(A, B, C, D, E), A)) ) ).
fof(dt_k9_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k9_mcart_1(A, B, C, D, E), B)) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(l68_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  (? [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) &  (! [F] :  (m1_subset_1(F, A) =>  (! [G] :  (m1_subset_1(G, B) =>  (! [H] :  (m1_subset_1(H, C) =>  (! [I] :  (m1_subset_1(I, D) =>  ~ (E=k4_mcart_1(F, G, H, I)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
