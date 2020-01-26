fof(t34_subset_1, conjecture,  (! [A] :  (! [B] :  (m1_subset_1(B, A) =>  (! [C] :  (m1_subset_1(C, A) =>  ( ~ (A=k1_xboole_0)  => m1_subset_1(k2_tarski(B, C), k1_zfmisc_1(A))) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d1_subset_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(A))  =>  (m1_subset_1(B, A) <=> r2_hidden(B, A)) )  &  (v1_xboole_0(A) =>  (m1_subset_1(B, A) <=> v1_xboole_0(B)) ) ) ) ) ).
fof(d1_zfmisc_1, axiom,  (! [A] :  (! [B] :  (B=k1_zfmisc_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=> r1_tarski(C, A)) ) ) ) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(t29_enumset1, axiom,  (! [A] : k2_tarski(A, A)=k1_tarski(A)) ).
fof(t30_enumset1, axiom,  (! [A] :  (! [B] : k1_enumset1(A, A, B)=k2_tarski(A, B)) ) ).
fof(t32_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(k2_tarski(A, B), C) <=>  (r2_hidden(A, C) & r2_hidden(B, C)) ) ) ) ) ).
fof(t33_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, A) =>  ( ~ (A=k1_xboole_0)  => m1_subset_1(k1_tarski(B), k1_zfmisc_1(A))) ) ) ) ).
