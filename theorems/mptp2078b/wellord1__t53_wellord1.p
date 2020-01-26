% Mizar problem: t53_wellord1,wellord1,1071,47 
fof(t53_wellord1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r3_wellord1(A, B, C) =>  ( (v1_relat_2(A) => v1_relat_2(B))  &  ( (v8_relat_2(A) => v8_relat_2(B))  &  ( (v6_relat_2(A) => v6_relat_2(B))  &  ( (v4_relat_2(A) => v4_relat_2(B))  &  (v1_wellord1(A) => v1_wellord1(B)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(d13_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  (C=k10_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, k1_relat_1(A)) & r2_hidden(k1_funct_1(A, D), B)) ) ) ) ) ) ) ) ).
fof(d1_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (! [C] :  (C=k1_wellord1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  ( ~ (D=B)  & r2_hidden(k4_tarski(D, B), A)) ) ) ) ) ) ) ) ).
fof(d2_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v1_wellord1(A) <=>  (! [B] :  ~ ( (r1_tarski(B, k3_relat_1(A)) &  ( ~ (B=k1_xboole_0)  &  (! [C] :  ~ ( (r2_hidden(C, B) & r1_xboole_0(k1_wellord1(A, C), B)) ) ) ) ) ) ) ) ) ) ).
fof(d5_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d7_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r3_wellord1(A, B, C) <=>  (k1_relat_1(C)=k3_relat_1(A) &  (k2_relat_1(C)=k3_relat_1(B) &  (v2_funct_1(C) &  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), A) <=>  (r2_hidden(D, k3_relat_1(A)) &  (r2_hidden(E, k3_relat_1(A)) & r2_hidden(k4_tarski(k1_funct_1(C, D), k1_funct_1(C, E)), B)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k10_relat_1, axiom, $true).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_wellord1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k2_funct_1(A)) & v1_funct_1(k2_funct_1(A))) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_relat_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(l1_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v1_relat_2(A) <=>  (! [B] :  (r2_hidden(B, k3_relat_1(A)) => r2_hidden(k4_tarski(B, B), A)) ) ) ) ) ).
fof(l2_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v8_relat_2(A) <=>  (! [B] :  (! [C] :  (! [D] :  ( (r2_hidden(k4_tarski(B, C), A) & r2_hidden(k4_tarski(C, D), A))  => r2_hidden(k4_tarski(B, D), A)) ) ) ) ) ) ) ).
fof(l3_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v4_relat_2(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(k4_tarski(B, C), A) & r2_hidden(k4_tarski(C, B), A))  => B=C) ) ) ) ) ) ).
fof(l4_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v6_relat_2(A) <=>  (! [B] :  (! [C] :  ~ ( (r2_hidden(B, k3_relat_1(A)) &  (r2_hidden(C, k3_relat_1(A)) &  ( ~ (B=C)  &  ( ~ (r2_hidden(k4_tarski(B, C), A))  &  ~ (r2_hidden(k4_tarski(C, B), A)) ) ) ) ) ) ) ) ) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t167_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k10_relat_1(B, A), k1_relat_1(B))) ) ) ).
fof(t174_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  ~ ( ( ~ (A=k1_xboole_0)  &  (r1_tarski(A, k2_relat_1(B)) & k10_relat_1(B, A)=k1_xboole_0) ) ) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t30_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(k4_tarski(A, B), C) =>  (r2_hidden(A, k3_relat_1(C)) & r2_hidden(B, k3_relat_1(C))) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t55_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (k2_relat_1(A)=k1_relat_1(k2_funct_1(A)) & k1_relat_1(A)=k2_relat_1(k2_funct_1(A))) ) ) ) ).
fof(t57_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v2_funct_1(B) & r2_hidden(A, k2_relat_1(B)))  =>  (A=k1_funct_1(B, k1_funct_1(k2_funct_1(B), A)) & A=k1_funct_1(k5_relat_1(k2_funct_1(B), B), A)) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
