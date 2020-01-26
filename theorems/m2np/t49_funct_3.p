fof(t49_funct_3, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (! [D] :  ( (v1_relat_1(D) & v1_funct_1(D))  =>  ( (k9_xtuple_0(C)=B &  (k9_xtuple_0(D)=B & r2_hidden(A, B)) )  => k1_funct_1(k13_funct_3(C, D), A)=k4_tarski(k1_funct_1(C, A), k1_funct_1(D, A))) ) ) ) ) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(t48_funct_3, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, k3_xboole_0(k9_xtuple_0(B), k9_xtuple_0(C))) => k1_funct_1(k13_funct_3(B, C), A)=k4_tarski(k1_funct_1(B, A), k1_funct_1(C, A))) ) ) ) ) ) ).
