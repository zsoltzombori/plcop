fof(t44_subset_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(A)))  =>  (! [C] :  ( ( ~ (v1_xboole_0(C))  & m1_subset_1(C, k1_zfmisc_1(A)))  =>  ~ ( (r2_xboole_0(B, C) &  (! [D] :  (m1_subset_1(D, A) =>  ~ ( (r2_hidden(D, C) & r1_tarski(B, k7_subset_1(A, C, k1_tarski(D)))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d8_xboole_0, axiom,  (! [A] :  (! [B] :  (r2_xboole_0(A, B) <=>  (r1_tarski(A, B) &  ~ (A=B) ) ) ) ) ).
fof(l2_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, B) =>  (r2_hidden(C, A) | r1_tarski(A, k4_xboole_0(B, k1_tarski(C)))) ) ) ) ) ).
fof(l49_subset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(B)) =>  (r2_hidden(A, C) => m1_subset_1(A, B)) ) ) ) ) ).
fof(redefinition_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k7_subset_1(A, B, C)=k4_xboole_0(B, C)) ) ).
fof(t6_xboole_0, axiom,  (! [A] :  (! [B] :  ~ ( (r2_xboole_0(A, B) &  (! [C] :  ~ ( (r2_hidden(C, B) &  ~ (r2_hidden(C, A)) ) ) ) ) ) ) ) ).
