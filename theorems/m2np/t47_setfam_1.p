fof(t47_setfam_1, conjecture,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(A))) =>  ( (v3_setfam_1(B, A) & r1_tarski(C, B))  => v3_setfam_1(C, A)) ) ) ) ) ) ).
fof(d12_setfam_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v3_setfam_1(B, A) <=>  ~ (r2_hidden(A, B)) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
