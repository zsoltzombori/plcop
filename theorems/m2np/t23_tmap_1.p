fof(t23_tmap_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  & m1_pre_topc(D, A))  =>  (! [E] :  ( ( ~ (v2_struct_0(E))  & m1_pre_topc(E, A))  =>  ( (m1_pre_topc(B, D) & m1_pre_topc(C, E))  =>  (r1_tsep_1(B, C) | m1_pre_topc(k2_tsep_1(A, B, C), k2_tsep_1(A, D, E))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d3_tsep_1, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_struct_0(B) =>  (r1_tsep_1(A, B) <=> r1_xboole_0(u1_struct_0(A), u1_struct_0(B))) ) ) ) ) ).
fof(d4_tsep_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  ( ~ (r1_tsep_1(B, C))  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  &  (v1_pre_topc(D) & m1_pre_topc(D, A)) )  =>  (D=k2_tsep_1(A, B, C) <=> u1_struct_0(D)=k3_xboole_0(u1_struct_0(B), u1_struct_0(C))) ) ) ) ) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(dt_k2_tsep_1, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  &  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  &  ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A)) ) )  =>  ( ~ (v2_struct_0(k2_tsep_1(A, B, C)))  &  (v1_pre_topc(k2_tsep_1(A, B, C)) & m1_pre_topc(k2_tsep_1(A, B, C), A)) ) ) ) ).
fof(dt_l1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) => l1_struct_0(A)) ) ).
fof(dt_m1_pre_topc, axiom,  (! [A] :  (l1_pre_topc(A) =>  (! [B] :  (m1_pre_topc(B, A) => l1_pre_topc(B)) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(t27_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (r1_tarski(A, B) & r1_tarski(C, D))  => r1_tarski(k3_xboole_0(A, C), k3_xboole_0(B, D))) ) ) ) ) ).
fof(t3_xboole_1, axiom,  (! [A] :  (r1_tarski(A, k1_xboole_0) => A=k1_xboole_0) ) ).
fof(t4_tsep_1, axiom,  (! [A] :  ( (v2_pre_topc(A) & l1_pre_topc(A))  =>  (! [B] :  (m1_pre_topc(B, A) =>  (! [C] :  (m1_pre_topc(C, A) =>  (r1_tarski(u1_struct_0(B), u1_struct_0(C)) <=> m1_pre_topc(B, C)) ) ) ) ) ) ) ).
