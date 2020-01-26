fof(t32_setfam_1, conjecture,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  ~ ( ( ~ (B=k1_xboole_0)  & k7_setfam_1(A, B)=k1_xboole_0) ) ) ) ) ).
fof(d7_setfam_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (C=k7_setfam_1(A, B) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(A)) =>  (r2_hidden(D, C) <=> r2_hidden(k3_subset_1(A, D), B)) ) ) ) ) ) ) ) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(involutiveness_k7_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => k7_setfam_1(A, k7_setfam_1(A, B))=B) ) ).
fof(t1_subset_1, axiom,  (! [A] : m1_subset_1(k1_xboole_0, k1_zfmisc_1(A))) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_xboole_0, axiom,  (! [A] :  ~ ( ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ) ).
