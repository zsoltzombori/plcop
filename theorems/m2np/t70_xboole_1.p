fof(t70_xboole_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( ~ ( ( ~ (r1_xboole_0(A, k2_xboole_0(B, C)))  &  (r1_xboole_0(A, B) & r1_xboole_0(A, C)) ) )  &  ~ ( ( ~ ( (r1_xboole_0(A, B) & r1_xboole_0(A, C)) )  & r1_xboole_0(A, k2_xboole_0(B, C))) ) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).
