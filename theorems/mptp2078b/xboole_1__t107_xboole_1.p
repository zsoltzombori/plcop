% Mizar problem: t107_xboole_1,xboole_1,1403,46 
fof(t107_xboole_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, k5_xboole_0(B, C)) <=>  (r1_tarski(A, k2_xboole_0(B, C)) & r1_xboole_0(A, k3_xboole_0(B, C))) ) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k5_xboole_0, axiom,  (! [A, B] : k5_xboole_0(A, B)=k5_xboole_0(B, A)) ).
fof(d6_xboole_0, axiom,  (! [A] :  (! [B] : k5_xboole_0(A, B)=k2_xboole_0(k4_xboole_0(A, B), k4_xboole_0(B, A))) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k5_xboole_0, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(l98_xboole_1, axiom,  (! [A] :  (! [B] : k5_xboole_0(A, B)=k4_xboole_0(k2_xboole_0(A, B), k3_xboole_0(A, B))) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t106_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, k4_xboole_0(B, C)) =>  (r1_tarski(A, B) & r1_xboole_0(A, C)) ) ) ) ) ).
fof(t86_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_xboole_0(A, C))  => r1_tarski(A, k4_xboole_0(B, C))) ) ) ) ).
