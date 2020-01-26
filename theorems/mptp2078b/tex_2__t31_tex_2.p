% Mizar problem: t31_tex_2,tex_2,1024,10 
fof(t31_tex_2, conjecture,  (! [A] :  (l1_pre_topc(A) =>  ( (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v4_pre_topc(B, A) & v4_pre_topc(C, A))  =>  (v4_pre_topc(k9_subset_1(u1_struct_0(A), B, C), A) & v4_pre_topc(k4_subset_1(u1_struct_0(A), B, C), A)) ) ) ) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v4_pre_topc(B, A) &  (v4_pre_topc(C, A) &  (v2_tex_2(B, A) & v2_tex_2(C, A)) ) )  => v2_tex_2(k4_subset_1(u1_struct_0(A), B, C), A)) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc10_funct_1, axiom,  (! [A] :  (v4_funct_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v4_funct_1(B)) ) ) ) ).
fof(cc1_compts_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) => v2_compts_1(B, A)) ) ) ) ) ).
fof(cc1_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_funct_1(A)) ) ).
fof(cc1_realset1, axiom,  (! [A] :  ( ~ (v1_zfmisc_1(A))  =>  ~ (v1_xboole_0(A)) ) ) ).
fof(cc1_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_relat_1(A)) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(cc1_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (v1_subset_1(B, A) => v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_zfmisc_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_zfmisc_1(A)) ) ).
fof(cc2_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ) ).
fof(cc2_realset1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_zfmisc_1(A)) ) ).
fof(cc2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B)) ) ) ) ).
fof(cc2_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ~ (v1_subset_1(B, A))  =>  ~ (v1_xboole_0(B)) ) ) ) ) ) ).
fof(cc2_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ~ (v1_xboole_0(B))  =>  ~ (v1_subset_1(B, A)) ) ) ) ) ) ).
fof(cc2_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) => v2_tops_1(B, A)) ) ) ) ) ).
fof(cc3_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_funct_1(B)) ) ) ) ).
fof(cc3_realset1, axiom,  (! [A] :  (v1_zfmisc_1(A) => v1_finset_1(A)) ) ).
fof(cc3_relat_1, axiom,  (! [A] :  ( (v1_xboole_0(A) & v1_relat_1(A))  =>  (v1_relat_1(A) & v3_relat_1(A)) ) ) ).
fof(cc3_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (v1_xboole_0(B) => v1_subset_1(B, A)) ) ) ) ) ).
fof(cc3_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ( ~ (v1_xboole_0(B))  &  ~ (v1_subset_1(B, A)) )  =>  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ) ).
fof(cc4_funct_1, axiom,  (! [A] :  ( (v1_xboole_0(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc4_realset1, axiom,  (! [A] :  ( ~ (v1_finset_1(A))  =>  ~ (v1_zfmisc_1(A)) ) ) ).
fof(cc4_relat_1, axiom,  (! [A] :  ( (v1_xboole_0(A) & v1_relat_1(A))  =>  (v1_relat_1(A) & v2_relat_1(A)) ) ) ).
fof(cc4_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ~ (v1_subset_1(B, A)) ) ) ) ) ).
fof(cc4_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B))  =>  ( ~ (v1_xboole_0(B))  & v1_subset_1(B, A)) ) ) ) ) ) ).
fof(cc5_funct_1, axiom,  (! [A] :  (v1_zfmisc_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_zfmisc_1(B)) ) ) ) ).
fof(cc5_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  ( ( ~ (v1_xboole_0(B))  &  ~ (v1_subset_1(B, A)) )  =>  ( ~ (v1_xboole_0(B))  &  ~ (v1_zfmisc_1(B)) ) ) ) ) ) ) ).
fof(cc6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) )  =>  ( ~ (v1_zfmisc_1(A))  &  (v1_relat_1(A) & v1_funct_1(A)) ) ) ) ).
fof(cc7_funct_1, axiom,  (! [A] :  ( (v1_zfmisc_1(A) &  (v1_relat_1(A) & v1_funct_1(A)) )  =>  (v1_relat_1(A) &  (v1_funct_1(A) & v3_funct_1(A)) ) ) ) ).
fof(cc8_funct_1, axiom,  (! [A] :  (v1_xboole_0(A) => v4_funct_1(A)) ) ).
fof(cc9_funct_1, axiom,  (! [A] :  (v4_funct_1(A) =>  (! [B] :  (m1_subset_1(B, A) =>  (v1_relat_1(B) & v1_funct_1(B)) ) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k4_subset_1(A, C, B)) ) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d6_tex_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v2_tex_2(B, A) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (r1_tarski(C, B) &  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (v4_pre_topc(D, A) & k9_subset_1(u1_struct_0(A), B, D)=C) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => m1_subset_1(k4_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fc1_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k3_xboole_0(A, B))) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc3_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k2_xboole_0(A, B))) ) ).
fof(fc4_xboole_0, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(A))  =>  ~ (v1_xboole_0(k2_xboole_0(A, B))) ) ) ).
fof(fc5_xboole_0, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(A))  =>  ~ (v1_xboole_0(k2_xboole_0(B, A))) ) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, B)=B) ) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(rc1_funct_1, axiom,  (? [A] :  (v1_relat_1(A) & v1_funct_1(A)) ) ).
fof(rc1_realset1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v1_zfmisc_1(A)) ) ).
fof(rc1_relat_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v1_relat_1(A)) ) ).
fof(rc1_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_xboole_0(B)) ) ) ) ) ).
fof(rc1_tex_2, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ).
fof(rc1_xboole_0, axiom,  (? [A] : v1_xboole_0(A)) ).
fof(rc2_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) ) ) ).
fof(rc2_realset1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) ) ) ).
fof(rc2_relat_1, axiom,  (? [A] :  (v1_relat_1(A) & v2_relat_1(A)) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(rc2_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  &  (v1_zfmisc_1(B) & v1_subset_1(B, A)) ) ) ) ) ) ).
fof(rc2_xboole_0, axiom,  (? [A] :  ~ (v1_xboole_0(A)) ) ).
fof(rc3_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v2_relat_1(A) & v1_funct_1(A)) ) ) ).
fof(rc3_realset1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  & v1_zfmisc_1(B)) ) ) ) ) ).
fof(rc3_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_subset_1(B, A)) ) ) ) ).
fof(rc3_tex_2, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_zfmisc_1(A)) )  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ( ~ (v1_xboole_0(B))  &  ( ~ (v1_zfmisc_1(B))  &  ~ (v1_subset_1(B, A)) ) ) ) ) ) ) ).
fof(rc4_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  &  (v1_relat_1(A) &  (v2_relat_1(A) & v1_funct_1(A)) ) ) ) ).
fof(rc4_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_subset_1(B, A)) ) ) ) ).
fof(rc5_funct_1, axiom,  (? [A] :  (v1_relat_1(A) &  (v1_funct_1(A) &  ~ (v3_funct_1(A)) ) ) ) ).
fof(rc5_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & v2_tops_1(B, A)) ) ) ) ).
fof(rc7_funct_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v4_funct_1(A)) ) ).
fof(redefinition_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k2_xboole_0(B, C)) ) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(t17_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(k3_xboole_0(A, B), A)) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t23_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_xboole_0(A, k2_xboole_0(B, C))=k2_xboole_0(k3_xboole_0(A, B), k3_xboole_0(A, C))) ) ) ).
fof(t28_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => k3_xboole_0(A, B)=A) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
