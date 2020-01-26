fof(t43_subset_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( (r2_hidden(D, C) &  (r1_tarski(C, k2_zfmisc_1(A, B)) &  (! [E] :  (m1_subset_1(E, A) =>  (! [F] :  (m1_subset_1(F, B) =>  ~ (D=k4_tarski(E, F)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d1_subset_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(A))  =>  (m1_subset_1(B, A) <=> r2_hidden(B, A)) )  &  (v1_xboole_0(A) =>  (m1_subset_1(B, A) <=> v1_xboole_0(B)) ) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t84_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( (r1_tarski(A, k2_zfmisc_1(B, C)) &  (r2_hidden(D, A) &  (! [E] :  (! [F] :  ~ ( (r2_hidden(E, B) &  (r2_hidden(F, C) & D=k4_tarski(E, F)) ) ) ) ) ) ) ) ) ) ) ) ).
