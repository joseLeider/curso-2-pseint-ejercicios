// Ejercicio 014: Indicar si un n�mero entero dado es par o impar. (Entendemos el cero como par)

Algoritmo Ejercicio014
	
	Definir num Como Entero;
	num = 0;
	Escribir "Ingresa un n�mero: ";
	Leer num;
	
	Si num % 2 == 0 Entonces
		Imprimir "El numero ", num, " es par";
	SiNo
		Imprimir "El n�mero ", num, " es impar";
	Fin Si
	
FinAlgoritmo