fof(t38_tex_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v2_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v2_tex_2(B, A) <=> v1_zfmisc_1(B)) ) ) ) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(cc2_tdlat_3, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v2_tdlat_3(A) => v2_pre_topc(A)) ) ) ).
fof(d1_xboole_0, axiom,  (! [A] :  (v1_xboole_0(A) <=>  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
fof(fc2_zfmisc_1, axiom,  (! [A] : v1_zfmisc_1(k1_tarski(A))) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t18_tdlat_3, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (v2_tdlat_3(A) <=>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (v3_pre_topc(B, A) &  ( ~ (B=k1_xboole_0)  &  ~ (B=u1_struct_0(A)) ) ) ) ) ) ) ) ) ).
fof(t26_tex_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v2_tex_2(B, A) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  ~ ( (r2_hidden(C, B) &  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (v3_pre_topc(D, A) & k9_subset_1(u1_struct_0(A), B, D)=k1_tarski(C)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t28_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => k3_xboole_0(A, B)=A) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t30_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => v2_tex_2(k6_domain_1(u1_struct_0(A), B), A)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t46_subset_1, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A))  =>  (? [B] :  (m1_subset_1(B, A) & A=k1_tarski(B)) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
