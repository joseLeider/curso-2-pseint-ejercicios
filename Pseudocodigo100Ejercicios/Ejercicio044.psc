// Ejercicio 044: Dibujar la siguiente estructura triangular, preguntando al usuario cuantas filas tendr�

// *
// **
// ***
// ****

Algoritmo Ejercicio044
	
	Definir i, j, filas Como Entero;
	Definir estructura Como Cadena;
	
	filas = 0;
	
	Imprimir 'Ingresa el n�mero de filas que tendr� la estructura triangular';
	Leer filas;
	
	Para i = 1 Hasta filas Con Paso 1 Hacer
		estructura = ''; // Reiniciar estructura para cada fila
		Para j = 1 Hasta i Con Paso 1 Hacer
			estructura = Concatenar(estructura, '*');
		Fin Para
		Imprimir estructura;
	Fin Para
	
FinAlgoritmo
