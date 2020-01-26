fof(l36_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  (? [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) &  (! [E] :  (m1_subset_1(E, A) =>  (! [F] :  (m1_subset_1(F, B) =>  (! [G] :  (m1_subset_1(G, C) =>  ~ (D=k3_xtuple_0(E, F, G)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d3_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_zfmisc_1(A, B, C)=k2_zfmisc_1(k2_zfmisc_1(A, B), C)) ) ) ).
fof(d4_xtuple_0, axiom,  (! [A] :  (! [B] :  (! [C] : k3_xtuple_0(A, B, C)=k4_tarski(k4_tarski(A, B), C)) ) ) ).
fof(l23_mcart_1, axiom,  (! [A] :  (! [B] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  (? [C] :  (m1_subset_1(C, k2_zfmisc_1(A, B)) &  (! [D] :  (m1_subset_1(D, A) =>  (! [E] :  (m1_subset_1(E, B) =>  ~ (C=k4_tarski(D, E)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(rd6_xtuple_0, axiom,  (! [A, B, C] : k2_xtuple_0(k3_xtuple_0(A, B, C))=C) ).
fof(t90_zfmisc_1, axiom,  (! [A] :  (! [B] :  (k2_zfmisc_1(A, B)=k1_xboole_0 <=>  (A=k1_xboole_0 | B=k1_xboole_0) ) ) ) ).
