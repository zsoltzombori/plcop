fof(l64_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  (? [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) &  (! [F] :  (m1_subset_1(F, A) =>  (! [G] :  (m1_subset_1(G, B) =>  (! [H] :  (m1_subset_1(H, C) =>  (! [I] :  (m1_subset_1(I, D) =>  ~ (E=k6_xtuple_0(F, G, H, I)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d4_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k4_zfmisc_1(A, B, C, D)=k2_zfmisc_1(k3_zfmisc_1(A, B, C), D)) ) ) ) ).
fof(d8_xtuple_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k6_xtuple_0(A, B, C, D)=k4_tarski(k3_xtuple_0(A, B, C), D)) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(fc11_subset_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ~ (v1_xboole_0(C)) ) )  =>  ~ (v1_xboole_0(k3_zfmisc_1(A, B, C))) ) ) ).
fof(l23_mcart_1, axiom,  (! [A] :  (! [B] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  (? [C] :  (m1_subset_1(C, k2_zfmisc_1(A, B)) &  (! [D] :  (m1_subset_1(D, A) =>  (! [E] :  (m1_subset_1(E, B) =>  ~ (C=k4_tarski(D, E)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(l36_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  (? [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) &  (! [E] :  (m1_subset_1(E, A) =>  (! [F] :  (m1_subset_1(F, B) =>  (! [G] :  (m1_subset_1(G, C) =>  ~ (D=k3_xtuple_0(E, F, G)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
