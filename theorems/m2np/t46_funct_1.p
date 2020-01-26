fof(t46_funct_1, conjecture,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (k9_xtuple_0(B)=k3_xboole_0(k9_xtuple_0(C), A) &  (! [D] :  (r2_hidden(D, k9_xtuple_0(B)) => k1_funct_1(B, D)=k1_funct_1(C, D)) ) )  => B=k5_relat_1(C, A)) ) ) ) ) ) ).
fof(d11_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (C=k5_relat_1(A, B) <=>  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), C) <=>  (r2_hidden(D, B) & r2_hidden(k4_tarski(D, E), A)) ) ) ) ) ) ) ) ) ) ).
fof(d2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] :  ( (r2_hidden(B, k9_xtuple_0(A)) =>  (C=k1_funct_1(A, B) <=> r2_hidden(k4_tarski(B, C), A)) )  &  ( ~ (r2_hidden(B, k9_xtuple_0(A)))  =>  (C=k1_funct_1(A, B) <=> C=k1_xboole_0) ) ) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(rd4_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k5_relat_1(A, k9_xtuple_0(A))=A) ) ).
