fof(t2_relat_2, conjecture,  (! [A] :  (v1_relat_1(A) =>  (v2_relat_2(A) <=> r1_xboole_0(k4_relat_1(k1_relat_1(A)), A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d10_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (B=k4_relat_1(A) <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), B) <=>  (r2_hidden(C, A) & C=D) ) ) ) ) ) ) ) ).
fof(d10_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (v2_relat_2(A) <=> r2_relat_2(A, k1_relat_1(A))) ) ) ).
fof(d2_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r2_relat_2(A, B) <=>  (! [C] :  ~ ( (r2_hidden(C, B) & r2_hidden(k4_tarski(C, C), A)) ) ) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(dt_k4_relat_1, axiom,  (! [A] : v1_relat_1(k4_relat_1(A))) ).
fof(fc1_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k3_xboole_0(A, B))) ) ).
fof(t37_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  ( (! [B] :  (! [C] :  ~ (r2_hidden(k4_tarski(B, C), A)) ) )  => A=k1_xboole_0) ) ) ).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).