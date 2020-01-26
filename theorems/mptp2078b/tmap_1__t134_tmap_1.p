% Mizar problem: t134_tmap_1,tmap_1,3717,62 
fof(t134_tmap_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  &  (v1_tsep_1(D, A) & m1_pre_topc(D, A)) )  =>  (! [E] :  ( ( ~ (v2_struct_0(E))  &  (v1_tsep_1(E, A) & m1_pre_topc(E, A)) )  =>  (A=k1_tsep_1(A, D, E) =>  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) &  (v5_pre_topc(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) ) )  <=>  ( (v1_funct_1(k2_tmap_1(A, B, C, D)) &  (v1_funct_2(k2_tmap_1(A, B, C, D), u1_struct_0(D), u1_struct_0(B)) &  (v5_pre_topc(k2_tmap_1(A, B, C, D), D, B) & m1_subset_1(k2_tmap_1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(D), u1_struct_0(B))))) ) )  &  (v1_funct_1(k2_tmap_1(A, B, C, E)) &  (v1_funct_2(k2_tmap_1(A, B, C, E), u1_struct_0(E), u1_struct_0(B)) &  (v5_pre_topc(k2_tmap_1(A, B, C, E), E, B) & m1_subset_1(k2_tmap_1(A, B, C, E), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(E), u1_struct_0(B))))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(abstractness_v1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_pre_topc(A) => A=g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k1_tsep_1, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  &  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  &  ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A)) ) )  => k1_tsep_1(A, B, C)=k1_tsep_1(A, C, B)) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d4_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (! [D] :  (m1_pre_topc(D, A) => k2_tmap_1(A, B, C, D)=k2_partfun1(u1_struct_0(A), u1_struct_0(B), C, u1_struct_0(D))) ) ) ) ) ) ) ) ).
fof(dt_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v1_pre_topc(g1_pre_topc(A, B)) & l1_pre_topc(g1_pre_topc(A, B))) ) ) ).
fof(dt_k1_tsep_1, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  &  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  &  ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A)) ) )  =>  ( ~ (v2_struct_0(k1_tsep_1(A, B, C)))  &  (v1_pre_topc(k1_tsep_1(A, B, C)) & m1_pre_topc(k1_tsep_1(A, B, C), A)) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (v1_funct_1(k2_partfun1(A, B, C, D)) & m1_subset_1(k2_partfun1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(dt_k2_tmap_1, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (l1_struct_0(B) &  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  & l1_struct_0(D)) ) )  =>  (v1_funct_1(k2_tmap_1(A, B, C, D)) &  (v1_funct_2(k2_tmap_1(A, B, C, D), u1_struct_0(D), u1_struct_0(B)) & m1_subset_1(k2_tmap_1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(D), u1_struct_0(B))))) ) ) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
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
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(symmetry_r4_tsep_1, axiom,  (! [A, B, C] :  ( (l1_pre_topc(A) &  (m1_pre_topc(B, A) & m1_pre_topc(C, A)) )  =>  (r4_tsep_1(A, B, C) => r4_tsep_1(A, C, B)) ) ) ).
fof(t132_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  & m1_pre_topc(D, A))  =>  (! [E] :  ( ( ~ (v2_struct_0(E))  & m1_pre_topc(E, A))  =>  ( (A=k1_tsep_1(A, D, E) & r4_tsep_1(A, D, E))  =>  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) &  (v5_pre_topc(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) ) )  <=>  ( (v1_funct_1(k2_tmap_1(A, B, C, D)) &  (v1_funct_2(k2_tmap_1(A, B, C, D), u1_struct_0(D), u1_struct_0(B)) &  (v5_pre_topc(k2_tmap_1(A, B, C, D), D, B) & m1_subset_1(k2_tmap_1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(D), u1_struct_0(B))))) ) )  &  (v1_funct_1(k2_tmap_1(A, B, C, E)) &  (v1_funct_2(k2_tmap_1(A, B, C, E), u1_struct_0(E), u1_struct_0(B)) &  (v5_pre_topc(k2_tmap_1(A, B, C, E), E, B) & m1_subset_1(k2_tmap_1(A, B, C, E), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(E), u1_struct_0(B))))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t88_tsep_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( (v1_tsep_1(B, A) & m1_pre_topc(B, A))  =>  (! [C] :  ( (v1_tsep_1(C, A) & m1_pre_topc(C, A))  => r4_tsep_1(A, B, C)) ) ) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_pre_topc, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) => v2_pre_topc(B)) ) ) ) ).
fof(rc2_tsep_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (? [B] :  (m1_pre_topc(B, A) &  ( ~ (v2_struct_0(B))  &  (v1_pre_topc(B) &  (v2_pre_topc(B) & v1_tsep_1(B, A)) ) ) ) ) ) ) ).
fof(rc8_pre_topc, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  &  ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) ) )  =>  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B)))) &  (v1_relat_1(C) &  (v4_relat_1(C, u1_struct_0(A)) &  (v5_relat_1(C, u1_struct_0(B)) &  (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & v5_pre_topc(C, A, B)) ) ) ) ) ) ) ) ) ).
