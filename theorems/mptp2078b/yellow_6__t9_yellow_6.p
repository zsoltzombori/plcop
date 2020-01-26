% Mizar problem: t9_yellow_6,yellow_6,90,3 
fof(t9_yellow_6, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( (v1_relat_1(B) &  (v4_relat_1(B, A) &  (v1_funct_1(B) &  (v1_partfun1(B, A) & v2_pralg_1(B)) ) ) )  =>  (! [C] :  (m1_subset_1(C, A) => k1_funct_1(k12_pralg_1(A, B), C)=u1_struct_0(k10_pralg_1(A, B, C))) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d13_pralg_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) &  (v4_relat_1(B, A) &  (v1_funct_1(B) &  (v1_partfun1(B, A) & v2_pralg_1(B)) ) ) )  =>  (! [C] :  ( (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v1_funct_1(C) & v1_partfun1(C, A)) ) )  =>  (C=k12_pralg_1(A, B) <=>  (! [D] :  ~ ( (r2_hidden(D, A) &  (! [E] :  (l1_struct_0(E) =>  ~ ( (E=k1_funct_1(B, D) & k1_funct_1(C, D)=u1_struct_0(E)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k10_pralg_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_relat_1(B) &  (v4_relat_1(B, A) &  (v1_funct_1(B) &  (v1_partfun1(B, A) & v2_pralg_1(B)) ) ) )  & m1_subset_1(C, A)) )  => l1_struct_0(k10_pralg_1(A, B, C))) ) ).
fof(dt_k12_pralg_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) &  (v4_relat_1(B, A) &  (v1_funct_1(B) &  (v1_partfun1(B, A) & v2_pralg_1(B)) ) ) )  =>  (v1_relat_1(k12_pralg_1(A, B)) &  (v4_relat_1(k12_pralg_1(A, B), A) &  (v1_funct_1(k12_pralg_1(A, B)) & v1_partfun1(k12_pralg_1(A, B), A)) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(redefinition_k10_pralg_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(A))  &  ( (v1_relat_1(B) &  (v4_relat_1(B, A) &  (v1_funct_1(B) &  (v1_partfun1(B, A) & v2_pralg_1(B)) ) ) )  & m1_subset_1(C, A)) )  => k10_pralg_1(A, B, C)=k1_funct_1(B, C)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
