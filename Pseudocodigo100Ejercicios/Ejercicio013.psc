// Ejercicio 013: Indicar si un n�mero es mayor, menor o igual a cero.

Algoritmo Ejercicio0013
	
	Definir num Como Real;
	num = 0;
	Mostrar "Ingresa un n�mero";
	Leer num;
	
	Si num > 0 Entonces
		Imprimir "El n�mero ", num, " es mayor que cero";
	SiNo
		Si num < 0 Entonces
			Imprimir "El n�mero ", num, " es menor que cero";
		SiNo
			Imprimir "El n�mero ", num, " es igual a cero";
		Fin Si
	Fin Si
	
FinAlgoritmo