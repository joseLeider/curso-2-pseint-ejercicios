// Ejercicio 044: Dibujar la siguiente estructura triangular, preguntando al usuario cuantas filas tendrá

// *
// **
// ***
// ****

Algoritmo Ejercicio044
	
	Definir i, j, filas Como Entero;
	Definir estructura Como Cadena;
	
	filas = 0;
	
	Imprimir 'Ingresa el número de filas que tendrá la estructura triangular';
	Leer filas;
	
	Para i = 1 Hasta filas Con Paso 1 Hacer
		estructura = ''; // Reiniciar estructura para cada fila
		Para j = 1 Hasta i Con Paso 1 Hacer
			estructura = Concatenar(estructura, '*');
		Fin Para
		Imprimir estructura;
	Fin Para
	
FinAlgoritmo
