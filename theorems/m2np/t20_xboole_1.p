fof(t20_xboole_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) &  (r1_tarski(A, C) &  (! [D] :  ( (r1_tarski(D, B) & r1_tarski(D, C))  => r1_tarski(D, A)) ) ) )  => A=k3_xboole_0(B, C)) ) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(t17_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(k3_xboole_0(A, B), A)) ) ).
fof(t19_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(A, C))  => r1_tarski(A, k3_xboole_0(B, C))) ) ) ) ).
