fof(t21_ordinal1, conjecture,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  (r2_hidden(A, B) <=> r1_ordinal1(k1_ordinal1(A), B)) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d1_ordinal1, axiom,  (! [A] : k1_ordinal1(A)=k2_xboole_0(A, k1_tarski(A))) ).
fof(fc2_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  ( ~ (v1_xboole_0(k1_ordinal1(A)))  & v3_ordinal1(k1_ordinal1(A))) ) ) ).
fof(redefinition_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  =>  (r1_ordinal1(A, B) <=> r1_tarski(A, B)) ) ) ).
fof(t137_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(k2_xboole_0(C, k1_tarski(A)), B) <=>  (r2_hidden(A, B) & r1_tarski(C, B)) ) ) ) ) ).
fof(t16_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  (r1_ordinal1(A, B) | r2_hidden(B, A)) ) ) ) ) ).
