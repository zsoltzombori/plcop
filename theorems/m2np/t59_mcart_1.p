fof(t59_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( ~ ( ( ~ (r1_tarski(A, k4_zfmisc_1(A, B, C, D)))  &  ( ~ (r1_tarski(A, k4_zfmisc_1(B, C, D, A)))  &  ( ~ (r1_tarski(A, k4_zfmisc_1(C, D, A, B)))  &  ~ (r1_tarski(A, k4_zfmisc_1(D, A, B, C))) ) ) ) )  => A=k1_xboole_0) ) ) ) ) ).
fof(cc2_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ~ (v1_xboole_0(D)) ) ) )  =>  (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => v3_xtuple_0(E)) ) ) ) ).
fof(dt_k4_mcart_1, axiom,  (! [A, B, C, D, E] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ( ~ (v1_xboole_0(D))  & m1_subset_1(E, k4_zfmisc_1(A, B, C, D))) ) ) )  => m1_subset_1(k4_mcart_1(A, B, C, D, E), A)) ) ).
fof(dt_k5_mcart_1, axiom,  (! [A, B, C, D, E] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ( ~ (v1_xboole_0(D))  & m1_subset_1(E, k4_zfmisc_1(A, B, C, D))) ) ) )  => m1_subset_1(k5_mcart_1(A, B, C, D, E), B)) ) ).
fof(rd12_xtuple_0, axiom,  (! [A] :  (v3_xtuple_0(A) => k6_xtuple_0(k7_xtuple_0(A), k8_xtuple_0(A), k5_xtuple_0(A), k2_xtuple_0(A))=A) ) ).
fof(redefinition_k4_mcart_1, axiom,  (! [A, B, C, D, E] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ( ~ (v1_xboole_0(D))  & m1_subset_1(E, k4_zfmisc_1(A, B, C, D))) ) ) )  => k4_mcart_1(A, B, C, D, E)=k7_xtuple_0(E)) ) ).
fof(redefinition_k5_mcart_1, axiom,  (! [A, B, C, D, E] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ( ~ (v1_xboole_0(D))  & m1_subset_1(E, k4_zfmisc_1(A, B, C, D))) ) ) )  => k5_mcart_1(A, B, C, D, E)=k8_xtuple_0(E)) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t30_mcart_1, axiom,  (! [A] :  ~ ( ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ ( (r2_hidden(B, A) &  (! [C] :  (! [D] :  (! [E] :  (! [F] :  ~ ( ( (r2_hidden(C, A) | r2_hidden(D, A))  & B=k6_xtuple_0(C, D, E, F)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t45_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( ~ ( ( ~ (r1_tarski(A, k3_zfmisc_1(A, B, C)))  &  ( ~ (r1_tarski(A, k3_zfmisc_1(B, C, A)))  &  ~ (r1_tarski(A, k3_zfmisc_1(C, A, B))) ) ) )  => A=k1_xboole_0) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t50_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k3_zfmisc_1(k2_zfmisc_1(A, B), C, D)=k4_zfmisc_1(A, B, C, D)) ) ) ) ).
fof(t51_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ( ~ (C=k1_xboole_0)  &  ~ (D=k1_xboole_0) ) ) )  <=>  ~ (k4_zfmisc_1(A, B, C, D)=k1_xboole_0) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
