fof(t29_ordinal1, conjecture,  (! [A] :  (v3_ordinal1(A) =>  ( ~ ( ( ~ (v4_ordinal1(A))  &  (! [B] :  (v3_ordinal1(B) =>  ~ (A=k1_ordinal1(B)) ) ) ) )  &  ~ ( ( (? [B] :  (v3_ordinal1(B) & A=k1_ordinal1(B)) )  & v4_ordinal1(A)) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(cc1_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (v1_ordinal1(A) & v2_ordinal1(A)) ) ) ).
fof(d8_xboole_0, axiom,  (! [A] :  (! [B] :  (r2_xboole_0(A, B) <=>  (r1_tarski(A, B) &  ~ (A=B) ) ) ) ) ).
fof(fc2_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  ( ~ (v1_xboole_0(k1_ordinal1(A)))  & v3_ordinal1(k1_ordinal1(A))) ) ) ).
fof(redefinition_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  =>  (r1_ordinal1(A, B) <=> r1_tarski(A, B)) ) ) ).
fof(t11_ordinal1, axiom,  (! [A] :  (v1_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  (r2_xboole_0(A, B) => r2_hidden(A, B)) ) ) ) ) ).
fof(t21_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  (r2_hidden(A, B) <=> r1_ordinal1(k1_ordinal1(A), B)) ) ) ) ) ).
fof(t28_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (v4_ordinal1(A) <=>  (! [B] :  (v3_ordinal1(B) =>  (r2_hidden(B, A) => r2_hidden(k1_ordinal1(B), A)) ) ) ) ) ) ).
fof(t6_ordinal1, axiom,  (! [A] : r2_hidden(A, k1_ordinal1(A))) ).
