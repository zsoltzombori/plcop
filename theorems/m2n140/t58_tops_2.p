fof(t58_tops_2, conjecture,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_pre_topc(B))  =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (v3_tops_2(C, A, B) <=>  (k1_relset_1(u1_struct_0(A), C)=k2_struct_0(A) &  (k2_relset_1(u1_struct_0(B), C)=k2_struct_0(B) &  (v2_funct_1(C) &  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  (v4_pre_topc(D, A) <=> v4_pre_topc(k7_relset_1(u1_struct_0(A), u1_struct_0(B), C, D), B)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(cc6_funct_2, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (v1_funct_1(C) &  (v2_funct_1(C) & v2_funct_2(C, B)) )  =>  (v1_funct_1(C) & v3_funct_2(C, A, B)) ) ) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d3_funct_2, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  =>  (v2_funct_2(B, A) <=> k2_relset_1(A, B)=A) ) ) ) ).
fof(d3_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k2_struct_0(A)=u1_struct_0(A)) ) ).
fof(d4_tops_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (v3_funct_2(C, A, B) => k2_tops_2(A, B, C)=k2_funct_1(C)) ) ) ) ) ).
fof(d5_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (l1_pre_topc(B) =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (v3_tops_2(C, A, B) <=>  (k1_relset_1(u1_struct_0(A), C)=k2_struct_0(A) &  (k2_relset_1(u1_struct_0(B), C)=k2_struct_0(B) &  (v2_funct_1(C) &  (v5_pre_topc(C, A, B) & v5_pre_topc(k2_tops_2(u1_struct_0(A), u1_struct_0(B), C), B, A)) ) ) ) ) ) ) ) ) ) ) ).
fof(d6_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (l1_pre_topc(B) =>  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (v5_pre_topc(C, A, B) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(B))) =>  (v4_pre_topc(D, B) => v4_pre_topc(k8_relset_1(u1_struct_0(A), u1_struct_0(B), C, D), A)) ) ) ) ) ) ) ) ) ) ).
fof(dt_k2_tops_2, axiom,  (! [A, B, C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (v1_funct_1(k2_tops_2(A, B, C)) &  (v1_funct_2(k2_tops_2(A, B, C), B, A) & m1_subset_1(k2_tops_2(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, A)))) ) ) ) ).
fof(dt_k8_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k8_relset_1(A, B, C, D), k1_zfmisc_1(A))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(fc6_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) )  =>  (v1_relat_1(k2_funct_1(A)) &  (v1_funct_1(k2_funct_1(A)) & v2_funct_1(k2_funct_1(A))) ) ) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(redefinition_k7_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k7_relset_1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(redefinition_k8_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k8_relset_1(A, B, C, D)=k8_relat_1(C, D)) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t76_funct_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, k9_xtuple_0(B)) => r1_tarski(A, k8_relat_1(B, k7_relat_1(B, A)))) ) ) ) ).
fof(t77_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_tarski(A, k10_xtuple_0(B)) => k7_relat_1(B, k8_relat_1(B, A))=A) ) ) ) ).
fof(t82_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (v2_funct_1(B) => r1_tarski(k8_relat_1(B, k7_relat_1(B, A)), A)) ) ) ) ).
fof(t84_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (v2_funct_1(B) => k7_relat_1(B, A)=k8_relat_1(k2_funct_1(B), A)) ) ) ) ).
