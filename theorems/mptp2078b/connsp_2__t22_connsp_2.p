% Mizar problem: t22_connsp_2,connsp_2,515,60 
fof(t22_connsp_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (r1_connsp_2(A, B) =>  (! [C] :  ( ( ~ (v1_xboole_0(C))  & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))))  =>  ( (v3_pre_topc(C, A) & r2_hidden(B, C))  => r2_connsp_2(A, C, B)) ) ) ) ) ) ) ) ).
fof(abstractness_v1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_pre_topc(A) => A=g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d10_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  ( (v1_pre_topc(C) & m1_pre_topc(C, A))  =>  (C=k1_pre_topc(A, B) <=> k2_struct_0(C)=B) ) ) ) ) ) ) ).
fof(d3_connsp_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (r1_connsp_2(A, B) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (m1_connsp_2(C, A, B) &  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (m1_connsp_2(D, A, B) &  (v2_connsp_1(D, A) & r1_tarski(D, C)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d5_connsp_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r2_connsp_2(A, B, C) <=>  (! [D] :  ( ( ~ (v1_xboole_0(D))  & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))))  =>  ~ ( (B=D &  (! [E] :  (m1_subset_1(E, u1_struct_0(k1_pre_topc(A, D))) =>  ~ ( (E=C & r1_connsp_2(k1_pre_topc(A, D), E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v1_pre_topc(g1_pre_topc(A, B)) & l1_pre_topc(g1_pre_topc(A, B))) ) ) ).
fof(dt_k1_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v1_pre_topc(k1_pre_topc(A, B)) & m1_pre_topc(k1_pre_topc(A, B), A)) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k2_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_connsp_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  =>  (! [C] :  (m1_connsp_2(C, A, B) => m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ).
fof(dt_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => l1_pre_topc(B)) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_u1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => m1_subset_1(u1_pre_topc(A), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_connsp_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, u1_struct_0(A)))  =>  (? [C] : m1_connsp_2(C, A, B)) ) ) ).
fof(existence_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (? [B] : m1_pre_topc(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(free_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C, D] :  (g1_pre_topc(A, B)=g1_pre_topc(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(t11_connsp_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k1_pre_topc(A, B))) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(k1_pre_topc(A, B)))) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(A)) =>  ( (v3_pre_topc(B, A) &  (m1_connsp_2(D, k1_pre_topc(A, B), C) &  (D=E & C=F) ) )  => m1_connsp_2(E, A, F)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t12_connsp_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k1_pre_topc(A, B))) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(k1_pre_topc(A, B)))) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(A)) =>  ( (m1_connsp_2(E, A, F) &  (D=E & C=F) )  => m1_connsp_2(D, k1_pre_topc(A, B), C)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t24_connsp_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) =>  (C=D =>  (v2_connsp_1(C, A) <=> v2_connsp_1(D, B)) ) ) ) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t39_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))) => m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(fc2_pre_topc, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  =>  ( ~ (v2_struct_0(k1_pre_topc(A, B)))  & v1_pre_topc(k1_pre_topc(A, B))) ) ) ).
fof(rc6_tops_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) &  ( ~ (v1_xboole_0(B))  &  ~ (v2_tops_1(B, A)) ) ) ) ) ) ).
