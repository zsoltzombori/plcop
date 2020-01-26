fof(t14_xboole_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) &  (r1_tarski(C, B) &  (! [D] :  ( (r1_tarski(A, D) & r1_tarski(C, D))  => r1_tarski(B, D)) ) ) )  => B=k2_xboole_0(A, C)) ) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(t7_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(A, k2_xboole_0(A, B))) ) ).
fof(t8_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(C, B))  => r1_tarski(k2_xboole_0(A, C), B)) ) ) ) ).
