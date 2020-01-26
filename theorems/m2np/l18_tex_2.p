fof(l18_tex_2, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => v13_struct_0(k1_tex_2(A, B), np__1)) ) ) ) ).
fof(d19_struct_0, axiom,  (! [A] :  (! [B] :  (l1_struct_0(B) =>  (v13_struct_0(B, A) <=> v3_card_1(u1_struct_0(B), A)) ) ) ) ).
fof(d2_tex_2, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  ( ( ~ (v2_struct_0(C))  &  (v1_pre_topc(C) & m1_pre_topc(C, A)) )  =>  (C=k1_tex_2(A, B) <=> u1_struct_0(C)=k6_domain_1(u1_struct_0(A), B)) ) ) ) ) ) ) ).
fof(dt_k1_tex_2, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  & m1_subset_1(B, u1_struct_0(A)))  =>  ( ~ (v2_struct_0(k1_tex_2(A, B)))  &  (v1_pre_topc(k1_tex_2(A, B)) & m1_pre_topc(k1_tex_2(A, B), A)) ) ) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => l1_pre_topc(B)) ) ) ) ).
fof(fc13_card_1, axiom,  (! [A] : v3_card_1(k1_tarski(A), np__1)) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
