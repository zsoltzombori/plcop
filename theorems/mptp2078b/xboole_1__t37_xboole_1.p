% Mizar problem: t37_xboole_1,xboole_1,525,26 
fof(t37_xboole_1, conjecture,  (! [A] :  (! [B] :  (k4_xboole_0(A, B)=k1_xboole_0 <=> r1_tarski(A, B)) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(l32_xboole_1, axiom,  (! [A] :  (! [B] :  (k4_xboole_0(A, B)=k1_xboole_0 <=> r1_tarski(A, B)) ) ) ).
