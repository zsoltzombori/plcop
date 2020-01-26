% Mizar problem: t66_funct_1,funct_1,1260,58 
fof(t66_funct_1, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v2_funct_1(A) & v2_funct_1(B))  => k2_funct_1(k5_relat_1(A, B))=k5_relat_1(k2_funct_1(B), k2_funct_1(A))) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d5_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k2_funct_1(A)) & v1_funct_1(k2_funct_1(A))) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t21_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, k1_relat_1(k5_relat_1(C, B))) <=>  (r2_hidden(A, k1_relat_1(C)) & r2_hidden(k1_funct_1(C, A), k1_relat_1(B))) ) ) ) ) ) ) ).
fof(t22_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, k1_relat_1(k5_relat_1(C, B))) => k1_funct_1(k5_relat_1(C, B), A)=k1_funct_1(B, k1_funct_1(C, A))) ) ) ) ) ) ).
fof(t23_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, k1_relat_1(B)) => k1_funct_1(k5_relat_1(B, C), A)=k1_funct_1(C, k1_funct_1(B, A))) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t34_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (B=k6_relat_1(A) <=>  (k1_relat_1(B)=A &  (! [C] :  (r2_hidden(C, A) => k1_funct_1(B, C)=C) ) ) ) ) ) ) ).
fof(t54_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (B=k2_funct_1(A) <=>  (k1_relat_1(B)=k2_relat_1(A) &  (! [C] :  (! [D] :  ( ( (r2_hidden(C, k2_relat_1(A)) & D=k1_funct_1(B, C))  =>  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) )  &  ( (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D))  =>  (r2_hidden(C, k2_relat_1(A)) & D=k1_funct_1(B, C)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t56_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v2_funct_1(B) & r2_hidden(A, k1_relat_1(B)))  =>  (A=k1_funct_1(k2_funct_1(B), k1_funct_1(B, A)) & A=k1_funct_1(k5_relat_1(B, k2_funct_1(B)), A)) ) ) ) ) ).
fof(t61_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) =>  (k5_relat_1(A, k2_funct_1(A))=k6_relat_1(k1_relat_1(A)) & k5_relat_1(k2_funct_1(A), A)=k6_relat_1(k2_relat_1(A))) ) ) ) ).
fof(t63_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v2_funct_1(A) &  (k2_relat_1(A)=k1_relat_1(B) & k5_relat_1(A, B)=k6_relat_1(k1_relat_1(A))) )  => B=k2_funct_1(A)) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(fc2_funct_1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k5_relat_1(A, B)) & v1_funct_1(k5_relat_1(A, B))) ) ) ).
fof(fc3_funct_1, axiom,  (! [A] :  (v1_relat_1(k6_relat_1(A)) & v1_funct_1(k6_relat_1(A))) ) ).
fof(fc7_funct_1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) )  &  (v1_relat_1(B) &  (v1_funct_1(B) & v2_funct_1(B)) ) )  =>  (v1_relat_1(k5_relat_1(A, B)) & v2_funct_1(k5_relat_1(A, B))) ) ) ).
