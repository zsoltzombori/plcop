% Mizar problem: t24_compts_1,compts_1,1031,72 
fof(t24_compts_1, conjecture,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & l1_pre_topc(C))  =>  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, u1_struct_0(A), u1_struct_0(C)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(C))))) )  =>  ( (v5_pre_topc(D, A, C) &  (k2_relset_1(u1_struct_0(A), u1_struct_0(C), D)=k2_struct_0(C) & v2_compts_1(B, A)) )  => v2_compts_1(k7_relset_1(u1_struct_0(A), u1_struct_0(C), D, B), C)) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d12_setfam_1, axiom,  (! [A] :  (! [B] :  (m1_setfam_1(B, A) <=> r1_tarski(A, k3_tarski(B))) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( (B=k1_xboole_0 => A=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, B, C)) )  &  (B=k1_xboole_0 =>  (A=k1_xboole_0 |  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(d3_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k2_struct_0(A)=u1_struct_0(A)) ) ).
fof(d7_compts_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v2_compts_1(B, A) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ~ ( (m1_setfam_1(C, B) &  (v1_tops_2(C, A) &  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ~ ( (r1_tarski(D, C) &  (m1_setfam_1(D, B) & v1_finset_1(D)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k10_relat_1, axiom, $true).
fof(dt_k1_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k1_funct_3(A)) & v1_funct_1(k1_funct_3(A))) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_funct_3, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(B))  &  (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  =>  (v1_funct_1(k2_funct_3(A, B, C)) &  (v1_funct_2(k2_funct_3(A, B, C), k1_zfmisc_1(A), k1_zfmisc_1(B)) & m1_subset_1(k2_funct_3(A, B, C), k1_zfmisc_1(k2_zfmisc_1(k1_zfmisc_1(A), k1_zfmisc_1(B))))) ) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k2_relset_1(A, B, C), k1_zfmisc_1(B))) ) ).
fof(dt_k2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k2_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k3_funct_3(A)) & v1_funct_1(k3_funct_3(A))) ) ) ).
fof(dt_k3_tarski, axiom, $true).
fof(dt_k5_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k5_setfam_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k7_relset_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k8_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k8_relset_1(A, B, C, D), k1_zfmisc_1(A))) ) ).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_setfam_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_setfam_1, axiom,  (! [A] :  (? [B] : m1_setfam_1(B, A)) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k2_funct_3, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(B))  &  (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  => k2_funct_3(A, B, C)=k1_funct_3(C)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k2_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_k5_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => k5_setfam_1(A, B)=k3_tarski(B)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k9_relat_1(C, D)) ) ).
fof(redefinition_k8_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k8_relset_1(A, B, C, D)=k10_relat_1(C, D)) ) ).
fof(t145_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  => r1_tarski(k9_relat_1(B, k10_relat_1(B, A)), A)) ) ) ).
fof(t146_funct_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, k1_relat_1(B)) => r1_tarski(A, k10_relat_1(B, k9_relat_1(B, A)))) ) ) ) ).
fof(t156_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(A, B) => r1_tarski(k9_relat_1(C, A), k9_relat_1(C, B))) ) ) ) ) ).
fof(t16_funct_3, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_tarski(A, k1_zfmisc_1(k1_relat_1(B))) => k9_relat_1(B, k3_tarski(A))=k3_tarski(k9_relat_1(k1_funct_3(B), A))) ) ) ) ).
fof(t178_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(A, B) => r1_tarski(k10_relat_1(C, A), k10_relat_1(C, B))) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t30_funct_3, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_tarski(A, k1_zfmisc_1(k2_relat_1(B))) => k3_tarski(k9_relat_1(k3_funct_3(B), A))=k10_relat_1(B, k3_tarski(A))) ) ) ) ).
fof(t33_funct_3, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  => r1_tarski(k9_relat_1(k3_funct_3(B), A), k10_relat_1(k1_funct_3(B), A))) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t54_tops_2, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_struct_0(B))  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(B)))) => m1_subset_1(k9_relat_1(k3_funct_3(C), D), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ) ) ) ) ) ) ).
fof(t59_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_pre_topc(B))  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(B)))) =>  ( (v5_pre_topc(C, A, B) & v1_tops_2(D, B))  =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (E=k9_relat_1(k3_funct_3(C), D) => v1_tops_2(E, A)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(fc13_finset_1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  & v1_finset_1(B))  => v1_finset_1(k9_relat_1(A, B))) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
