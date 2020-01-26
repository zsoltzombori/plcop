fof(t43_setfam_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (r2_hidden(B, A) =>  (r2_hidden(B, k8_setfam_1(A, C)) <=>  (! [D] :  (r2_hidden(D, C) => r2_hidden(B, D)) ) ) ) ) ) ) ) ).
fof(d1_setfam_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (A=k1_xboole_0)  =>  (B=k1_setfam_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (! [D] :  (r2_hidden(D, A) => r2_hidden(C, D)) ) ) ) ) )  &  (A=k1_xboole_0 =>  (B=k1_setfam_1(A) <=> B=k1_xboole_0) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d9_setfam_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  ( ( ~ (B=k1_xboole_0)  => k8_setfam_1(A, B)=k6_setfam_1(A, B))  &  (B=k1_xboole_0 => k8_setfam_1(A, B)=A) ) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(redefinition_k6_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => k6_setfam_1(A, B)=k1_setfam_1(B)) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
