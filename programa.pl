% Aquí va el código.

empleado(maria, ventas, empleade).
empleado(juan, ventas, cadete).
empleado(roque, ventas, pasante).

empleado(nora, compras, empleade).
empleado(pedro, compras, cadete).

empleado(felipe, administracion, empleade).
empleado(hugo, administracion, empleade).
empleado(ana, administracion, cadete).

mismoDpto(Persona1, Persona2):-
    empleado(Persona1, Departamento, _),
    empleado(Persona2, Departamento, _).

mayorJerarquia(A, B):-
    empleado(A, _, empleade),
    not(empleado(B, _, empleade)).

puedeDarOrdenes(A, B):-
    mismoDpto(A, B),
    mayorJerarquia(A, B).

/* 
1. ¿quiénes trabajan en el departamento de compras? ¿y en el de ventas? 
empleado(Persona, compras, _).  
Persona = nora ;
Persona = pedro.

empleado(Persona, ventas, _).
Persona = maria ;
Persona = juan ;
Persona = roque.

2. dadas dos personas, ¿trabajan en el mismo departamento? 
?- mismoDpto(nora, pedro).
true.

?- mismoDpto(nora, hugo).  
false.

3. dadas dos personas a y b, ¿puede a darle órdenes a b? 
?- puedeDarOrdenes(nora, pedro).
true.

?- puedeDarOrdenes(pedro, nora). 
false.

?- puedeDarOrdenes(pedro, roque). 
false.

?- puedeDarOrdenes(maria, Persona).  
Persona = juan ;
Persona = roque.

*/