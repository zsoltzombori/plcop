fof(t6_funct_1, conjecture,  (! [A] :  ( (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (k9_xtuple_0(B)=A & k9_xtuple_0(C)=A)  => B=C) ) ) ) )  => A=k1_xboole_0) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(l1_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t5_funct_1, axiom,  (! [A] :  ( ~ (A=k1_xboole_0)  =>  (! [B] :  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  &  (k9_xtuple_0(C)=A & k10_xtuple_0(C)=k1_tarski(B)) ) ) ) ) ) ).
fof(t9_xtuple_0, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => r1_tarski(k10_xtuple_0(A), k10_xtuple_0(B))) ) ) ).
