// Ejercicio 017: Determinar el menor de tres n�meros dados

Algoritmo Ejercicio017
	
	Definir num1, num2, num3 Como Real;
	Escribir "Ingresa 3 n�meros";
	Leer num1, num2, num3;
	
	Si num1 <= num2 & num1 <= num3 Entonces
		Imprimir "El n�mero ", num1, " es menor";
	SiNo
		Si num2 <= num3 Entonces
			Imprimir "El n�mero ", num2, " es menor";
		SiNo
			Imprimir "El n�mero ", num3, " es menor";
		Fin Si
	Fin Si
	
FinAlgoritmo