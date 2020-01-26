% Mizar problem: t99_xboole_1,xboole_1,1330,46 
fof(t99_xboole_1, conjecture,  (! [A] :  (! [B] :  (! [C] : k4_xboole_0(k5_xboole_0(A, B), C)=k2_xboole_0(k4_xboole_0(A, k2_xboole_0(B, C)), k4_xboole_0(B, k2_xboole_0(A, C)))) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k5_xboole_0, axiom,  (! [A, B] : k5_xboole_0(A, B)=k5_xboole_0(B, A)) ).
fof(d6_xboole_0, axiom,  (! [A] :  (! [B] : k5_xboole_0(A, B)=k2_xboole_0(k4_xboole_0(A, B), k4_xboole_0(B, A))) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k5_xboole_0, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(t41_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k4_xboole_0(k4_xboole_0(A, B), C)=k4_xboole_0(A, k2_xboole_0(B, C))) ) ) ).
fof(t42_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k4_xboole_0(k2_xboole_0(A, B), C)=k2_xboole_0(k4_xboole_0(A, C), k4_xboole_0(B, C))) ) ) ).
