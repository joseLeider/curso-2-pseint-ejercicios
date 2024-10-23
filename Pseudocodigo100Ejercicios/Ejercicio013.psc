// Ejercicio 013: Indicar si un número es mayor, menor o igual a cero.

Algoritmo Ejercicio0013
	
	Definir num Como Real;
	num = 0;
	Mostrar "Ingresa un número";
	Leer num;
	
	Si num > 0 Entonces
		Imprimir "El número ", num, " es mayor que cero";
	SiNo
		Si num < 0 Entonces
			Imprimir "El número ", num, " es menor que cero";
		SiNo
			Imprimir "El número ", num, " es igual a cero";
		Fin Si
	Fin Si
	
FinAlgoritmo