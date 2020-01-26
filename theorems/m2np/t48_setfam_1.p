fof(t48_setfam_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( (v3_setfam_1(B, A) & m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))))  =>  (! [C] :  ( (v3_setfam_1(C, A) & m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(A))))  => v3_setfam_1(k4_subset_1(k1_zfmisc_1(A), B, C), A)) ) ) ) ) ) ).
fof(d12_setfam_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v3_setfam_1(B, A) <=>  ~ (r2_hidden(A, B)) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(dt_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => m1_subset_1(k4_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(redefinition_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k2_xboole_0(B, C)) ) ).
