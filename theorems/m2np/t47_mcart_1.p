fof(t47_mcart_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( ~ (v1_xboole_0(C))  =>  (! [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) =>  ( ~ (D=k1_mcart_1(A, B, C, D))  &  ( ~ (D=k2_mcart_1(A, B, C, D))  &  ~ (D=k3_mcart_1(A, B, C, D)) ) ) ) ) ) ) ) ) ) ) ).
fof(cc1_mcart_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ~ (v1_xboole_0(C)) ) )  =>  (! [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) => v2_xtuple_0(D)) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d4_xtuple_0, axiom,  (! [A] :  (! [B] :  (! [C] : k3_xtuple_0(A, B, C)=k4_tarski(k4_tarski(A, B), C)) ) ) ).
fof(d5_tarski, axiom,  (! [A] :  (! [B] : k4_tarski(A, B)=k2_tarski(k2_tarski(A, B), k1_tarski(A))) ) ).
fof(d6_xtuple_0, axiom,  (! [A] : k4_xtuple_0(A)=k1_xtuple_0(k1_xtuple_0(A))) ).
fof(d7_xtuple_0, axiom,  (! [A] : k5_xtuple_0(A)=k2_xtuple_0(k1_xtuple_0(A))) ).
fof(rd7_xtuple_0, axiom,  (! [A] :  (v2_xtuple_0(A) => k3_xtuple_0(k4_xtuple_0(A), k5_xtuple_0(A), k2_xtuple_0(A))=A) ) ).
fof(redefinition_k1_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => k1_mcart_1(A, B, C, D)=k4_xtuple_0(D)) ) ).
fof(redefinition_k2_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => k2_mcart_1(A, B, C, D)=k5_xtuple_0(D)) ) ).
fof(redefinition_k3_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => k3_mcart_1(A, B, C, D)=k2_xtuple_0(D)) ) ).
fof(t20_mcart_1, axiom,  (! [A] :  ( (? [B] :  (? [C] : A=k4_tarski(B, C)) )  =>  ( ~ (A=k1_xtuple_0(A))  &  ~ (A=k2_xtuple_0(A)) ) ) ) ).
fof(t8_xregular, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( (r2_hidden(A, B) &  (r2_hidden(B, C) &  (r2_hidden(C, D) & r2_hidden(D, A)) ) ) ) ) ) ) ) ).
