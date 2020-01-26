fof(t6_funct_3, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (! [D] :  ( (v1_relat_1(D) & v1_funct_1(D))  =>  ( (k9_xtuple_0(C)=k2_zfmisc_1(A, B) &  (k9_xtuple_0(D)=k2_zfmisc_1(A, B) &  (! [E] :  (! [F] :  ( (r2_hidden(E, A) & r2_hidden(F, B))  => k1_binop_1(C, E, F)=k1_binop_1(D, E, F)) ) ) ) )  => C=D) ) ) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d1_binop_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] : k1_binop_1(A, B, C)=k1_funct_1(A, k4_tarski(B, C))) ) ) ) ).
fof(d2_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_zfmisc_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (? [F] :  (r2_hidden(E, A) &  (r2_hidden(F, B) & D=k4_tarski(E, F)) ) ) ) ) ) ) ) ) ) ).
fof(d5_tarski, axiom,  (! [A] :  (! [B] : k4_tarski(A, B)=k2_tarski(k2_tarski(A, B), k1_tarski(A))) ) ).
fof(t2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (k9_xtuple_0(A)=k9_xtuple_0(B) &  (! [C] :  (r2_hidden(C, k9_xtuple_0(A)) => k1_funct_1(A, C)=k1_funct_1(B, C)) ) )  => A=B) ) ) ) ) ).
