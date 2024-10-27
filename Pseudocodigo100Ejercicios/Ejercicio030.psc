// Ejercicio 030: Calcular la suma de todos los números comprendidos entre 0 y el número natural dada por el usuario

Algoritmo Ejercicio030
	
	Definir num, i, suma Como Entero;
	num = 0;
	suma = 0;
	
	Imprimir "Ingresa un numero";
	Leer num;
	
	Para i = 0 Hasta num Con Paso 1 Hacer
		suma = suma + i;
		Imprimir suma;
	Fin Para
	
	Imprimir "Resultado de la suma: ", suma;
	
FinAlgoritmo