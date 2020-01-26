fof(t39_funct_3, conjecture,  (! [A] :  (! [B] : r1_tarski(k10_xtuple_0(k4_funct_3(A, B)), k2_tarski(k1_xboole_0, np__1))) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(d3_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k10_xtuple_0(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k9_xtuple_0(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d3_funct_3, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (C=k4_funct_3(A, B) <=>  (k9_xtuple_0(C)=B &  (! [D] :  (r2_hidden(D, B) =>  ( (r2_hidden(D, A) => k1_funct_1(C, D)=np__1)  &  ( ~ (r2_hidden(D, A))  => k1_funct_1(C, D)=k1_xboole_0) ) ) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(dt_k4_funct_3, axiom,  (! [A, B] :  (v1_relat_1(k4_funct_3(A, B)) & v1_funct_1(k4_funct_3(A, B))) ) ).
