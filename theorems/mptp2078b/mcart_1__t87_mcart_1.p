% Mizar problem: t87_mcart_1,mcart_1,1723,40 
fof(t87_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(A)) =>  (! [F] :  (m1_subset_1(F, k1_zfmisc_1(B)) =>  (! [G] :  (m1_subset_1(G, k1_zfmisc_1(C)) =>  (! [H] :  (m1_subset_1(H, k1_zfmisc_1(D)) =>  (! [I] :  (m1_subset_1(I, k4_zfmisc_1(A, B, C, D)) =>  (r2_hidden(I, k4_zfmisc_1(E, F, G, H)) =>  (r2_hidden(k8_mcart_1(A, B, C, D, I), E) &  (r2_hidden(k9_mcart_1(A, B, C, D, I), F) &  (r2_hidden(k10_mcart_1(A, B, C, D, I), G) & r2_hidden(k11_mcart_1(A, B, C, D, I), H)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k10_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k10_mcart_1(A, B, C, D, E), C)) ) ).
fof(dt_k11_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k11_mcart_1(A, B, C, D, E), D)) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k4_zfmisc_1, axiom, $true).
fof(dt_k8_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k8_mcart_1(A, B, C, D, E), A)) ) ).
fof(dt_k9_mcart_1, axiom,  (! [A, B, C, D, E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => m1_subset_1(k9_mcart_1(A, B, C, D, E), B)) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t55_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ~ (D=k1_xboole_0) ) ) )  <=>  ~ (k4_zfmisc_1(A, B, C, D)=k1_xboole_0) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t86_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ( ~ (D=k1_xboole_0)  &  ( ~ (E=k1_xboole_0)  &  ( ~ (F=k1_xboole_0)  &  ( ~ (G=k1_xboole_0)  &  ( ~ (H=k1_xboole_0)  &  (? [I] :  (m1_subset_1(I, k4_zfmisc_1(A, B, C, D)) &  (? [J] :  (m1_subset_1(J, k4_zfmisc_1(E, F, G, H)) &  (I=J &  ~ ( (k8_mcart_1(A, B, C, D, I)=k8_mcart_1(E, F, G, H, J) &  (k9_mcart_1(A, B, C, D, I)=k9_mcart_1(E, F, G, H, J) &  (k10_mcart_1(A, B, C, D, I)=k10_mcart_1(E, F, G, H, J) & k11_mcart_1(A, B, C, D, I)=k11_mcart_1(E, F, G, H, J)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
