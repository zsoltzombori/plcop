fof(t17_ordinal1, conjecture,  (! [A] :  (v3_ordinal1(A) => v3_ordinal1(k1_ordinal1(A))) ) ).
fof(cc1_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (v1_ordinal1(A) & v2_ordinal1(A)) ) ) ).
fof(cc2_ordinal1, axiom,  (! [A] :  ( (v1_ordinal1(A) & v2_ordinal1(A))  => v3_ordinal1(A)) ) ).
fof(d1_ordinal1, axiom,  (! [A] : k1_ordinal1(A)=k2_xboole_0(A, k1_tarski(A))) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d2_ordinal1, axiom,  (! [A] :  (v1_ordinal1(A) <=>  (! [B] :  (r2_hidden(B, A) => r1_tarski(B, A)) ) ) ) ).
fof(d3_ordinal1, axiom,  (! [A] :  (v2_ordinal1(A) <=>  (! [B] :  (! [C] :  ~ ( (r2_hidden(B, A) &  (r2_hidden(C, A) &  ( ~ (r2_hidden(B, C))  &  ( ~ (B=C)  &  ~ (r2_hidden(C, B)) ) ) ) ) ) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t7_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(A, k2_xboole_0(A, B))) ) ).
