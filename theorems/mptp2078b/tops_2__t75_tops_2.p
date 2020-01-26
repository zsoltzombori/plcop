% Mizar problem: t75_tops_2,tops_2,1419,79 
fof(t75_tops_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v2_pre_topc(B) & l1_pre_topc(B)) )  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v5_pre_topc(C, A, B) & v2_connsp_1(D, A))  => v2_connsp_1(k7_relset_1(u1_struct_0(A), u1_struct_0(B), C, D), B)) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k4_subset_1(A, C, B)) ) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d12_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  (C=k9_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (r2_hidden(E, k1_relat_1(A)) &  (r2_hidden(E, B) & D=k1_funct_1(A, E)) ) ) ) ) ) ) ) ) ) ).
fof(d13_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  (C=k10_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, k1_relat_1(A)) & r2_hidden(k1_funct_1(A, D), B)) ) ) ) ) ) ) ) ).
fof(d1_connsp_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r1_connsp_1(A, B, C) <=>  (r1_xboole_0(k2_pre_topc(A, B), C) & r1_xboole_0(B, k2_pre_topc(A, C))) ) ) ) ) ) ) ) ).
fof(d1_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( ( (B=k1_xboole_0 => A=k1_xboole_0)  =>  (v1_funct_2(C, A, B) <=> A=k1_relset_1(A, B, C)) )  &  (B=k1_xboole_0 =>  (A=k1_xboole_0 |  (v1_funct_2(C, A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(dt_k10_relat_1, axiom, $true).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k1_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k2_pre_topc(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => m1_subset_1(k4_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k7_relset_1(A, B, C, D), k1_zfmisc_1(B))) ) ).
fof(dt_k8_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k8_relset_1(A, B, C, D), k1_zfmisc_1(A))) ) ).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_2_1_tops_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(o_2_1_tops_2(A, B), B)) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, B)=B) ) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(projectivity_k2_pre_topc, axiom,  (! [A, B] :  ( (l1_pre_topc(A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => k2_pre_topc(A, k2_pre_topc(A, B))=k2_pre_topc(A, B)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k2_xboole_0(B, C)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k9_relat_1(C, D)) ) ).
fof(redefinition_k8_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k8_relset_1(A, B, C, D)=k10_relat_1(C, D)) ) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(symmetry_r1_connsp_1, axiom,  (! [A, B, C] :  ( (l1_pre_topc(A) &  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) )  =>  (r1_connsp_1(A, B, C) => r1_connsp_1(A, C, B)) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t137_funct_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  => k10_relat_1(C, k3_xboole_0(A, B))=k3_xboole_0(k10_relat_1(C, A), k10_relat_1(C, B))) ) ) ) ).
fof(t146_funct_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, k1_relat_1(B)) => r1_tarski(A, k10_relat_1(B, k9_relat_1(B, A)))) ) ) ) ).
fof(t16_connsp_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v2_connsp_1(B, A) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (B=k4_subset_1(u1_struct_0(A), C, D) &  (r1_connsp_1(A, C, D) &  ( ~ (C=k1_struct_0(A))  &  ~ (D=k1_struct_0(A)) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t171_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k10_relat_1(A, k1_xboole_0)=k1_xboole_0) ) ).
fof(t175_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => k10_relat_1(C, k2_xboole_0(A, B))=k2_xboole_0(k10_relat_1(C, A), k10_relat_1(C, B))) ) ) ) ).
fof(t17_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(k3_xboole_0(A, B), A)) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t23_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_xboole_0(A, k2_xboole_0(B, C))=k2_xboole_0(k3_xboole_0(A, B), k3_xboole_0(A, C))) ) ) ).
fof(t26_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, B) => r1_tarski(k3_xboole_0(A, C), k3_xboole_0(B, C))) ) ) ) ).
fof(t28_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => k3_xboole_0(A, B)=A) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t3_xboole_1, axiom,  (! [A] :  (r1_tarski(A, k1_xboole_0) => A=k1_xboole_0) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t56_tops_2, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  ( (v2_pre_topc(B) & l1_pre_topc(B))  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (v5_pre_topc(C, A, B) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) => r1_tarski(k2_pre_topc(A, k8_relset_1(u1_struct_0(A), u1_struct_0(B), C, D)), k8_relset_1(u1_struct_0(A), u1_struct_0(B), C, k2_pre_topc(B, D)))) ) ) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_connsp_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) =>  ( (r1_connsp_1(A, B, C) &  (r1_tarski(D, B) & r1_tarski(E, C)) )  => r1_connsp_1(A, D, E)) ) ) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
