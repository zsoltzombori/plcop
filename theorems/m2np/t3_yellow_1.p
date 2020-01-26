fof(t3_yellow_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(k2_yellow_1(A))) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(k2_yellow_1(A))) =>  (r3_orders_2(k2_yellow_1(A), B, C) <=> r1_tarski(B, C)) ) ) ) ) ) ) ).
fof(abstractness_v1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (v1_orders_2(A) => A=g1_orders_2(u1_struct_0(A), u1_orders_2(A))) ) ) ).
fof(d1_wellord2, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (B=k1_wellord2(A) <=>  (k1_relat_1(B)=A &  (! [C] :  (! [D] :  ( (r2_hidden(C, A) & r2_hidden(D, A))  =>  (r2_hidden(k4_tarski(C, D), B) <=> r1_tarski(C, D)) ) ) ) ) ) ) ) ) ).
fof(d1_yellow_1, axiom,  (! [A] : k2_yellow_1(A)=g1_orders_2(A, k1_yellow_1(A))) ).
fof(d5_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r1_orders_2(A, B, C) <=> r2_hidden(k4_tarski(B, C), u1_orders_2(A))) ) ) ) ) ) ) ).
fof(dt_k1_wellord2, axiom,  (! [A] : v1_relat_1(k1_wellord2(A))) ).
fof(dt_k2_yellow_1, axiom,  (! [A] :  (v1_orders_2(k2_yellow_1(A)) & l1_orders_2(k2_yellow_1(A))) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(fc1_struct_0, axiom,  (! [A] :  ( (v2_struct_0(A) & l1_struct_0(A))  => v1_xboole_0(u1_struct_0(A))) ) ).
fof(fc5_yellow_1, axiom,  (! [A] :  (v1_orders_2(k2_yellow_1(A)) &  (v3_orders_2(k2_yellow_1(A)) &  (v4_orders_2(k2_yellow_1(A)) & v5_orders_2(k2_yellow_1(A))) ) ) ) ).
fof(free_g1_orders_2, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A))) =>  (! [C, D] :  (g1_orders_2(A, B)=g1_orders_2(C, D) =>  (A=C & B=D) ) ) ) ) ).
fof(redefinition_k1_yellow_1, axiom,  (! [A] : k1_yellow_1(A)=k1_wellord2(A)) ).
fof(redefinition_r3_orders_2, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v3_orders_2(A) & l1_orders_2(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  =>  (r3_orders_2(A, B, C) <=> r1_orders_2(A, B, C)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
