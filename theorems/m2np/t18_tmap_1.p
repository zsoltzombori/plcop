fof(t18_tmap_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  & m1_pre_topc(D, A))  =>  (m1_pre_topc(B, C) =>  ( (r1_tsep_1(B, D) & r1_tsep_1(D, B))  |  ( ~ (r1_tsep_1(C, D))  &  ~ (r1_tsep_1(D, C)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d3_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k2_struct_0(A)=u1_struct_0(A)) ) ).
fof(d3_tsep_1, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_struct_0(B) =>  (r1_tsep_1(A, B) <=> r1_xboole_0(u1_struct_0(A), u1_struct_0(B))) ) ) ) ) ).
fof(d4_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (l1_pre_topc(B) =>  (m1_pre_topc(B, A) <=>  (r1_tarski(k2_struct_0(B), k2_struct_0(A)) &  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))) =>  (r2_hidden(C, u1_pre_topc(B)) <=>  (? [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) &  (r2_hidden(D, u1_pre_topc(A)) & C=k9_subset_1(u1_struct_0(B), D, k2_struct_0(B))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => l1_pre_topc(B)) ) ) ) ).
fof(symmetry_r1_tsep_1, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_struct_0(B))  =>  (r1_tsep_1(A, B) => r1_tsep_1(B, A)) ) ) ).
fof(t63_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_xboole_0(B, C))  => r1_xboole_0(A, C)) ) ) ) ).
