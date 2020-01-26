fof(t58_mcart_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( ~ (v1_xboole_0(C))  =>  (! [D] :  ( ~ (v1_xboole_0(D))  =>  (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) =>  ( ~ (E=k4_mcart_1(A, B, C, D, E))  &  ( ~ (E=k5_mcart_1(A, B, C, D, E))  &  ( ~ (E=k6_mcart_1(A, B, C, D, E))  &  ~ (E=k7_mcart_1(A, B, C, D, E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(cc2_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ~ (v1_xboole_0(D)) ) ) )  =>  (! [E] :  (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => v3_xtuple_0(E)) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d10_xtuple_0, axiom,  (! [A] : k7_xtuple_0(A)=k1_xtuple_0(k1_xtuple_0(k1_xtuple_0(A)))) ).
fof(d11_xtuple_0, axiom,  (! [A] : k8_xtuple_0(A)=k2_xtuple_0(k1_xtuple_0(k1_xtuple_0(A)))) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d4_xtuple_0, axiom,  (! [A] :  (! [B] :  (! [C] : k3_xtuple_0(A, B, C)=k4_tarski(k4_tarski(A, B), C)) ) ) ).
fof(d5_tarski, axiom,  (! [A] :  (! [B] : k4_tarski(A, B)=k2_tarski(k2_tarski(A, B), k1_tarski(A))) ) ).
fof(d7_xtuple_0, axiom,  (! [A] : k5_xtuple_0(A)=k2_xtuple_0(k1_xtuple_0(A))) ).
fof(d8_xtuple_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k6_xtuple_0(A, B, C, D)=k4_tarski(k3_xtuple_0(A, B, C), D)) ) ) ) ).
fof(fc10_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  ~ (v1_xboole_0(k2_zfmisc_1(A, B))) ) ) ).
fof(rd12_xtuple_0, axiom,  (! [A] :  (v3_xtuple_0(A) => k6_xtuple_0(k7_xtuple_0(A), k8_xtuple_0(A), k5_xtuple_0(A), k2_xtuple_0(A))=A) ) ).
fof(redefinition_k2_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => k2_mcart_1(A, B, C, D)=k5_xtuple_0(D)) ) ).
fof(redefinition_k3_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => k3_mcart_1(A, B, C, D)=k2_xtuple_0(D)) ) ).
fof(redefinition_k4_mcart_1, axiom,  (! [A, B, C, D, E] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ( ~ (v1_xboole_0(D))  & m1_subset_1(E, k4_zfmisc_1(A, B, C, D))) ) ) )  => k4_mcart_1(A, B, C, D, E)=k7_xtuple_0(E)) ) ).
fof(redefinition_k5_mcart_1, axiom,  (! [A, B, C, D, E] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ( ~ (v1_xboole_0(D))  & m1_subset_1(E, k4_zfmisc_1(A, B, C, D))) ) ) )  => k5_mcart_1(A, B, C, D, E)=k8_xtuple_0(E)) ) ).
fof(redefinition_k6_mcart_1, axiom,  (! [A, B, C, D, E] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ( ~ (v1_xboole_0(D))  & m1_subset_1(E, k4_zfmisc_1(A, B, C, D))) ) ) )  => k6_mcart_1(A, B, C, D, E)=k5_xtuple_0(E)) ) ).
fof(redefinition_k7_mcart_1, axiom,  (! [A, B, C, D, E] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  &  ( ~ (v1_xboole_0(D))  & m1_subset_1(E, k4_zfmisc_1(A, B, C, D))) ) ) )  => k7_mcart_1(A, B, C, D, E)=k2_xtuple_0(E)) ) ).
fof(t10_xregular, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  ~ ( (r2_hidden(A, B) &  (r2_hidden(B, C) &  (r2_hidden(C, D) &  (r2_hidden(D, E) &  (r2_hidden(E, F) & r2_hidden(F, A)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t47_mcart_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( ~ (v1_xboole_0(C))  =>  (! [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) =>  ( ~ (D=k1_mcart_1(A, B, C, D))  &  ( ~ (D=k2_mcart_1(A, B, C, D))  &  ~ (D=k3_mcart_1(A, B, C, D)) ) ) ) ) ) ) ) ) ) ) ).
fof(t50_mcart_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k3_zfmisc_1(k2_zfmisc_1(A, B), C, D)=k4_zfmisc_1(A, B, C, D)) ) ) ) ).
