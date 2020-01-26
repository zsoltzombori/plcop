% Mizar problem: t28_tmap_1,tmap_1,680,32 
fof(t28_tmap_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  & m1_pre_topc(D, A))  =>  (! [E] :  ( ( ~ (v2_struct_0(E))  & m1_pre_topc(E, A))  =>  ( (m1_pre_topc(B, D) & m1_pre_topc(C, E))  =>  (r1_tsep_1(B, C) | m1_pre_topc(k2_tsep_1(A, B, C), k2_tsep_1(A, D, E))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(abstractness_v1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_pre_topc(A) => A=g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d3_tsep_1, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_struct_0(B) =>  (r1_tsep_1(A, B) <=> r1_xboole_0(u1_struct_0(A), u1_struct_0(B))) ) ) ) ) ).
fof(d5_tsep_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  ( ~ (r1_tsep_1(B, C))  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  &  (v1_pre_topc(D) & m1_pre_topc(D, A)) )  =>  (D=k2_tsep_1(A, B, C) <=> u1_struct_0(D)=k3_xboole_0(u1_struct_0(B), u1_struct_0(C))) ) ) ) ) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(dt_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v1_pre_topc(g1_pre_topc(A, B)) & l1_pre_topc(g1_pre_topc(A, B))) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_tsep_1, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  &  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  &  ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A)) ) )  =>  ( ~ (v2_struct_0(k2_tsep_1(A, B, C)))  &  (v1_pre_topc(k2_tsep_1(A, B, C)) & m1_pre_topc(k2_tsep_1(A, B, C), A)) ) ) ) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => l1_pre_topc(B)) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => m1_subset_1(u1_pre_topc(A), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (? [B] : m1_pre_topc(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(free_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C, D] :  (g1_pre_topc(A, B)=g1_pre_topc(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(irreflexivity_r2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  ~ (r2_subset_1(A, A)) ) ) ).
fof(redefinition_r2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (r2_subset_1(A, B) <=> r1_xboole_0(A, B)) ) ) ).
fof(symmetry_r1_tsep_1, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_struct_0(B))  =>  (r1_tsep_1(A, B) => r1_tsep_1(B, A)) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(symmetry_r2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (r2_subset_1(A, B) => r2_subset_1(B, A)) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t27_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_tarski(k3_xboole_0(A, C), k3_xboole_0(B, D))) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t3_xboole_1, axiom,  (! [A] :  (r1_tarski(A, k1_xboole_0) => A=k1_xboole_0) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t4_tsep_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_pre_topc(C, A) =>  (r1_tarski(u1_struct_0(B), u1_struct_0(C)) <=> m1_pre_topc(B, C)) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
