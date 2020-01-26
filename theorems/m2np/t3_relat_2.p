fof(t3_relat_2, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r4_relat_2(B, A) <=> r5_relat_2(k4_xboole_0(B, k4_relat_1(A)), A)) ) ) ) ).
fof(d10_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (B=k4_relat_1(A) <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), B) <=>  (r2_hidden(C, A) & C=D) ) ) ) ) ) ) ) ).
fof(d4_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r4_relat_2(A, B) <=>  (! [C] :  (! [D] :  ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  (r2_hidden(k4_tarski(C, D), A) & r2_hidden(k4_tarski(D, C), A)) ) )  => C=D) ) ) ) ) ) ) ).
fof(d5_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r5_relat_2(A, B) <=>  (! [C] :  (! [D] :  ~ ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  (r2_hidden(k4_tarski(C, D), A) & r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(dt_k4_relat_1, axiom,  (! [A] : v1_relat_1(k4_relat_1(A))) ).
fof(fc2_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k4_xboole_0(A, B))) ) ).
