// Ejercicio 051: Intenta hacer ahora el ejercicio 050 con un nuevo método denominado de selección consistente en buscar el
// número menor y moverlo a la derecha del todo. Después se repite este procedimiento hasta tener todo el arreglo colocado

Algoritmo Ejercicio051
	
	Definir lista, i, j, memoria, menor, posMenor Como Entero;
	// Reservar espacio para un arreglo de 5 elementos
	Dimension lista[5];
	
	// Iniciar un ciclo para llenar el arreglo con valores aleatorios
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		// Asignar un número aleatorio entre 0 y 19 a cada posición del arreglo
		lista[i] = azar(20);
	Fin Para
	
	// En el método de selección, solo se necesitan n - 1 pasadas porque al ordenar los primeros, el último ya 
	// queda en su lugar automáticamente.
	
	// Iniciar un ciclo para ordenar el arreglo usando el método de selección -> 4 pasadas o recorridos
	Para j = 0 Hasta 3 Con Paso 1 Hacer
		// Tomar el primer elemento como el menor provisional
		menor = lista[0];
		// Guardar la posición del menor provisional
		posMenor = 0;
		
		// Buscar el menor elemento en la parte no ordenada del arreglo -> 14 pasadas
		Para i = 0 Hasta 4 - j Con Paso 1 Hacer // 4-0=4 // 4-1=3 // (4-2=2->indice=3pasadas) // (4-3=1->indice=2pasadas)
			// Verificar si el elemento actual es menor que el menor provisional
			Si lista[i] < menor Entonces
				// Si es así, actualizar la posición del menor
				posMenor = i;
				// Y actualizar el valor del menor
				menor = lista[posMenor];
			Fin Si
		Fin Para
		
		// Guardar el valor actual en la posición final no ordenada
		memoria = lista[4 - j];
		// Mover el menor valor encontrado a esa posición final
		lista[4 - j] = lista[posMenor];
		// Colocar el valor guardado en la posición donde estaba el menor
		lista[posMenor] = memoria;
	Fin Para
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Mostrar lista[i];
	Fin Para

FinAlgoritmo