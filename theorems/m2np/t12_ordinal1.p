fof(t12_ordinal1, conjecture,  (! [A] :  (v1_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  (! [C] :  (v3_ordinal1(C) =>  ( (r1_tarski(A, B) & r2_hidden(B, C))  => r2_hidden(A, C)) ) ) ) ) ) ) ).
fof(cc1_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (v1_ordinal1(A) & v2_ordinal1(A)) ) ) ).
fof(d8_xboole_0, axiom,  (! [A] :  (! [B] :  (r2_xboole_0(A, B) <=>  (r1_tarski(A, B) &  ~ (A=B) ) ) ) ) ).
fof(t10_ordinal1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_ordinal1(C) =>  ( (r2_hidden(A, B) & r2_hidden(B, C))  => r2_hidden(A, C)) ) ) ) ) ).
fof(t11_ordinal1, axiom,  (! [A] :  (v1_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  (r2_xboole_0(A, B) => r2_hidden(A, B)) ) ) ) ) ).
