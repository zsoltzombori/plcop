fof(t23_wellord2, conjecture,  (! [A] : r1_tarski(k1_wellord2(A), k2_zfmisc_1(A, A))) ).
fof(d1_wellord2, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (B=k1_wellord2(A) <=>  (k1_relat_1(B)=A &  (! [C] :  (! [D] :  ( (r2_hidden(C, A) & r2_hidden(D, A))  =>  (r2_hidden(k4_tarski(C, D), B) <=> r1_tarski(C, D)) ) ) ) ) ) ) ) ) ).
fof(d3_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), A) => r2_hidden(k4_tarski(C, D), B)) ) ) ) ) ) ) ).
fof(dt_k1_wellord2, axiom,  (! [A] : v1_relat_1(k1_wellord2(A))) ).
fof(t15_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(k4_tarski(A, B), C) =>  (r2_hidden(A, k1_relat_1(C)) & r2_hidden(B, k1_relat_1(C))) ) ) ) ) ) ).
fof(t87_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(A, B), k2_zfmisc_1(C, D)) <=>  (r2_hidden(A, C) & r2_hidden(B, D)) ) ) ) ) ) ).
