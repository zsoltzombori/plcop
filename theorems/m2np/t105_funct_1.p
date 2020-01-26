fof(t105_funct_1, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) &  (v1_funct_1(B) & v5_funct_1(B, A)) )  => r1_tarski(k9_xtuple_0(B), k9_xtuple_0(A))) ) ) ) ).
fof(d14_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (v5_funct_1(B, A) <=>  (! [C] :  (r2_hidden(C, k9_xtuple_0(B)) => r2_hidden(k1_funct_1(B, C), k1_funct_1(A, C))) ) ) ) ) ) ) ).
fof(d2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  ( (r2_hidden(B, k9_xtuple_0(A)) =>  (C=k1_funct_1(A, B) <=> r2_hidden(k4_tarski(B, C), A)) )  &  ( ~ (r2_hidden(B, k9_xtuple_0(A)))  =>  (C=k1_funct_1(A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(rc8_funct_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (? [C] :  (v1_xboole_0(C) &  (v1_relat_1(C) &  (v4_relat_1(C, A) &  (v1_funct_1(C) & v5_funct_1(C, B)) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
