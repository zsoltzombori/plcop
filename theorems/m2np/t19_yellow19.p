fof(t19_yellow19, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  (! [C] :  ( ( ~ (v2_struct_0(C))  &  (v4_orders_2(C) &  (v7_waybel_0(C) & l1_waybel_0(C, A)) ) )  =>  (r1_waybel_0(A, C, B) =>  (! [D] :  (m2_yellow_6(D, A, C) => r1_waybel_0(A, D, B)) ) ) ) ) ) ) ) ).
fof(dt_m2_yellow_6, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  &  ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) ) )  =>  (! [C] :  (m2_yellow_6(C, A, B) =>  ( ~ (v2_struct_0(C))  &  (v4_orders_2(C) &  (v7_waybel_0(C) & l1_waybel_0(C, A)) ) ) ) ) ) ) ).
fof(t18_yellow_6, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  &  (v4_orders_2(B) &  (v7_waybel_0(B) & l1_waybel_0(B, A)) ) )  =>  (! [C] :  (m2_yellow_6(C, A, B) =>  (! [D] :  (r2_waybel_0(A, C, D) => r2_waybel_0(A, B, D)) ) ) ) ) ) ) ) ).
fof(t9_waybel_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  (r1_waybel_0(A, B, C) <=>  ~ (r2_waybel_0(A, B, k6_subset_1(u1_struct_0(A), C))) ) ) ) ) ) ) ).