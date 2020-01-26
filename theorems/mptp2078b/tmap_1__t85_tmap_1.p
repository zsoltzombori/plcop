% Mizar problem: t85_tmap_1,tmap_1,2288,44 
fof(t85_tmap_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, B))  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  & m1_pre_topc(D, B))  =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, u1_struct_0(D), u1_struct_0(A)) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(D), u1_struct_0(A))))) )  =>  (m1_pre_topc(C, D) =>  (! [F] :  (m1_subset_1(F, k1_zfmisc_1(u1_struct_0(B))) =>  (! [G] :  (m1_subset_1(G, u1_struct_0(D)) =>  (! [H] :  (m1_subset_1(H, u1_struct_0(C)) =>  ( (v3_pre_topc(F, B) &  (r2_hidden(G, F) &  (r1_tarski(F, u1_struct_0(C)) & G=H) ) )  =>  (r1_tmap_1(D, A, E, G) <=> r1_tmap_1(C, A, k3_tmap_1(B, A, D, C, E), H)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_tmap_1, axiom,  (! [A, B, C, D, E] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  &  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  &  (m1_pre_topc(C, A) &  (m1_pre_topc(D, A) &  (v1_funct_1(E) &  (v1_funct_2(E, u1_struct_0(C), u1_struct_0(B)) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(C), u1_struct_0(B))))) ) ) ) ) )  =>  (v1_funct_1(k3_tmap_1(A, B, C, D, E)) &  (v1_funct_2(k3_tmap_1(A, B, C, D, E), u1_struct_0(D), u1_struct_0(B)) & m1_subset_1(k3_tmap_1(A, B, C, D, E), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(D), u1_struct_0(B))))) ) ) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => l1_pre_topc(B)) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (? [B] : m1_pre_topc(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t33_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_pre_topc(C, A) =>  (v3_pre_topc(B, A) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(C))) =>  (D=B => v3_pre_topc(D, C)) ) ) ) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t4_tsep_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_pre_topc(C, A) =>  (r1_tarski(u1_struct_0(B), u1_struct_0(C)) <=> m1_pre_topc(B, C)) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t81_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  & m1_pre_topc(D, A))  =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, u1_struct_0(C), u1_struct_0(B)) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(C), u1_struct_0(B))))) )  =>  (! [F] :  (m1_subset_1(F, u1_struct_0(C)) =>  (! [G] :  (m1_subset_1(G, u1_struct_0(D)) =>  ( (F=G &  (m1_pre_topc(D, C) & r1_tmap_1(C, B, E, F)) )  => r1_tmap_1(D, B, k3_tmap_1(A, B, C, D, E), G)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t84_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  & m1_pre_topc(D, A))  =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, u1_struct_0(D), u1_struct_0(B)) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(D), u1_struct_0(B))))) )  =>  (m1_pre_topc(C, D) =>  (! [F] :  (m1_subset_1(F, k1_zfmisc_1(u1_struct_0(D))) =>  (! [G] :  (m1_subset_1(G, u1_struct_0(D)) =>  (! [H] :  (m1_subset_1(H, u1_struct_0(C)) =>  ( (v3_pre_topc(F, D) &  (r2_hidden(G, F) &  (r1_tarski(F, u1_struct_0(C)) & G=H) ) )  =>  (r1_tmap_1(D, B, E, G) <=> r1_tmap_1(C, B, k3_tmap_1(A, B, D, C, E), H)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_pre_topc, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) => v2_pre_topc(B)) ) ) ) ).
