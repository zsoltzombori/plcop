% Mizar problem: t116_xboole_1,xboole_1,1484,35 
fof(t116_xboole_1, conjecture,  (! [A] :  (! [B] :  (! [C] : k3_xboole_0(A, k3_xboole_0(B, C))=k3_xboole_0(k3_xboole_0(A, B), k3_xboole_0(A, C))) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(t16_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_xboole_0(k3_xboole_0(A, B), C)=k3_xboole_0(A, k3_xboole_0(B, C))) ) ) ).
