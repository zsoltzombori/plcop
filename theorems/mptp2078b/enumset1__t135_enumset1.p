% Mizar problem: t135_enumset1,enumset1,972,9 
fof(t135_enumset1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] :  (! [I] :  (! [J] : k8_enumset1(A, B, C, D, E, F, G, H, I, J)=k2_xboole_0(k7_enumset1(A, B, C, D, E, F, G, H, I), k1_tarski(J))) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d7_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] :  (! [I] :  (! [J] :  (J=k7_enumset1(A, B, C, D, E, F, G, H, I) <=>  (! [K] :  (r2_hidden(K, J) <=>  ~ ( ( ~ (K=A)  &  ( ~ (K=B)  &  ( ~ (K=C)  &  ( ~ (K=D)  &  ( ~ (K=E)  &  ( ~ (K=F)  &  ( ~ (K=G)  &  ( ~ (K=H)  &  ~ (K=I) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d8_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (! [G] :  (! [H] :  (! [I] :  (! [J] :  (! [K] :  (K=k8_enumset1(A, B, C, D, E, F, G, H, I, J) <=>  (! [L] :  (r2_hidden(L, K) <=>  ~ ( ( ~ (L=A)  &  ( ~ (L=B)  &  ( ~ (L=C)  &  ( ~ (L=D)  &  ( ~ (L=E)  &  ( ~ (L=F)  &  ( ~ (L=G)  &  ( ~ (L=H)  &  ( ~ (L=I)  &  ~ (L=J) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k7_enumset1, axiom, $true).
fof(dt_k8_enumset1, axiom, $true).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
