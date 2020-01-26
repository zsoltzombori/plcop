fof(t103_funct_1, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v5_funct_1(A, B) & k9_xtuple_0(A)=k9_xtuple_0(B))  => v2_relat_1(B)) ) ) ) ) ).
fof(d14_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (v5_funct_1(B, A) <=>  (! [C] :  (r2_hidden(C, k9_xtuple_0(B)) => r2_hidden(k1_funct_1(B, C), k1_funct_1(A, C))) ) ) ) ) ) ) ).
fof(d1_xboole_0, axiom,  (! [A] :  (v1_xboole_0(A) <=>  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ).
fof(d9_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_relat_1(A) <=>  (! [B] :  ~ ( (r2_hidden(B, k9_xtuple_0(A)) & v1_xboole_0(k1_funct_1(A, B))) ) ) ) ) ) ).
