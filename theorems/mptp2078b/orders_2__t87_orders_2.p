% Mizar problem: t87_orders_2,orders_2,1552,24 
fof(t87_orders_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_orders_1(B, k1_orders_1(u1_struct_0(A))) =>  ~ (k3_tarski(k4_orders_2(A, B))=k1_xboole_0) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d17_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_orders_1(B, k1_orders_1(u1_struct_0(A))) =>  (! [C] :  (C=k4_orders_2(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=> m2_orders_2(D, A, B)) ) ) ) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_orders_1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_tarski, axiom, $true).
fof(dt_k4_orders_2, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k7_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k9_setfam_1, axiom,  (! [A] : m1_subset_1(k9_setfam_1(A), k1_zfmisc_1(k1_zfmisc_1(A)))) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_orders_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_orders_1(B, A) =>  (v1_funct_1(B) &  (v1_funct_2(B, A, k3_tarski(A)) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, k3_tarski(A))))) ) ) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m2_orders_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  & m1_orders_1(B, k1_orders_1(u1_struct_0(A))))  =>  (! [C] :  (m2_orders_2(C, A, B) =>  (v6_orders_2(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_orders_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] : m1_orders_1(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m2_orders_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  & m1_orders_1(B, k1_orders_1(u1_struct_0(A))))  =>  (? [C] : m2_orders_2(C, A, B)) ) ) ).
fof(redefinition_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k7_subset_1(A, B, C)=k4_xboole_0(B, C)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t78_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_orders_1(B, k1_orders_1(u1_struct_0(A))) => m2_orders_2(k1_tarski(k1_funct_1(B, u1_struct_0(A))), A, B)) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t91_orders_1, axiom,  (! [A] :  ( ~ ( ( (? [B] :  ( ~ (B=k1_xboole_0)  & r2_hidden(B, A)) )  & k3_tarski(A)=k1_xboole_0) )  &  ~ ( ( ~ (k3_tarski(A)=k1_xboole_0)  &  (! [B] :  ~ ( ( ~ (B=k1_xboole_0)  & r2_hidden(B, A)) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(fc1_orders_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  ~ (v1_xboole_0(k1_orders_1(A))) ) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
