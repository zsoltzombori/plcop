% Mizar problem: t86_funct_1,funct_1,1553,44 
fof(t86_funct_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, k1_relat_1(k8_relat_1(B, C))) <=>  (r2_hidden(A, k1_relat_1(C)) & r2_hidden(k1_funct_1(C, A), B)) ) ) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_k1_xboole_0, axiom, $true).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k8_relat_1, axiom,  (! [A, B] :  (v1_relat_1(B) => v1_relat_1(k8_relat_1(A, B))) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t85_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (B=k8_relat_1(A, C) <=>  ( (! [D] :  (r2_hidden(D, k1_relat_1(B)) <=>  (r2_hidden(D, k1_relat_1(C)) & r2_hidden(k1_funct_1(C, D), A)) ) )  &  (! [D] :  (r2_hidden(D, k1_relat_1(B)) => k1_funct_1(B, D)=k1_funct_1(C, D)) ) ) ) ) ) ) ) ) ).
fof(fc9_funct_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (v1_relat_1(k8_relat_1(A, B)) & v1_funct_1(k8_relat_1(A, B))) ) ) ).
