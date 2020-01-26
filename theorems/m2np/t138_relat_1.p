fof(t138_relat_1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (k8_relat_1(B, A)=k1_xboole_0 <=> r1_xboole_0(k10_xtuple_0(B), A)) ) ) ) ).
fof(d13_xtuple_0, axiom,  (! [A] :  (! [B] :  (B=k10_xtuple_0(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] : r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(fc11_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_xboole_0(k10_xtuple_0(A))) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
fof(fc21_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_xboole_0(B))  => v1_xboole_0(k8_relat_1(A, B))) ) ).
fof(t131_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(A, k8_relat_1(C, B)) <=>  (? [D] :  (r2_hidden(D, k10_xtuple_0(C)) &  (r2_hidden(k4_tarski(A, D), C) & r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
