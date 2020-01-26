fof(t6_relset_2, conjecture,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=> r1_tarski(k10_eqrel_1(A), k10_eqrel_1(B))) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t1_relset_2, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, k10_eqrel_1(B)) <=>  (? [C] :  (A=k1_tarski(C) & r2_hidden(C, B)) ) ) ) ) ).
fof(t3_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), k1_tarski(B)) => A=B) ) ) ).
