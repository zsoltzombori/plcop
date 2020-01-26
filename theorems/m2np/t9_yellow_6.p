fof(t9_yellow_6, conjecture,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) =>  (! [C] :  (m1_yellow_6(C, A, B) =>  (! [D] :  (m1_yellow_6(D, A, C) => m1_yellow_6(D, A, B)) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d13_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (l1_orders_2(B) =>  (m1_yellow_0(B, A) <=>  (r1_tarski(u1_struct_0(B), u1_struct_0(A)) & r1_tarski(u1_orders_2(B), u1_orders_2(A))) ) ) ) ) ) ).
fof(d6_yellow_6, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) =>  (! [C] :  (l1_waybel_0(C, A) =>  (m1_yellow_6(C, A, B) <=>  (m1_yellow_0(C, B) & u1_waybel_0(A, C)=k2_partfun1(u1_struct_0(B), u1_struct_0(A), u1_waybel_0(A, B), u1_struct_0(C))) ) ) ) ) ) ) ) ).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_m1_yellow_6, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (! [C] :  (m1_yellow_6(C, A, B) => l1_waybel_0(C, A)) ) ) ) ).
fof(dt_u1_waybel_0, axiom,  (! [A, B] :  ( (l1_struct_0(A) & l1_waybel_0(B, A))  =>  (v1_funct_1(u1_waybel_0(A, B)) &  (v1_funct_2(u1_waybel_0(A, B), u1_struct_0(B), u1_struct_0(A)) & m1_subset_1(u1_waybel_0(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) ) ) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k5_relat_1(C, D)) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t28_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => k3_xboole_0(A, B)=A) ) ) ).
fof(t71_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) => k5_relat_1(k5_relat_1(C, A), B)=k5_relat_1(C, k3_xboole_0(A, B))) ) ) ) ).
