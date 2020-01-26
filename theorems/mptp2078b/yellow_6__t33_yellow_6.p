% Mizar problem: t33_yellow_6,yellow_6,1160,74 
fof(t33_yellow_6, conjecture,  (! [A] :  (! [B] :  (l1_struct_0(B) =>  (! [C] :  ( (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v1_funct_1(C) & v1_partfun1(C, A)) ) )  =>  (m3_yellow_6(C, A, B) <=>  (! [D] :  (r2_hidden(D, A) =>  ( ~ (v2_struct_0(k1_funct_1(C, D)))  &  (v4_orders_2(k1_funct_1(C, D)) &  (v7_waybel_0(k1_funct_1(C, D)) & l1_waybel_0(k1_funct_1(C, D), B)) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d15_yellow_6, axiom,  (! [A] :  (! [B] :  (l1_struct_0(B) =>  (! [C] :  ( (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v1_funct_1(C) & v1_partfun1(C, A)) ) )  =>  (m3_yellow_6(C, A, B) <=>  (! [D] :  (r2_hidden(D, k2_relat_1(C)) =>  ( ~ (v2_struct_0(D))  &  (v4_orders_2(D) &  (v7_waybel_0(D) & l1_waybel_0(D, B)) ) ) ) ) ) ) ) ) ) ) ).
fof(d4_partfun1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  =>  (v1_partfun1(B, A) <=> k1_relat_1(B)=A) ) ) ) ).
fof(d5_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_m3_yellow_6, axiom,  (! [A, B] :  (l1_struct_0(B) =>  (! [C] :  (m3_yellow_6(C, A, B) =>  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v1_funct_1(C) & v1_partfun1(C, A)) ) ) ) ) ) ) ).
fof(existence_l1_orders_2, axiom,  (? [A] : l1_orders_2(A)) ).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (? [B] : l1_waybel_0(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(existence_m3_yellow_6, axiom,  (! [A, B] :  (l1_struct_0(B) =>  (? [C] : m3_yellow_6(C, A, B)) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
