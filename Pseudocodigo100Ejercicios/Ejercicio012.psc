// Ejercicio 012: Indicar si un n�mero es positivo o negativo. (Si es igual a cero el programa no hara nada)

Algoritmo Ejercicio0012
	
	Definir num Como Real;
	num = 0;
	Mostrar "Digite un n�mero";
	Leer num;
	
	Si num > 0 Entonces
		Imprimir "El n�mero ", num, " es positivo";
	SiNo
		Si num < 0 Entonces
			Imprimir "El n�mero ", num, " es negativo";
		Fin Si
	Fin Si
	
FinAlgoritmo