fof(t38_funct_3, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) &  (r1_tarski(C, B) & k4_funct_3(A, B)=k4_funct_3(C, B)) )  => A=C) ) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d3_funct_3, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (C=k4_funct_3(A, B) <=>  (k9_xtuple_0(C)=B &  (! [D] :  (r2_hidden(D, B) =>  ( (r2_hidden(D, A) => k1_funct_1(C, D)=np__1)  &  ( ~ (r2_hidden(D, A))  => k1_funct_1(C, D)=k1_xboole_0) ) ) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(dt_k4_funct_3, axiom,  (! [A, B] :  (v1_relat_1(k4_funct_3(A, B)) & v1_funct_1(k4_funct_3(A, B))) ) ).
fof(t36_funct_3, axiom,  (! [A] :  (! [B] :  (! [C] :  (k1_funct_1(k4_funct_3(B, C), A)=np__1 => r2_hidden(A, B)) ) ) ) ).
