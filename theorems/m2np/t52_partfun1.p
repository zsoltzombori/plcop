fof(t52_partfun1, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_partfun1(A, B) <=>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  &  (r1_tarski(A, C) & r1_tarski(B, C)) ) ) ) ) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(fc3_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k2_xboole_0(A, B))) ) ).
fof(t1_grfunc_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (r1_tarski(B, A) =>  (v1_relat_1(B) & v1_funct_1(B)) ) ) ) ) ).
fof(t51_partfun1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_partfun1(A, B) <=>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  & k2_xboole_0(A, B)=C) ) ) ) ) ) ) ).
fof(t7_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(A, k2_xboole_0(A, B))) ) ).
fof(t8_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(C, B))  => r1_tarski(k2_xboole_0(A, C), B)) ) ) ) ).
