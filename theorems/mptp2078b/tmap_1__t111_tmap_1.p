% Mizar problem: t111_tmap_1,tmap_1,3006,26 
fof(t111_tmap_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  (r1_xboole_0(u1_struct_0(C), B) =>  (v1_funct_1(k2_tmap_1(A, k6_tmap_1(A, B), k7_tmap_1(A, B), C)) &  (v1_funct_2(k2_tmap_1(A, k6_tmap_1(A, B), k7_tmap_1(A, B), C), u1_struct_0(C), u1_struct_0(k6_tmap_1(A, B))) &  (v5_pre_topc(k2_tmap_1(A, k6_tmap_1(A, B), k7_tmap_1(A, B), C), C, k6_tmap_1(A, B)) & m1_subset_1(k2_tmap_1(A, k6_tmap_1(A, B), k7_tmap_1(A, B), C), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(C), u1_struct_0(k6_tmap_1(A, B)))))) ) ) ) ) ) ) ) ) ) ).
fof(abstractness_v1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (v1_pre_topc(A) => A=g1_pre_topc(u1_struct_0(A), u1_pre_topc(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k4_subset_1(A, C, B)) ) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d10_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => k7_tmap_1(A, B)=k6_partfun1(u1_struct_0(A))) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d4_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (! [D] :  (m1_pre_topc(D, A) => k2_tmap_1(A, B, C, D)=k2_partfun1(u1_struct_0(A), u1_struct_0(B), C, u1_struct_0(D))) ) ) ) ) ) ) ) ).
fof(d8_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => k5_tmap_1(A, B)=a_2_0_tmap_1(A, B)) ) ) ) ).
fof(d9_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => k6_tmap_1(A, B)=g1_pre_topc(u1_struct_0(A), k5_tmap_1(A, B))) ) ) ) ).
fof(dt_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (v1_pre_topc(g1_pre_topc(A, B)) & l1_pre_topc(g1_pre_topc(A, B))) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (v1_funct_1(k2_partfun1(A, B, C, D)) & m1_subset_1(k2_partfun1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(dt_k2_tmap_1, axiom,  (! [A, B, C, D] :  ( (l1_struct_0(A) &  (l1_struct_0(B) &  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  & l1_struct_0(D)) ) )  =>  (v1_funct_1(k2_tmap_1(A, B, C, D)) &  (v1_funct_2(k2_tmap_1(A, B, C, D), u1_struct_0(D), u1_struct_0(B)) & m1_subset_1(k2_tmap_1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(D), u1_struct_0(B))))) ) ) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => m1_subset_1(k4_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k5_tmap_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k5_tmap_1(A, B), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ).
fof(dt_k6_partfun1, axiom,  (! [A] :  (v1_partfun1(k6_partfun1(A), A) & m1_subset_1(k6_partfun1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(dt_k6_tmap_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v1_pre_topc(k6_tmap_1(A, B)) &  (v2_pre_topc(k6_tmap_1(A, B)) & l1_pre_topc(k6_tmap_1(A, B))) ) ) ) ).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_k7_tmap_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (v1_funct_1(k7_tmap_1(A, B)) &  (v1_funct_2(k7_tmap_1(A, B), u1_struct_0(A), u1_struct_0(k6_tmap_1(A, B))) & m1_subset_1(k7_tmap_1(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(k6_tmap_1(A, B)))))) ) ) ) ).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
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
fof(fraenkel_a_2_0_tmap_1, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))))  =>  (r2_hidden(A, a_2_0_tmap_1(B, C)) <=>  (? [D, E] :  ( (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) & m1_subset_1(E, k1_zfmisc_1(u1_struct_0(B))))  &  (A=k4_subset_1(u1_struct_0(B), D, k9_subset_1(u1_struct_0(B), E, C)) &  (r2_hidden(D, u1_pre_topc(B)) & r2_hidden(E, u1_pre_topc(B))) ) ) ) ) ) ) ).
fof(free_g1_pre_topc, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (! [C, D] :  (g1_pre_topc(A, B)=g1_pre_topc(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, B)=B) ) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(redefinition_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k2_xboole_0(B, C)) ) ).
fof(redefinition_k6_partfun1, axiom,  (! [A] : k6_partfun1(A)=k6_relat_1(A)) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t109_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  (r1_xboole_0(u1_struct_0(C), B) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(C)) => r1_tmap_1(C, k6_tmap_1(A, B), k2_tmap_1(A, k6_tmap_1(A, B), k7_tmap_1(A, B), C), D)) ) ) ) ) ) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t49_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) )  =>  (v5_pre_topc(C, B, A) <=>  (! [D] :  (m1_subset_1(D, u1_struct_0(B)) => r1_tmap_1(B, A, C, D)) ) ) ) ) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_pre_topc, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) => v2_pre_topc(B)) ) ) ) ).
fof(fc4_tmap_1, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  ( ~ (v2_struct_0(k6_tmap_1(A, B)))  &  (v1_pre_topc(k6_tmap_1(A, B)) & v2_pre_topc(k6_tmap_1(A, B))) ) ) ) ).
fof(rc8_pre_topc, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  &  ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) ) )  =>  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B)))) &  (v1_relat_1(C) &  (v4_relat_1(C, u1_struct_0(A)) &  (v5_relat_1(C, u1_struct_0(B)) &  (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & v5_pre_topc(C, A, B)) ) ) ) ) ) ) ) ) ).
