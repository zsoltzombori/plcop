fof(t45_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( ~ ( ( ~ (r1_tarski(A, k3_zfmisc_1(A, B, C)))  &  ( ~ (r1_tarski(A, k3_zfmisc_1(B, C, A)))  &  ~ (r1_tarski(A, k3_zfmisc_1(C, A, B))) ) ) )  => A=k1_xboole_0) ) ) ) ).
fof(cc1_mcart_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ~ (v1_xboole_0(C)) ) )  =>  (! [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) => v2_xtuple_0(D)) ) ) ) ).
fof(d3_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_zfmisc_1(A, B, C)=k2_zfmisc_1(k2_zfmisc_1(A, B), C)) ) ) ).
fof(dt_k1_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => m1_subset_1(k1_mcart_1(A, B, C, D), A)) ) ).
fof(dt_k2_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => m1_subset_1(k2_mcart_1(A, B, C, D), B)) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(rd7_xtuple_0, axiom,  (! [A] :  (v2_xtuple_0(A) => k3_xtuple_0(k4_xtuple_0(A), k5_xtuple_0(A), k2_xtuple_0(A))=A) ) ).
fof(redefinition_k1_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => k1_mcart_1(A, B, C, D)=k4_xtuple_0(D)) ) ).
fof(redefinition_k2_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => k2_mcart_1(A, B, C, D)=k5_xtuple_0(D)) ) ).
fof(t111_zfmisc_1, axiom,  (! [A] :  (! [B] :  ( (r1_tarski(A, k2_zfmisc_1(A, B)) | r1_tarski(A, k2_zfmisc_1(B, A)))  => A=k1_xboole_0) ) ) ).
fof(t26_mcart_1, axiom,  (! [A] :  ~ ( ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ ( (r2_hidden(B, A) &  (! [C] :  (! [D] :  (! [E] :  ~ ( ( (r2_hidden(C, A) | r2_hidden(D, A))  & B=k3_xtuple_0(C, D, E)) ) ) ) ) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t31_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ~ (C=k1_xboole_0) ) )  <=>  ~ (k3_zfmisc_1(A, B, C)=k1_xboole_0) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
