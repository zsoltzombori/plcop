% Mizar problem: t16_compts_1,compts_1,631,48 
fof(t16_compts_1, conjecture,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  ( (v8_pre_topc(A) & v2_compts_1(B, A))  => v4_pre_topc(B, A)) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d5_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, B)=k4_xboole_0(A, B)) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k3_subset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_pre_topc, axiom,  (? [A] : l1_pre_topc(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(involutiveness_k3_subset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k3_subset_1(A, k3_subset_1(A, B))=B) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t15_compts_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (v8_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v2_compts_1(B, A) =>  (B=k1_xboole_0 |  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  ~ ( (r2_hidden(C, k3_subset_1(u1_struct_0(A), B)) &  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(u1_struct_0(A))) =>  ~ ( (v3_pre_topc(D, A) &  (v3_pre_topc(E, A) &  (r2_hidden(C, D) &  (r1_tarski(B, E) & r1_xboole_0(D, E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t29_tops_1, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v4_pre_topc(B, A) <=> v3_pre_topc(k3_subset_1(u1_struct_0(A), B), A)) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t31_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (r1_tarski(B, C) <=> r1_tarski(k3_subset_1(A, C), k3_subset_1(A, B))) ) ) ) ) ) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t44_subset_1, axiom,  (! [A] :  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(A)) =>  (r1_xboole_0(B, k3_subset_1(A, C)) <=> r1_tarski(B, C)) ) ) ) ) ) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t57_tops_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v3_pre_topc(B, A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) &  (v3_pre_topc(D, A) &  (r1_tarski(D, B) & r2_hidden(C, D)) ) ) ) ) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc2_pre_topc, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v1_xboole_0(B) => v4_pre_topc(B, A)) ) ) ) ) ).
