fof(l97_xboole_1, conjecture,  (! [A] :  (! [B] : r1_xboole_0(k3_xboole_0(A, B), k5_xboole_0(A, B))) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(t1_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (r2_hidden(A, k5_xboole_0(B, C)) <=>  ~ ( (r2_hidden(A, B) <=> r2_hidden(A, C)) ) ) ) ) ) ).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).
