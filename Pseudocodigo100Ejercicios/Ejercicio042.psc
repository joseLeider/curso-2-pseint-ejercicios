// Ejercicio 042: Calcular y mostrar por pantalla los factoriales de los números del 10 al 1

Algoritmo Ejercicio042
	
	Definir i, factorial, num Como Entero;
	
	factorial = 10;
	
	Para num = 10 Hasta 1 Con Paso -1 Hacer
		Para i = num-1 Hasta 1 Con Paso -1 Hacer
			factorial = factorial * i;
		Fin Para
		Imprimir 'Factorial de ', num, ' es: ', factorial;
		factorial = num-1;
	Fin Para
	
FinAlgoritmo