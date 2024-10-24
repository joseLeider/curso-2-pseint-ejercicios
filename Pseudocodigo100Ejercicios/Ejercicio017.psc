// Ejercicio 017: Determinar el menor de tres números dados

Algoritmo Ejercicio017
	
	Definir num1, num2, num3 Como Real;
	Escribir "Ingresa 3 números";
	Leer num1, num2, num3;
	
	Si num1 <= num2 & num1 <= num3 Entonces
		Imprimir "El número ", num1, " es menor";
	SiNo
		Si num2 <= num3 Entonces
			Imprimir "El número ", num2, " es menor";
		SiNo
			Imprimir "El número ", num3, " es menor";
		Fin Si
	Fin Si
	
FinAlgoritmo