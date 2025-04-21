// Ejercicio 050: Guarda 5 números en un arreglo y posteriormente muéstralos de mayor a menor usando el método de la burbuja

Algoritmo Ejercicio050 
	
	Definir lista, i, j, memoria Como Entero;
	memoria = 0;
	
	Dimension lista[5];
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Mostrar "Ingresa el valor ", i+1, ":";
		Leer lista[i];
	Fin Para
	
	// Este es el ciclo externo del algoritmo de burbuja
	// Controla cuántas veces se va a recorrer el arreglo
	// Como hay 5 elementos, se hacen 4 pasadas (de 0 a 3) => 5 - 1 = 4
	Para j = 0 Hasta 3 Con Paso 1 Hacer
		// Ciclo interno que recorre el arreglo en cada pasada
		// Compara elementos consecutivos para ordenarlos
		// El límite cambia en cada vuelta porque al principio ya quedan ordenados los mayores
		// Se usa 3 - j para no comparar elementos que ya están en su lugar
		Para i = 0 Hasta 3 - j Con Paso 1 Hacer // 3-1=2 // 3-2=1 // 3-3=0
			// Se verifica si el elemento actual es menor que el siguiente
			// Si es así, se intercambian para mover el mayor hacia el principio
			Si lista[i] < lista[i+1] Entonces
				// Guardar el número mayor (lista[i+1]) en una variable temporal
				memoria = lista[i+1];
				// Mover el número menor (lista[i]) a la posición siguiente
				lista[i+1] = lista[i];
				// Colocar el número mayor en la posición actual
				lista[i] = memoria;
			Fin Si
		Fin Para
		
	Fin Para
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Escribir lista[i];
	Fin Para
	
FinAlgoritmo