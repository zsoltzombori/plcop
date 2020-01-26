fof(t46_subset_1, conjecture,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A))  =>  (? [B] :  (m1_subset_1(B, A) & A=k1_tarski(B)) ) ) ) ).
fof(d1_subset_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(A))  =>  (m1_subset_1(B, A) <=> r2_hidden(B, A)) )  &  (v1_xboole_0(A) =>  (m1_subset_1(B, A) <=> v1_xboole_0(B)) ) ) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(t131_zfmisc_1, axiom,  (! [A] :  ~ ( ( ~ (v1_xboole_0(A))  &  (v1_zfmisc_1(A) &  (! [B] :  ~ (A=k1_tarski(B)) ) ) ) ) ) ).
