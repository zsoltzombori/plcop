% Mizar problem: t162_orders_2,orders_2,1989,21 
fof(t162_orders_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  ~ ( ( (! [B] :  ( (v6_orders_2(B, A) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  =>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, B) => r3_orders_2(A, D, C)) ) ) ) ) ) )  &  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (? [C] :  (m1_subset_1(C, u1_struct_0(A)) & r2_orders_2(A, B, C)) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k4_subset_1(A, C, B)) ) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d10_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r2_orders_2(A, B, C) <=>  (r1_orders_2(A, B, C) &  ~ (B=C) ) ) ) ) ) ) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d11_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (v6_orders_2(B, A) <=> r7_relat_2(u1_orders_2(A), B)) ) ) ) ) ).
fof(d12_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => k1_orders_2(A, B)=a_2_0_orders_2(A, B)) ) ) ) ).
fof(d13_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => k2_orders_2(A, B)=a_2_1_orders_2(A, B)) ) ) ) ).
fof(d14_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k3_orders_2(A, B, C)=k9_subset_1(u1_struct_0(A), k2_orders_2(A, k6_domain_1(u1_struct_0(A), C)), B)) ) ) ) ) ) ).
fof(d16_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_orders_1(B, k1_orders_1(u1_struct_0(A))) =>  (! [C] :  ( (v6_orders_2(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))))  =>  (m2_orders_2(C, A, B) <=>  ( ~ (C=k1_xboole_0)  &  (r2_wellord1(u1_orders_2(A), C) &  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (r2_hidden(D, C) => k1_funct_1(B, k1_orders_2(A, k3_orders_2(A, C, D)))=D) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d17_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_orders_1(B, k1_orders_1(u1_struct_0(A))) =>  (! [C] :  (C=k4_orders_2(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=> m2_orders_2(D, A, B)) ) ) ) ) ) ) ) ).
fof(d1_orders_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  ( ~ (r2_hidden(k1_xboole_0, A))  =>  (! [B] :  ( (v1_funct_1(B) &  (v1_funct_2(B, A, k3_tarski(A)) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, k3_tarski(A))))) )  =>  (m1_orders_1(B, A) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(k1_funct_1(B, C), C)) ) ) ) ) ) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d1_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (! [C] :  (C=k1_wellord1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  ( ~ (D=B)  & r2_hidden(k4_tarski(D, B), A)) ) ) ) ) ) ) ) ).
fof(d2_orders_1, axiom,  (! [A] : k1_orders_1(A)=k7_subset_1(k1_zfmisc_1(A), k9_setfam_1(A), k1_tarski(k1_xboole_0))) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d3_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r1_wellord1(A, B) <=>  (! [C] :  ~ ( (r1_tarski(C, B) &  ( ~ (C=k1_xboole_0)  &  (! [D] :  ~ ( (r2_hidden(D, C) & r1_xboole_0(k1_wellord1(A, D), C)) ) ) ) ) ) ) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d4_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v3_orders_2(A) <=> r1_relat_2(u1_orders_2(A), u1_struct_0(A))) ) ) ).
fof(d4_tarski, axiom,  (! [A] :  (! [B] :  (B=k3_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(C, D) & r2_hidden(D, A)) ) ) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v4_orders_2(A) <=> r8_relat_2(u1_orders_2(A), u1_struct_0(A))) ) ) ).
fof(d5_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r2_wellord1(A, B) <=>  (r1_relat_2(A, B) &  (r8_relat_2(A, B) &  (r4_relat_2(A, B) &  (r6_relat_2(A, B) & r1_wellord1(A, B)) ) ) ) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(d6_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v5_orders_2(A) <=> r4_relat_2(u1_orders_2(A), u1_struct_0(A))) ) ) ).
fof(d6_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r6_relat_2(A, B) <=>  (! [C] :  (! [D] :  ~ ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  ( ~ (C=D)  &  ( ~ (r2_hidden(k4_tarski(C, D), A))  &  ~ (r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(d9_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r1_orders_2(A, B, C) <=> r2_hidden(k4_tarski(B, C), u1_orders_2(A))) ) ) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_orders_1, axiom, $true).
fof(dt_k1_orders_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k1_orders_2(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_wellord1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_orders_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))))  => m1_subset_1(k2_orders_2(A, B), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  &  (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k3_orders_2(A, B, C), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k3_tarski, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_orders_2, axiom, $true).
fof(dt_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => m1_subset_1(k4_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => m1_subset_1(k6_domain_1(A, B), k1_zfmisc_1(A))) ) ).
fof(dt_k6_subset_1, axiom,  (! [A, B] : m1_subset_1(k6_subset_1(A, B), k1_zfmisc_1(A))) ).
fof(dt_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => m1_subset_1(k7_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k9_setfam_1, axiom,  (! [A] : m1_subset_1(k9_setfam_1(A), k1_zfmisc_1(k1_zfmisc_1(A)))) ).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_orders_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_orders_1(B, A) =>  (v1_funct_1(B) &  (v1_funct_2(B, A, k3_tarski(A)) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, k3_tarski(A))))) ) ) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m2_orders_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  & m1_orders_1(B, k1_orders_1(u1_struct_0(A))))  =>  (! [C] :  (m2_orders_2(C, A, B) =>  (v6_orders_2(C, A) & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A)))) ) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_o_1_1_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  => m1_orders_1(o_1_1_orders_2(A), k1_orders_1(u1_struct_0(A)))) ) ).
fof(dt_o_3_0_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  & m1_subset_1(B, u1_struct_0(A)))  => m1_subset_1(o_3_0_orders_2(A, B, C), k9_subset_1(u1_struct_0(A), k1_wellord1(u1_orders_2(A), C), k6_domain_1(u1_struct_0(A), B)))) ) ).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_orders_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] : m1_orders_1(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m2_orders_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  & m1_orders_1(B, k1_orders_1(u1_struct_0(A))))  =>  (? [C] : m2_orders_2(C, A, B)) ) ) ).
fof(fraenkel_a_2_0_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  &  (v3_orders_2(B) &  (v4_orders_2(B) &  (v5_orders_2(B) & l1_orders_2(B)) ) ) )  & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))))  =>  (r2_hidden(A, a_2_0_orders_2(B, C)) <=>  (? [D] :  (m1_subset_1(D, u1_struct_0(B)) &  (A=D &  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (r2_hidden(E, C) => r2_orders_2(B, E, D)) ) ) ) ) ) ) ) ) ).
fof(fraenkel_a_2_1_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  &  (v3_orders_2(B) &  (v4_orders_2(B) &  (v5_orders_2(B) & l1_orders_2(B)) ) ) )  & m1_subset_1(C, k1_zfmisc_1(u1_struct_0(B))))  =>  (r2_hidden(A, a_2_1_orders_2(B, C)) <=>  (? [D] :  (m1_subset_1(D, u1_struct_0(B)) &  (A=D &  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (r2_hidden(E, C) => r2_orders_2(B, D, E)) ) ) ) ) ) ) ) ) ).
fof(fraenkel_a_2_5_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(B))  &  (v3_orders_2(B) &  (v4_orders_2(B) &  (v5_orders_2(B) & l1_orders_2(B)) ) ) )  & m2_orders_2(C, B, o_1_1_orders_2(B)))  =>  (r2_hidden(A, a_2_5_orders_2(B, C)) <=>  (? [D] :  (m1_subset_1(D, u1_struct_0(B)) &  (A=D &  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (r2_hidden(E, C) => r2_orders_2(B, E, D)) ) ) ) ) ) ) ) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, B)=B) ) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(irreflexivity_r2_orders_2, axiom,  (! [A, B, C] :  ( (l1_orders_2(A) &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  ~ (r2_orders_2(A, B, B)) ) ) ).
fof(l183_orders_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (r2_wellord1(C, A) & r1_tarski(B, A))  => r2_wellord1(C, B)) ) ) ) ) ).
fof(redefinition_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k2_xboole_0(B, C)) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
fof(redefinition_k7_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(B, k1_zfmisc_1(A)) => k7_subset_1(A, B, C)=k4_xboole_0(B, C)) ) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(reflexivity_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => r3_orders_2(A, B, B)) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t23_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_xboole_0(A, k2_xboole_0(B, C))=k2_xboole_0(k3_xboole_0(A, B), k3_xboole_0(A, C))) ) ) ).
fof(t28_orders_2, axiom,  (! [A] :  ( (v5_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  ~ ( (r2_orders_2(A, B, C) & r2_orders_2(A, C, B)) ) ) ) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t32_orders_2, axiom,  (! [A] :  ( (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  ( ( (r2_orders_2(A, B, C) & r1_orders_2(A, C, D))  |  (r1_orders_2(A, B, C) & r2_orders_2(A, C, D)) )  => r2_orders_2(A, B, D)) ) ) ) ) ) ) ) ) ).
fof(t37_xboole_1, axiom,  (! [A] :  (! [B] :  (k4_xboole_0(A, B)=k1_xboole_0 <=> r1_tarski(A, B)) ) ) ).
fof(t37_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(t38_orders_2, axiom,  (! [A] :  ( (v3_orders_2(A) & l1_orders_2(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  ( ~ ( ( (? [D] :  ( (v6_orders_2(D, A) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))))  &  (r2_hidden(B, D) & r2_hidden(C, D)) ) )  &  ( ~ (r1_orders_2(A, B, C))  &  ~ (r1_orders_2(A, C, B)) ) ) )  &  ~ ( ( (r1_orders_2(A, B, C) | r1_orders_2(A, C, B))  &  (! [D] :  ( (v6_orders_2(D, A) & m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))))  =>  ~ ( (r2_hidden(B, D) & r2_hidden(C, D)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t39_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, k1_tarski(B)) <=>  (A=k1_xboole_0 | A=k1_tarski(B)) ) ) ) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).
fof(t45_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => B=k2_xboole_0(A, k4_xboole_0(B, A))) ) ) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t4_orders_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  ~ (r2_hidden(k1_xboole_0, k1_orders_1(A))) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t50_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  ~ (r2_hidden(B, k2_orders_2(A, k6_domain_1(u1_struct_0(A), B)))) ) ) ) ) ).
fof(t52_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r2_orders_2(A, B, C) <=> r2_hidden(B, k2_orders_2(A, k6_domain_1(u1_struct_0(A), C)))) ) ) ) ) ) ) ).
fof(t56_zfmisc_1, axiom,  (! [A] :  (! [B] :  ( ~ (r2_hidden(A, B))  => r1_xboole_0(k1_tarski(A), B)) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t65_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(u1_struct_0(A))) =>  (r1_tarski(C, D) => r1_tarski(k3_orders_2(A, C, B), k3_orders_2(A, D, B))) ) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(A, k2_xboole_0(A, B))) ) ).
fof(t83_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k4_xboole_0(A, B)=A) ) ) ).
fof(t89_orders_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) &  (v4_orders_2(A) &  (v5_orders_2(A) & l1_orders_2(A)) ) ) )  =>  (! [B] :  (m1_orders_1(B, k1_orders_1(u1_struct_0(A))) => m2_orders_2(k3_tarski(k4_orders_2(A, B)), A, B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t92_orders_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r7_relat_2(B, A) <=>  (r1_relat_2(B, A) & r6_relat_2(B, A)) ) ) ) ) ).
fof(t93_orders_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (r1_relat_2(C, A) & r1_tarski(B, A))  => r1_relat_2(C, B)) ) ) ) ) ).
fof(t94_orders_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (r4_relat_2(C, A) & r1_tarski(B, A))  => r4_relat_2(C, B)) ) ) ) ) ).
fof(t95_orders_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (r8_relat_2(C, A) & r1_tarski(B, A))  => r8_relat_2(C, B)) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(fc1_orders_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  ~ (v1_xboole_0(k1_orders_1(A))) ) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(fc2_xboole_0, axiom,  (! [A] :  ~ (v1_xboole_0(k1_tarski(A))) ) ).
fof(fc5_xboole_0, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(A))  =>  ~ (v1_xboole_0(k2_xboole_0(B, A))) ) ) ).
