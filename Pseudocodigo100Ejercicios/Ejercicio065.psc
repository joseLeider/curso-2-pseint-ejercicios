// Ejercicio 065: Crea un subproceso que devuelva la posici�n que ocupa el mayor n�mero de una lista dada (puedes acortar el
// estudio de la lista pasando otro argumento al subproceso que indique hasta que posici�n tiene que analizar.) Despu�s
// aprovecha ese subproceso para ordenar una lista por el m�todo de selecci�n (ejercicio 051).

// Subproceso que devuelve la posici�n del n�mero m�s grande hasta un cierto �ndice
Funcion resultado <- PosicionMayor (arrayNumeros, hastaIndice)
	Definir mayor, i, resultado Como Entero;
	resultado = 0; // Suponemos que el mayor est� en la posici�n 0 inicialmente
	mayor = arrayNumeros[0];
	Para i = 1 Hasta hastaIndice Con Paso 1 Hacer
		Si arrayNumeros[i] > mayor Entonces
			resultado = i; // Guardamos la posici�n del nuevo mayor
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
	Imprimir 'El indice que ocupa el n�mero mayor del arreglo es: ', PosicionMayor(arrayNumeros, 4);
	Imprimir '';
	// Ordenar el arreglo de menor a mayor usando el m�todo de selecci�n
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		// Encontrar la posici�n del mayor en la parte no ordenada del arreglo
		posMayor = PosicionMayor(arrayNumeros, 4-i);
		// Guarda el valor que est� en la posici�n final de la parte no ordenada.
		memoria = arrayNumeros[4-i];
		// Mover el mayor al final de la parte no ordenada
		arrayNumeros[4-i] = arrayNumeros[posMayor];
		// Colocar el valor que estaba al final en la posici�n donde estaba el mayor
		arrayNumeros[posMayor] = memoria;
	Fin Para
	
	// Resultado ordenado
	Imprimir 'Arreglo ordenado';
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Imprimir arrayNumeros[i], ' ' Sin Saltar;
	Fin Para
	
FinAlgoritmo