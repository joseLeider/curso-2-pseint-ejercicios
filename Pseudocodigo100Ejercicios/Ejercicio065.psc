// Ejercicio 065: Crea un subproceso que devuelva la posición que ocupa el mayor número de una lista dada (puedes acortar el
// estudio de la lista pasando otro argumento al subproceso que indique hasta que posición tiene que analizar.) Después
// aprovecha ese subproceso para ordenar una lista por el método de selección (ejercicio 051).

// Subproceso que devuelve la posición del número más grande hasta un cierto índice
Funcion resultado <- PosicionMayor (arrayNumeros, hastaIndice)
	Definir mayor, i, resultado Como Entero;
	resultado = 0; // Suponemos que el mayor está en la posición 0 inicialmente
	mayor = arrayNumeros[0];
	Para i = 1 Hasta hastaIndice Con Paso 1 Hacer
		Si arrayNumeros[i] > mayor Entonces
			resultado = i; // Guardamos la posición del nuevo mayor
			mayor = arrayNumeros[i];
		Fin Si
	Fin Para
Fin Funcion

Algoritmo Ejercicio065
	
	Definir i, j, arrayNumeros, memoria, posMayor Como Entero;
	Dimension arrayNumeros[5];

	// Asignar valores aleatorios al arreglo
	Imprimir 'Arreglo inicial desordenado';
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		arrayNumeros[i] = Aleatorio(1,10);
		Imprimir arrayNumeros[i], ' ', Sin Saltar;
	Fin Para
	Imprimir '';
	Imprimir '';
	Imprimir 'El indice que ocupa el número mayor del arreglo es: ', PosicionMayor(arrayNumeros, 4);
	Imprimir '';
	// Ordenar el arreglo de menor a mayor usando el método de selección
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		// Encontrar la posición del mayor en la parte no ordenada del arreglo
		posMayor = PosicionMayor(arrayNumeros, 4-i);
		// Guarda el valor que está en la posición final de la parte no ordenada.
		memoria = arrayNumeros[4-i];
		// Mover el mayor al final de la parte no ordenada
		arrayNumeros[4-i] = arrayNumeros[posMayor];
		// Colocar el valor que estaba al final en la posición donde estaba el mayor
		arrayNumeros[posMayor] = memoria;
	Fin Para
	
	// Resultado ordenado
	Imprimir 'Arreglo ordenado';
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Imprimir arrayNumeros[i], ' ' Sin Saltar;
	Fin Para
	
FinAlgoritmo