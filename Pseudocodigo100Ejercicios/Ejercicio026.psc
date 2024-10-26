// Ejercicio 026: Suma todos los numeros comprendidos entre los dos numeros enteros que indique el usuario (sin incluirlos)

Algoritmo Ejercicio026
	
	Definir num1, num2, suma Como Entero;
	num1 = 0;
	num2 = 0;
	suma = 0;
	
	Escribir "Ingrese dos numeros. Primero el menor de ellos";
	Leer num1, num2;
	num1 = num1 + 1;
	
	Mientras num1 < num2 Hacer
		suma = suma+num1;
		num1 = num1 + 1;
		Imprimir suma;
	FinMientras
	
FinAlgoritmo