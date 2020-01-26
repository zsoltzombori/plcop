% Mizar problem: t95_mcart_1,mcart_1,1919,15 
fof(t95_mcart_1, conjecture,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_relat_1(A))  =>  (! [B] :  (m1_subset_1(B, A) =>  (! [C] :  (m1_subset_1(C, A) =>  ( (k1_mcart_1(B)=k1_mcart_1(C) & k2_mcart_1(B)=k2_mcart_1(C))  => B=C) ) ) ) ) ) ) ).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_k1_xboole_0, axiom, $true).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t94_mcart_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (r2_hidden(C, B) &  (r2_hidden(A, B) &  (k1_mcart_1(C)=k1_mcart_1(A) & k2_mcart_1(C)=k2_mcart_1(A)) ) )  => C=A) ) ) ) ) ).
fof(rc1_relat_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v1_relat_1(A)) ) ).
