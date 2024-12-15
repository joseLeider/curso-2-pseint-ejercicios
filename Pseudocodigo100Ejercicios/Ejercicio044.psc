// Ejercicio 044: Dibujar la siguiente estructura triangular, preguntando al usuario cuantas filas tendrá

// *
// **
// ***
// ****

Algoritmo Ejercicio044
	
	Definir x, y, filas Como Entero;
	Definir estructura Como Cadena;
	
	filas = 0;
	estructura = '';
	
	Imprimir 'Ingresa el número de filas que tendrá la estructura triangular';
	Leer filas;
	
	Para x = 1 Hasta filas Con Paso 1 Hacer
		Para y = 1 Hasta filas Con Paso 1 Hacer
			estructura = Concatenar(estructura, '*');
		Fin Para
		Imprimir estructura;
	Fin Para
	
FinAlgoritmo