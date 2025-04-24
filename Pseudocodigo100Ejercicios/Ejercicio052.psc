// Ejercicio 052: Crea una matriz 3x3 con números aleatorios y después escribi su transpuesta. 
// Debe aparecer de filas y columnas

Algoritmo Ejercicio052
	
	Definir matriz, filas, columnas Como Entero;
	Dimension matriz[3,3];
	
	Para filas = 0 Hasta 2 Con Paso 1 Hacer
		Para columnas = 0 Hasta 2 Con Paso 1 Hacer
			matriz[filas, columnas] = azar(10);
		Fin Para
	Fin Para
	
	Mostrar "MATRIZ ORIGINAL";
	Para filas = 0 Hasta 2 Con Paso 1 Hacer
		Para columnas = 0 Hasta 2 Con Paso 1 Hacer
			Escribir matriz[filas, columnas], " " Sin Saltar;
		Fin Para
		Escribir " ";
	Fin Para
	
	// Mostrar la matriz transpuesta (intercambiar filas por columnas)
    Mostrar "MATRIZ TRANSPUESTA";
    Para filas = 0 Hasta 2 Con Paso 1 Hacer
        Para columnas = 0 Hasta 2 Con Paso 1 Hacer
            Escribir matriz[columnas, filas], " " Sin Saltar; // Invertir índices para transponer
        Fin Para
        Escribir " "; // Saltar a la siguiente línea después de mostrar una fila transpuesta
    Fin Para
	
FinAlgoritmo