// Ejercicio 069: Crea un subproceso que calcule el mcm (mínimo común multiplo) de varios números proporcionados en un
// arreglo. Prueba su funcionamiento en el algoritmo principal.

// método por búsqueda.

// Devuelve el mayor número de una lista dada (array)
Funcion resultado <- Mayor (lista, cantidad)
	Definir i, resultado Como Entero;
	resultado = lista[0]; // Asignamos el primer elemento como el mayor
	
	Para i = 1 Hasta cantidad-1 Con Paso 1 Hacer
		Si lista[i] > resultado Entonces
			resultado = lista[i];
		Fin Si
	Fin Para
Fin Funcion
// Devuelve el mcm de una lista de números dada (array)
Funcion resultado <- Mcm (lista, cantidad)
	Definir resultado, i, multiplos Como Entero;
	Definir encontrado Como Logico;
	i = 0;
	multiplos = 0;
	encontrado = Falso; // Sera verdadero cuando se encuentre el mcm
	resultado = Mayor(lista, cantidad); // La busqueda del mcm comienza con el número mayor
	// Busqueda del mcm
	Mientras encontrado = Falso Hacer
		// Se cuentan cuantos numeros de la lista son múltiplos del candidato a mcm
		multiplos = 0;
		// Verificamos cuántos números del arreglo dividen exactamente al número actual (resultado)
		Para i = 0 Hasta cantidad-1 Con Paso 1 Hacer
			Si resultado % lista[i] = 0 Entonces // ¿resultado es múltiplo exacto de lista[i]?
				multiplos = multiplos+1; // Contamos cuántos lo dividen exactamente
			Fin Si
		Fin Para
		// Si todos los números del arreglo son divisores del número actual, ya encontramos el MCM
		Si multiplos = cantidad Entonces
			encontrado = Verdadero;
		SiNo
			resultado = resultado+1; // Si no, seguimos probando con el siguiente número
		Fin Si
	Fin Mientras
Fin Funcion

Algoritmo Ejercicio069
	
	Definir lista, i Como Entero;
	Dimension lista[5];
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		lista[i] = azar(9)+1; // Del 1 al 9
	Fin Para
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Escribir lista[i], ' ' Sin Saltar;
	Fin Para
	Escribir '';
	Escribir 'El mcm es :', ' ', Mcm(lista,5);
	
FinAlgoritmo