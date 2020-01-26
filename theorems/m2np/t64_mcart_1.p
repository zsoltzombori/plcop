fof(t64_mcart_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( ~ (v1_xboole_0(C))  =>  (! [D] :  (m1_subset_1(D, k3_zfmisc_1(A, B, C)) =>  (! [E] :  (! [F] :  (! [G] :  (D=k3_xtuple_0(E, F, G) =>  (k1_mcart_1(A, B, C, D)=E &  (k2_mcart_1(A, B, C, D)=F & k3_mcart_1(A, B, C, D)=G) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(rd4_xtuple_0, axiom,  (! [A, B, C] : k4_xtuple_0(k3_xtuple_0(A, B, C))=A) ).
fof(rd5_xtuple_0, axiom,  (! [A, B, C] : k5_xtuple_0(k3_xtuple_0(A, B, C))=B) ).
fof(rd6_xtuple_0, axiom,  (! [A, B, C] : k2_xtuple_0(k3_xtuple_0(A, B, C))=C) ).
fof(redefinition_k1_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => k1_mcart_1(A, B, C, D)=k4_xtuple_0(D)) ) ).
fof(redefinition_k2_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => k2_mcart_1(A, B, C, D)=k5_xtuple_0(D)) ) ).
fof(redefinition_k3_mcart_1, axiom,  (! [A, B, C, D] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_xboole_0(C))  & m1_subset_1(D, k3_zfmisc_1(A, B, C))) ) )  => k3_mcart_1(A, B, C, D)=k2_xtuple_0(D)) ) ).
