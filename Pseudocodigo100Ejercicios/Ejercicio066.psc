// Ejercicio 066: Convierte el ejercicio anterior en un subproceso que devuelva ordenada una lista que se le proporcione.
// Después crea un algoritmo principal en el que se cree una matriz y posteriormente se ordenen de mayor a menor sus filas.

Funcion resultado <- PosicionMayor (arrayNumeros, hastaIndice)
	Definir mayor, i, resultado Como Entero;
	resultado = 0;
	mayor = arrayNumeros[0];
	Para i = 1 Hasta hastaIndice Con Paso 1 Hacer
		Si arrayNumeros[i] > mayor Entonces
			resultado = i;
			mayor = arrayNumeros[i];
		Fin Si
	Fin Para
Fin Funcion
// Esta función ordena un arreglo de mayor a menor usando el método de selección directa.
Funcion OrdenarArray (arrayNumeros, elementos)
	Definir i, memoria, posMayor Como Entero;
	Para i = 0 Hasta elementos-1 Con Paso 1 Hacer
		// Se busca la posición del número mayor entre los elementos no ordenados (hasta elementos-1-i)
		posMayor = PosicionMayor(arrayNumeros, elementos-1-i);
		// Se guarda el valor actual del final de la porción no ordenada
		memoria = arrayNumeros[elementos-1-i];
		// Se coloca el número mayor en la última posición de la parte no ordenada
		arrayNumeros[elementos-1-i] = arrayNumeros[posMayor];
		// Se coloca el valor anterior (guardado en memoria) en la posición donde estaba el mayor
		arrayNumeros[posMayor] = memoria;
	Fin Para
Fin Funcion

Algoritmo Ejercicio066
	Definir matriz, i, j, fila Como Entero;
	Dimension matriz[5,5];
	Dimension fila[5]; // Arreglo auxiliar para copiar filas
	
	Imprimir 'Matriz inicial desordenado';
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Para j = 0 Hasta 4 Con Paso 1 Hacer
			matriz[i,j] = Aleatorio(1,9);
			Imprimir matriz[i,j], ' ', Sin Saltar; // Imprime los valores en fila
		Fin Para
		Imprimir '';
	Fin Para
	
	Imprimir ' ';
	Imprimir 'Matriz ordenado';
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		// Se recorren las filas una por una
		Para j = 0 Hasta 4 Con Paso 1 Hacer
			fila[j] = matriz[i,j]; // Se copia la fila a un arreglo temporal
		Fin Para
		
		OrdenarArray(fila, 5); // Se ordena la fila de mayor a menor
		
		Para j = 0 Hasta 4 Con Paso 1 Hacer
			matriz[i,j] = fila[j]; // Se copia la fila ordenada de nuevo a la matriz
			Escribir matriz[i,j], ' ' Sin Saltar; // Se imprime la fila ordenada
		Fin Para
		Escribir '';
	Fin Para
	
FinAlgoritmo