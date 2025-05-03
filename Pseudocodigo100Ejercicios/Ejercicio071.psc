// Ejercicio 071: Vamos a ir m�s alla y vamos a reducir la fracci�n si es reducible. Para eso crea otro 
// subproceso que calcule el MCD

// Devuelve el mayor de una lista de n�meros dada (aray)
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
// Devuelve el mcm de una lista de n�meros dada (array)
Funcion resultado <- Mcm (lista, cantidad)
	Definir resultado, i, multiplos Como Entero;
	Definir encontrado Como Logico;
	multiplos = 0;
	encontrado = Falso; // Sera verdadero cuando se encuentre el mcm
	resultado = Mayor(lista, cantidad); // La busqueda del mcm comienza con el n�mero mayor
	// Busqueda del mcm
	Mientras encontrado = Falso Hacer
		// Se cuentan cuantos numeros de la lista son m�ltiplos del candidato a mcm
		multiplos = 0;
		// Verificamos cu�ntos n�meros del arreglo dividen exactamente al n�mero actual (resultado)
		Para i = 0 Hasta cantidad-1 Con Paso 1 Hacer
			Si resultado % lista[i] = 0 Entonces // �resultado es m�ltiplo exacto de lista[i]?
				multiplos = multiplos+1; // Contamos cu�ntos lo dividen exactamente
			Fin Si
		Fin Para
		// Si todos los n�meros del arreglo son divisores del n�mero actual, ya encontramos el MCM
		Si multiplos = cantidad Entonces
			encontrado = Verdadero;
		SiNo
			resultado = resultado+1; // Si no, seguimos probando con el siguiente n�mero
		Fin Si
	Fin Mientras
Fin Funcion
// Devuelve el MCD de dos n�meros dados
Funcion resultado <- Mcd (num1, num2)
	Definir resultado Como Entero;
	// Se asigna a resultado el menor de los dos
	Si num1 > num2 Entonces
		resultado = num2;
	SiNo
		resultado = num1;
	Fin Si
	// Buscar el MCD
	Mientras num1 % resultado <> 0 | num2 % resultado <> 0 Hacer
		resultado = resultado-1;
	Fin Mientras
Fin Funcion

Algoritmo Ejercicio071
	
	Definir numeradores, denominadores, i, numFinal, min, max Como Entero;
	// Se dimensionan los arreglos para 3 fracciones
	Dimension numeradores[3], denominadores[3];
	numFinal = 0;
	min = 0; // Para guardar el MCM
	max = 0; // Para guardar el MCD
	
	// Se piden al usuario las 3 fracciones
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		// Solicita el numerador de la fracci�n actual
		Mostrar "Escribe el numerador de la fracci�n n�mero ", i+1;
		Leer numeradores[i];
		// Solicita el denominador de la fracci�n actual
		Escribir "Escribe el denominador de la fracci�n n�mero ", i+1;
		Leer denominadores[i];
	Fin Para
	
	// Imprime las fracciones introducidas por el usuario
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		// Imprime la fracci�n actual
		Imprimir numeradores[i], '/',denominadores[i], Sin Saltar;
		// Agrega el signo "+" entre fracciones (excepto en la �ltima)
		Si i <> 2 Entonces
			Mostrar "+" Sin Saltar;
		Fin Si
	Fin Para
	Escribir '';
	// Se calcula el MCM de los denominadores usando la funci�n Mcm
	min = Mcm(denominadores, 3);
	// Se suman las fracciones con denominador com�n
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		// Se convierte cada fracci�n al nuevo denominador (m�nimo com�n) y se acumula el numerador
		numFinal = numFinal + (min * numeradores[i] / denominadores[i]);
	Fin Para
	
	max = Mcd(numFinal, min);
	// Si se puede reducir la fracci�n se reduce
	Escribir "El resultado es: ", numFinal/max, "/" , min/max;
	
FinAlgoritmo