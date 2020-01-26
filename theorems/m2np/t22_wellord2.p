fof(t22_wellord2, conjecture,  (! [A] : k1_wellord2(k1_tarski(A))=k1_tarski(k4_tarski(A, A))) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d1_wellord2, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (B=k1_wellord2(A) <=>  (k1_relat_1(B)=A &  (! [C] :  (! [D] :  ( (r2_hidden(C, A) & r2_hidden(D, A))  =>  (r2_hidden(k4_tarski(C, D), B) <=> r1_tarski(C, D)) ) ) ) ) ) ) ) ) ).
fof(fc5_relat_1, axiom,  (! [A, B] : v1_relat_1(k1_tarski(k4_tarski(A, B)))) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t173_relat_1, axiom,  (! [A] : k1_relat_1(k1_tarski(k4_tarski(A, A)))=k1_tarski(A)) ).
fof(t31_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
