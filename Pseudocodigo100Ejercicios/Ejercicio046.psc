// Ejercicio 046: Dibujar el siguiente patrón con asteriscos. El número de asteriscos de ancho y alto serán los mismos
// y lo indicará el usuario. La figura se deriva de las diagonales de un cuadrado

// *   *
//  * *
//   *
//  * *
// *   *

Algoritmo Ejercicio046
	
	Definir lado, i, j Como Entero;
	Definir estructura Como Cadena;
	
	estructura = '';
	lado = 0;
	i = 0; // Control del alto en el bucle
	j = 0; // Control del ancho en el bucle
	
	Escribir  "Cuantos asteriscos quieres de lado ?";
	Leer lado;
	
	// Bucle externo para recorrer cada fila
	Para i = 1 Hasta lado Con Paso 1 Hacer
		estructura = '';  // Reiniciar la cadena para cada fila
		
		// Bucle interno para recorrer cada columna
		Para j = 1 Hasta lado Con paso 1 Hacer
			// Verificar si estamos en una de las diagonales
			Si i = j | i + j = lado + 1 Entonces
				estructura = Concatenar(estructura, '*');  // Agregar asterisco
			SiNo
				estructura = Concatenar(estructura, ' ');  // Agregar espacio
			Fin Si
		Fin Para
		
		// Imprimir la fila generada
		Imprimir estructura;
	Fin Para
	
FinAlgoritmo