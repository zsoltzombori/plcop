% Mizar problem: t54_funct_1,funct_1,1035,72 
fof(t54_funct_1, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (B=k2_funct_1(A) <=>  (k1_relat_1(B)=k2_relat_1(A) &  (! [C] :  (! [D] :  ( ( (r2_hidden(C, k2_relat_1(A)) & D=k1_funct_1(B, C))  =>  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) )  &  ( (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D))  =>  (r2_hidden(C, k2_relat_1(A)) & D=k1_funct_1(B, C)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d2_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (A=B <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), A) <=> r2_hidden(k4_tarski(C, D), B)) ) ) ) ) ) ) ) ).
fof(d4_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  ( (r2_hidden(B, k1_relat_1(A)) =>  (C=k1_funct_1(A, B) <=> r2_hidden(k4_tarski(B, C), A)) )  &  ( ~ (r2_hidden(B, k1_relat_1(A)))  =>  (C=k1_funct_1(A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ).
fof(d4_relat_1, axiom,  (! [A] :  (! [B] :  (B=k1_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] : r2_hidden(k4_tarski(C, D), A)) ) ) ) ) ) ).
fof(d5_relat_1, axiom,  (! [A] :  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] : r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ).
fof(d7_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (B=k4_relat_1(A) <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), B) <=> r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ) ) ).
fof(d9_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) => k2_funct_1(A)=k4_relat_1(A)) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k2_funct_1(A)) & v1_funct_1(k2_funct_1(A))) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k4_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => v1_relat_1(k4_relat_1(A))) ) ).
fof(dt_k4_tarski, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(involutiveness_k4_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k4_relat_1(k4_relat_1(A))=A) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t37_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (k2_relat_1(A)=k1_relat_1(k4_relat_1(A)) & k1_relat_1(A)=k2_relat_1(k4_relat_1(A))) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
