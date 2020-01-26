% Mizar problem: t65_tex_2,tex_2,2221,47 
fof(t65_tex_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (v2_tex_2(B, A) &  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (r1_tarski(B, C) & v3_tex_2(C, A)) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B)) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k4_subset_1(A, C, B)) ) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d3_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k2_struct_0(A)=u1_struct_0(A)) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, B)=k4_xboole_0(A, B)) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k2_pre_topc(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k2_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k3_subset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => m1_subset_1(k4_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => m1_subset_1(k6_domain_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k7_relset_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k7_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_k9_setfam_1, axiom,  (! [A] : m1_subset_1(k9_setfam_1(A), k1_zfmisc_1(k1_zfmisc_1(A)))) ).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc1_tops_1, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => v4_pre_topc(k2_pre_topc(A, B), A)) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc2_tops_1, axiom,  (! [A, B] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  &  (v4_pre_topc(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) )  => v3_pre_topc(k3_subset_1(u1_struct_0(A), B), A)) ) ).
fof(fc6_relat_1, axiom,  (! [A, B] : v1_relat_1(k2_zfmisc_1(A, B))) ).
fof(fraenkel_a_2_1_tex_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) &  (v3_tdlat_3(B) & l1_pre_topc(B)) ) )  & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))))  =>  (r2_hidden(A, a_2_1_tex_2(B, C)) <=>  (? [D] :  (m1_subset_1(D, u1_struct_0(B)) &  (A=k2_pre_topc(B, k6_domain_1(u1_struct_0(B), D)) & r2_hidden(D, k7_subset_1(u1_struct_0(B), k2_struct_0(B), k2_pre_topc(B, C)))) ) ) ) ) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, B)=B) ) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(involutiveness_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, k3_subset_1(A, B))=B) ) ).
fof(projectivity_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => k2_pre_topc(A, k2_pre_topc(A, B))=k2_pre_topc(A, B)) ) ).
fof(redefinition_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k2_xboole_0(B, C)) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k9_relat_1(C, D)) ) ).
fof(redefinition_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k7_subset_1(A, B, C)=k4_xboole_0(B, C)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(s1_tex_2__e12_104__tex_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) )  &  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) )  =>  ( (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (r2_hidden(D, C) &  (! [E] :  (m1_subset_1(E, u1_struct_0(A)) =>  ~ ( (r2_hidden(E, k7_subset_1(u1_struct_0(A), k2_struct_0(A), k2_pre_topc(A, B))) & r2_hidden(E, D)) ) ) ) ) ) ) )  =>  (? [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, C, u1_struct_0(A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(C, u1_struct_0(A))))) )  &  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(E, C) =>  (r2_hidden(k1_funct_1(D, E), k7_subset_1(u1_struct_0(A), k2_struct_0(A), k2_pre_topc(A, B))) & r2_hidden(k1_funct_1(D, E), E)) ) ) ) ) ) ) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t115_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (! [E] :  ~ ( (r2_hidden(E, k7_relset_1(A, B, D, C)) &  (! [F] :  ~ ( (r2_hidden(F, A) &  (r2_hidden(F, C) & E=k1_funct_1(D, F)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t19_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(A, C))  => r1_tarski(A, k3_xboole_0(B, C))) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t23_tdlat_3, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (v3_tdlat_3(A) <=>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v3_pre_topc(B, A) => v4_pre_topc(B, A)) ) ) ) ) ) ).
fof(t23_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_xboole_0(A, k2_xboole_0(B, C))=k2_xboole_0(k3_xboole_0(A, B), k3_xboole_0(A, C))) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t31_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v4_pre_topc(B, A) & r1_tarski(C, B))  => r1_tarski(k2_pre_topc(A, C), B)) ) ) ) ) ) ) ).
fof(t37_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t43_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  ( ~ (B=k1_xboole_0)  =>  (! [E] :  ( (? [F] :  (r2_hidden(F, A) &  (r2_hidden(F, C) & E=k1_funct_1(D, F)) ) )  => r2_hidden(E, k7_relset_1(A, B, D, C))) ) ) ) ) ) ) ) ).
fof(t44_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (r1_xboole_0(B, k3_subset_1(A, C)) <=> r1_tarski(B, C)) ) ) ) ) ) ).
fof(t45_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => B=k2_xboole_0(A, k4_xboole_0(B, A))) ) ) ).
fof(t48_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => r1_tarski(B, k2_pre_topc(A, B))) ) ) ) ).
fof(t49_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r1_tarski(B, C) => r1_tarski(k2_pre_topc(A, B), k2_pre_topc(A, C))) ) ) ) ) ) ) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t52_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v4_pre_topc(B, A) => k2_pre_topc(A, B)=B)  &  ( (v2_pre_topc(A) & k2_pre_topc(A, B)=B)  => v4_pre_topc(B, A)) ) ) ) ) ) ).
fof(t55_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r2_hidden(B, k2_pre_topc(A, k6_domain_1(u1_struct_0(A), C))) => k2_pre_topc(A, k6_domain_1(u1_struct_0(A), B))=k2_pre_topc(A, k6_domain_1(u1_struct_0(A), C))) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t60_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v2_tex_2(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  ~ ( (r2_hidden(C, k2_pre_topc(A, B)) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ~ ( (r2_hidden(D, B) & k9_subset_1(u1_struct_0(A), B, k2_pre_topc(A, k6_domain_1(u1_struct_0(A), C)))=k6_domain_1(u1_struct_0(A), D)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t63_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_xboole_0(B, C))  => r1_xboole_0(A, C)) ) ) ) ).
fof(t64_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) &  (v3_tdlat_3(A) & l1_pre_topc(A)) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v3_tex_2(B, A) <=>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (? [D] :  (m1_subset_1(D, u1_struct_0(A)) &  (r2_hidden(D, B) & k9_subset_1(u1_struct_0(A), B, k2_pre_topc(A, k6_domain_1(u1_struct_0(A), C)))=k6_domain_1(u1_struct_0(A), D)) ) ) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (r2_hidden(C, A) =>  (B=k1_xboole_0 | r2_hidden(k1_funct_1(D, C), B)) ) ) ) ) ) ) ).
fof(t7_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(A, k2_xboole_0(A, B))) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
