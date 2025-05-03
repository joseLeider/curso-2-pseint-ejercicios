// Ejercicio 070: Crea un algoritmo que calcule la suma de unas fracciones dadas por el usuario. El resultado debe de ser
// expresado en forma de fracción. Ej: 5/7. NOTA: Aprovecha los subprocesos creados en los ejercicios anteriores.

Funcion resultado <- Mayor (arrayNumeros, elementos)
	Definir i, resultado Como Entero;
	resultado = 0;
	resultado = arrayNumeros[0]; // Asignamos el primer elemento como el mayor
	Para i = 1 Hasta elementos-1 Con Paso 1 Hacer
		Si arrayNumeros[i] > resultado Entonces
			resultado = arrayNumeros[i];
		Fin Si
	Fin Para
Fin Funcion

// Devuelve el mcm de una lista de números dada (array)
Funcion resultado <- Mcm (lista, cantidad)
	Definir resultado, i, multiplos Como Entero;
	Definir encontrado Como Logico;
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

Algoritmo Ejercicio070
	
	Definir numeradores, denominadores, i, numFinal, min Como Entero;
	// Se dimensionan los arreglos para 3 fracciones
	Dimension numeradores[3], denominadores[3];
	numFinal = 0;
	min = 0;
	
	// Se piden al usuario las 3 fracciones
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		// Solicita el numerador de la fracción actual
		Mostrar "Escribe el numerador de la fracción número ", i+1;
		Leer numeradores[i];
		// Solicita el denominador de la fracción actual
		Escribir "Escribe el denominador de la fracción número ", i+1;
		Leer denominadores[i];
	Fin Para
	
	// Imprime las fracciones introducidas por el usuario
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		// Imprime la fracción actual
		Imprimir numeradores[i], '/',denominadores[i], Sin Saltar;
		// Agrega el signo "+" entre fracciones (excepto en la última)
		Si i <> 2 Entonces
			Mostrar "+" Sin Saltar;
		Fin Si
	Fin Para
	Escribir '';
	// Se calcula el MCM de los denominadores usando la función Mcm
	min = Mcm(denominadores, 3);
	// Se suman las fracciones con denominador común
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		// Se convierte cada fracción al nuevo denominador (mínimo común) y se acumula el numerador
		numFinal = numFinal + (min * numeradores[i] / denominadores[i]);
	Fin Para
	// Muestra el resultado de la suma como una fracción no simplificada
	Escribir "El resultado es: ", numFinal, "/" , min;

FinAlgoritmo