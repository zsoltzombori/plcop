% Mizar problem: t27_tops_2,tops_2,336,48 
fof(t27_tops_2, conjecture,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ( (v1_tops_2(B, A) & v1_finset_1(B))  => v3_pre_topc(k6_setfam_1(u1_struct_0(A), B), A)) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k1_nat_1, axiom,  (! [A, B] :  ( (v7_ordinal1(A) & m1_subset_1(B, k5_numbers))  => k1_nat_1(A, B)=k1_nat_1(B, A)) ) ).
fof(commutativity_k2_nat_1, axiom,  (! [A, B] :  ( (m1_subset_1(A, k5_numbers) & v7_ordinal1(B))  => k2_nat_1(A, B)=k2_nat_1(B, A)) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k2_xcmplx_0, axiom,  (! [A, B] :  ( (v1_xcmplx_0(A) & v1_xcmplx_0(B))  => k2_xcmplx_0(A, B)=k2_xcmplx_0(B, A)) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(connectedness_r1_xxreal_0, axiom,  (! [A, B] :  ( (v1_xxreal_0(A) & v1_xxreal_0(B))  =>  (r1_xxreal_0(A, B) | r1_xxreal_0(B, A)) ) ) ).
fof(d16_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] : k11_relat_1(A, B)=k9_relat_1(A, k1_tarski(B))) ) ) ).
fof(d1_tops_2, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (v1_tops_2(B, A) <=>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (r2_hidden(C, B) => v3_pre_topc(C, A)) ) ) ) ) ) ) ) ).
fof(d2_finseq_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v1_finseq_1(A) <=>  (? [B] :  (v7_ordinal1(B) & k1_relat_1(A)=k2_finseq_1(B)) ) ) ) ) ).
fof(d5_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d5_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v3_pre_topc(B, A) <=> r2_hidden(B, u1_pre_topc(A))) ) ) ) ) ).
fof(dt_k11_relat_1, axiom, $true).
fof(dt_k1_finseq_1, axiom, $true).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_nat_1, axiom,  (! [A, B] :  ( (v7_ordinal1(A) & m1_subset_1(B, k5_numbers))  => m2_subset_1(k1_nat_1(A, B), k1_numbers, k5_numbers)) ) ).
fof(dt_k1_numbers, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_setfam_1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_finseq_1, axiom,  (! [A] :  (v7_ordinal1(A) => m1_subset_1(k2_finseq_1(A), k1_zfmisc_1(k5_numbers))) ) ).
fof(dt_k2_nat_1, axiom,  (! [A, B] :  ( (m1_subset_1(A, k5_numbers) & v7_ordinal1(B))  => m2_subset_1(k2_nat_1(A, B), k1_numbers, k5_numbers)) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_xcmplx_0, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_finseq_1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) & v1_finseq_1(A)) )  => m1_subset_1(k4_finseq_1(A), k1_zfmisc_1(k5_numbers))) ) ).
fof(dt_k4_ordinal1, axiom, $true).
fof(dt_k5_numbers, axiom, m1_subset_1(k5_numbers, k1_zfmisc_1(k1_numbers))).
fof(dt_k6_numbers, axiom, m2_subset_1(k6_numbers, k1_numbers, k5_numbers)).
fof(dt_k6_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(k6_setfam_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(A))) )  =>  (! [C] :  (m2_subset_1(C, A, B) => m1_subset_1(C, A)) ) ) ) ).
fof(dt_u1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => m1_subset_1(u1_pre_topc(A), k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(A))) )  =>  (? [C] : m2_subset_1(C, A, B)) ) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(redefinition_k1_nat_1, axiom,  (! [A, B] :  ( (v7_ordinal1(A) & m1_subset_1(B, k5_numbers))  => k1_nat_1(A, B)=k2_xcmplx_0(A, B)) ) ).
fof(redefinition_k2_finseq_1, axiom,  (! [A] :  (v7_ordinal1(A) => k2_finseq_1(A)=k1_finseq_1(A)) ) ).
fof(redefinition_k2_nat_1, axiom,  (! [A, B] :  ( (m1_subset_1(A, k5_numbers) & v7_ordinal1(B))  => k2_nat_1(A, B)=k2_xcmplx_0(A, B)) ) ).
fof(redefinition_k4_finseq_1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) & v1_finseq_1(A)) )  => k4_finseq_1(A)=k1_relat_1(A)) ) ).
fof(redefinition_k5_numbers, axiom, k5_numbers=k4_ordinal1).
fof(redefinition_k6_numbers, axiom, k6_numbers=k1_xboole_0).
fof(redefinition_k6_setfam_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => k6_setfam_1(A, B)=k1_setfam_1(B)) ) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(redefinition_m2_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  & m1_subset_1(B, k1_zfmisc_1(A))) )  =>  (! [C] :  (m2_subset_1(C, A, B) <=> m1_subset_1(C, B)) ) ) ) ).
fof(reflexivity_r1_xxreal_0, axiom,  (! [A, B] :  ( (v1_xxreal_0(A) & v1_xxreal_0(B))  => r1_xxreal_0(A, A)) ) ).
fof(rqLessOrEqual__r1_xxreal_0__r0_r0, axiom, r1_xxreal_0(0, 0)).
fof(rqLessOrEqual__r1_xxreal_0__r0_r1, axiom, r1_xxreal_0(0, 1)).
fof(rqLessOrEqual__r1_xxreal_0__r0_r2, axiom, r1_xxreal_0(0, 2)).
fof(rqLessOrEqual__r1_xxreal_0__r1_r0, axiom,  ~ (r1_xxreal_0(1, 0)) ).
fof(rqLessOrEqual__r1_xxreal_0__r1_r1, axiom, r1_xxreal_0(1, 1)).
fof(rqLessOrEqual__r1_xxreal_0__r1_r2, axiom, r1_xxreal_0(1, 2)).
fof(rqLessOrEqual__r1_xxreal_0__r2_r0, axiom,  ~ (r1_xxreal_0(2, 0)) ).
fof(rqLessOrEqual__r1_xxreal_0__r2_r1, axiom,  ~ (r1_xxreal_0(2, 1)) ).
fof(rqLessOrEqual__r1_xxreal_0__r2_r2, axiom, r1_xxreal_0(2, 2)).
fof(rqRealAdd__k2_xcmplx_0__r0_r0_r0, axiom, k2_xcmplx_0(0, 0)=0).
fof(rqRealAdd__k2_xcmplx_0__r0_r1_r1, axiom, k2_xcmplx_0(0, 1)=1).
fof(rqRealAdd__k2_xcmplx_0__r0_r2_r2, axiom, k2_xcmplx_0(0, 2)=2).
fof(rqRealAdd__k2_xcmplx_0__r1_r0_r1, axiom, k2_xcmplx_0(1, 0)=1).
fof(rqRealAdd__k2_xcmplx_0__r1_r1_r2, axiom, k2_xcmplx_0(1, 1)=2).
fof(rqRealAdd__k2_xcmplx_0__r2_r0_r2, axiom, k2_xcmplx_0(2, 0)=2).
fof(s2_nat_1__e9_28__tops_2, axiom,  (! [A, B, C] :  ( ( (v2_pre_topc(A) & l1_pre_topc(A))  &  ( (v1_relat_1(B) &  (v1_funct_1(B) & v1_finseq_1(B)) )  & v7_ordinal1(C)) )  =>  ( ( (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ( (D=k9_relat_1(B, k2_finseq_1(k6_numbers)) &  (r1_xxreal_0(k6_numbers, C) & r1_xxreal_0(1, C)) )  => v3_pre_topc(k6_setfam_1(u1_struct_0(A), D), A)) ) )  &  (! [E] :  (v7_ordinal1(E) =>  ( (! [F] :  (m1_subset_1(F, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ( (F=k9_relat_1(B, k2_finseq_1(E)) &  (r1_xxreal_0(E, C) & r1_xxreal_0(1, C)) )  => v3_pre_topc(k6_setfam_1(u1_struct_0(A), F), A)) ) )  =>  (! [G] :  (m1_subset_1(G, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ( (G=k9_relat_1(B, k2_finseq_1(k1_nat_1(E, 1))) &  (r1_xxreal_0(k1_nat_1(E, 1), C) & r1_xxreal_0(1, C)) )  => v3_pre_topc(k6_setfam_1(u1_struct_0(A), G), A)) ) ) ) ) ) )  =>  (! [E] :  (v7_ordinal1(E) =>  (! [H] :  (m1_subset_1(H, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  ( (H=k9_relat_1(B, k2_finseq_1(E)) &  (r1_xxreal_0(E, C) & r1_xxreal_0(1, C)) )  => v3_pre_topc(k6_setfam_1(u1_struct_0(A), H), A)) ) ) ) ) ) ) ) ).
fof(spc0_boole, axiom, v1_xboole_0(0)).
fof(spc0_numerals, axiom,  (m2_subset_1(0, k1_numbers, k5_numbers) &  (m1_subset_1(0, k5_numbers) & m1_subset_1(0, k1_numbers)) ) ).
fof(spc1_boole, axiom,  ~ (v1_xboole_0(1)) ).
fof(spc1_numerals, axiom,  ( (v2_xxreal_0(1) & m2_subset_1(1, k1_numbers, k5_numbers))  &  (m1_subset_1(1, k5_numbers) & m1_subset_1(1, k1_numbers)) ) ).
fof(spc2_boole, axiom,  ~ (v1_xboole_0(2)) ).
fof(spc2_numerals, axiom,  ( (v2_xxreal_0(2) & m2_subset_1(2, k1_numbers, k5_numbers))  &  (m1_subset_1(2, k5_numbers) & m1_subset_1(2, k1_numbers)) ) ).
fof(spc6_arithm, axiom,  (! [A, B, C] :  ( (v1_xcmplx_0(A) &  (v1_xcmplx_0(B) & v1_xcmplx_0(C)) )  => k2_xcmplx_0(k2_xcmplx_0(A, B), C)=k2_xcmplx_0(A, k2_xcmplx_0(B, C))) ) ).
fof(t10_setfam_1, axiom,  (! [A] :  (! [B] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ~ (k1_setfam_1(k2_xboole_0(A, B))=k3_xboole_0(k1_setfam_1(A), k1_setfam_1(B))) ) ) ) ) ) ).
fof(t117_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r2_hidden(A, k1_relat_1(B)) => k11_relat_1(B, A)=k1_tarski(k1_funct_1(B, A))) ) ) ) ).
fof(t11_finseq_1, axiom,  (! [A] :  (v7_ordinal1(A) => k2_xboole_0(k2_finseq_1(A), k1_tarski(k1_nat_1(A, 1)))=k2_finseq_1(k1_nat_1(A, 1))) ) ).
fof(t11_setfam_1, axiom,  (! [A] : k1_setfam_1(k1_tarski(A))=A) ).
fof(t12_nat_1, axiom,  (! [A] :  (v7_ordinal1(A) =>  (! [B] :  (v7_ordinal1(B) =>  (! [C] :  (v7_ordinal1(C) =>  (r1_xxreal_0(A, B) => r1_xxreal_0(A, k2_xcmplx_0(B, C))) ) ) ) ) ) ) ).
fof(t13_nat_1, axiom,  (! [A] :  (v7_ordinal1(A) =>  (! [B] :  (v7_ordinal1(B) =>  ( ~ (r1_xxreal_0(k1_nat_1(B, 1), A))  <=> r1_xxreal_0(A, B)) ) ) ) ) ).
fof(t144_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k9_relat_1(B, A), k2_relat_1(B))) ) ) ).
fof(t146_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k9_relat_1(A, k1_relat_1(A))=k2_relat_1(A)) ) ).
fof(t149_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k9_relat_1(A, k1_xboole_0)=k1_xboole_0) ) ).
fof(t152_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  ~ ( ( ~ (A=k1_xboole_0)  &  (r1_tarski(A, k1_relat_1(B)) & k9_relat_1(B, A)=k1_xboole_0) ) ) ) ) ) ).
fof(t153_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => k9_relat_1(C, k2_xboole_0(A, B))=k2_xboole_0(k9_relat_1(C, A), k9_relat_1(C, B))) ) ) ) ).
fof(t1_arithm, axiom,  (! [A] :  (v1_xcmplx_0(A) => k2_xcmplx_0(A, k6_numbers)=A) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_numerals, axiom, m1_subset_1(k1_xboole_0, k4_ordinal1)).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_nat_1, axiom,  (! [A] :  (v7_ordinal1(A) => r1_xxreal_0(k6_numbers, A)) ) ).
fof(t2_setfam_1, axiom, k1_setfam_1(k1_xboole_0)=k1_xboole_0).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t37_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(t38_tops_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v3_pre_topc(B, A) & v3_pre_topc(C, A))  => v3_pre_topc(k9_subset_1(u1_struct_0(A), B, C), A)) ) ) ) ) ) ) ).
fof(t3_finseq_1, axiom,  (! [A] :  (v7_ordinal1(A) =>  (! [B] :  (v7_ordinal1(B) =>  (r2_hidden(A, k2_finseq_1(B)) <=>  (r1_xxreal_0(1, A) & r1_xxreal_0(A, B)) ) ) ) ) ) ).
fof(t3_nat_1, axiom,  (! [A] :  (v7_ordinal1(A) =>  ~ ( ( ~ (k6_numbers=A)  & r1_xxreal_0(A, k6_numbers)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t3_tops_2, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) =>  (! [C] :  (r1_tarski(C, B) => m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))) ) ) ) ) ) ).
fof(t4_finseq_1, axiom,  (k2_finseq_1(1)=k1_tarski(1) & k2_finseq_1(2)=k2_tarski(1, 2)) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_pre_topc, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  => r2_hidden(k1_xboole_0, u1_pre_topc(A))) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t73_finseq_1, axiom,  (! [A] :  (v1_finset_1(A) <=>  (? [B] :  ( (v1_relat_1(B) &  (v1_funct_1(B) & v1_finseq_1(B)) )  & A=k2_relat_1(B)) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_finseq_1, axiom,  (! [A] :  (v7_ordinal1(A) =>  (! [B] :  (v7_ordinal1(B) =>  (r1_xxreal_0(A, B) <=> r1_tarski(k2_finseq_1(A), k2_finseq_1(B))) ) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_xreal_1, axiom,  (! [A] :  (v1_xreal_0(A) =>  (! [B] :  (v1_xreal_0(B) =>  (! [C] :  (v1_xreal_0(C) =>  (r1_xxreal_0(A, B) <=> r1_xxreal_0(k2_xcmplx_0(A, C), k2_xcmplx_0(B, C))) ) ) ) ) ) ) ).
fof(t9_xreal_1, axiom,  (! [A] :  (v1_xreal_0(A) =>  (! [B] :  (v1_xreal_0(B) =>  (! [C] :  (v1_xreal_0(C) =>  (! [D] :  (v1_xreal_0(D) =>  ( (r1_xxreal_0(A, B) & r1_xxreal_0(C, D))  => r1_xxreal_0(k2_xcmplx_0(A, C), k2_xcmplx_0(B, D))) ) ) ) ) ) ) ) ) ).
fof(cc17_membered, axiom,  (! [A] :  (v6_membered(A) =>  (! [B] :  (m1_subset_1(B, A) => v7_ordinal1(B)) ) ) ) ).
fof(cc1_xreal_0, axiom,  (! [A] :  (v7_ordinal1(A) => v1_xreal_0(A)) ) ).
fof(cc3_xreal_0, axiom,  (! [A] :  (v1_xreal_0(A) => v1_xxreal_0(A)) ) ).
fof(fc1_finseq_1, axiom,  (! [A] :  ( (v7_ordinal1(A) & v1_xboole_0(A))  => v1_xboole_0(k1_finseq_1(A))) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc23_finseq_1, axiom,  (! [A] :  ( (v7_ordinal1(A) &  ~ (v1_xboole_0(A)) )  =>  ~ (v1_xboole_0(k1_finseq_1(A))) ) ) ).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
fof(fc6_membered, axiom, v6_membered(k4_ordinal1)).
