fof(t22_ordinal1, conjecture,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  (r2_hidden(A, k1_ordinal1(B)) <=> r1_ordinal1(A, B)) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d1_ordinal1, axiom,  (! [A] : k1_ordinal1(A)=k2_xboole_0(A, k1_tarski(A))) ).
fof(redefinition_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  =>  (r1_ordinal1(A, B) <=> r1_tarski(A, B)) ) ) ).
fof(reflexivity_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  => r1_ordinal1(A, A)) ) ).
fof(t16_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  (r1_ordinal1(A, B) | r2_hidden(B, A)) ) ) ) ) ).
fof(t6_ordinal1, axiom,  (! [A] : r2_hidden(A, k1_ordinal1(A))) ).
fof(t8_ordinal1, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, k1_ordinal1(B)) <=>  (r2_hidden(A, B) | A=B) ) ) ) ).
