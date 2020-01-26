% Mizar problem: t1_xboole_0,xboole_0,182,39 
fof(t1_xboole_0, conjecture,  (! [A] :  (! [B] :  (! [C] :  (r2_hidden(A, k5_xboole_0(B, C)) <=>  ~ ( (r2_hidden(A, B) <=> r2_hidden(A, C)) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k5_xboole_0, axiom,  (! [A, B] : k5_xboole_0(A, B)=k5_xboole_0(B, A)) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(d6_xboole_0, axiom,  (! [A] :  (! [B] : k5_xboole_0(A, B)=k2_xboole_0(k4_xboole_0(A, B), k4_xboole_0(B, A))) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k5_xboole_0, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
