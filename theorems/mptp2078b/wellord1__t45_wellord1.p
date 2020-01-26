% Mizar problem: t45_wellord1,wellord1,922,34 
fof(t45_wellord1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r3_wellord1(A, B, C) =>  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), A) =>  (D=E |  (r2_hidden(k4_tarski(k1_funct_1(C, D), k1_funct_1(C, E)), B) &  ~ (k1_funct_1(C, D)=k1_funct_1(C, E)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(d7_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r3_wellord1(A, B, C) <=>  (k1_relat_1(C)=k3_relat_1(A) &  (k2_relat_1(C)=k3_relat_1(B) &  (v2_funct_1(C) &  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), A) <=>  (r2_hidden(D, k3_relat_1(A)) &  (r2_hidden(E, k3_relat_1(A)) & r2_hidden(k4_tarski(k1_funct_1(C, D), k1_funct_1(C, E)), B)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d8_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(B, k1_relat_1(A)) &  (r2_hidden(C, k1_relat_1(A)) & k1_funct_1(A, B)=k1_funct_1(A, C)) )  => B=C) ) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_relat_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
