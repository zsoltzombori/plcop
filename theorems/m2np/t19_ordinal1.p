fof(t19_ordinal1, conjecture,  (! [A] :  ( (! [B] :  (r2_hidden(B, A) =>  (v3_ordinal1(B) & r1_tarski(B, A)) ) )  => v3_ordinal1(A)) ) ).
fof(cc2_ordinal1, axiom,  (! [A] :  ( (v1_ordinal1(A) & v2_ordinal1(A))  => v3_ordinal1(A)) ) ).
fof(d2_ordinal1, axiom,  (! [A] :  (v1_ordinal1(A) <=>  (! [B] :  (r2_hidden(B, A) => r1_tarski(B, A)) ) ) ) ).
fof(d3_ordinal1, axiom,  (! [A] :  (v2_ordinal1(A) <=>  (! [B] :  (! [C] :  ~ ( (r2_hidden(B, A) &  (r2_hidden(C, A) &  ( ~ (r2_hidden(B, C))  &  ( ~ (B=C)  &  ~ (r2_hidden(C, B)) ) ) ) ) ) ) ) ) ) ).
fof(t14_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  ~ ( ( ~ (r2_hidden(A, B))  &  ( ~ (A=B)  &  ~ (r2_hidden(B, A)) ) ) ) ) ) ) ) ).
