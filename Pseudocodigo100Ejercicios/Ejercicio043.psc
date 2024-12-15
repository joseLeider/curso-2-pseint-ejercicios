// Ejercicio 043: Dibujar la siguiente estructura cuadrada, pidiendo al usuario que te diga cuantos asteriscos tendremos
// de alto y de ancho:

// *****
// *****
// *****

Algoritmo Ejercicio043
	
	Definir alto, ancho, anchoOriginal Como Entero;
	Definir estructura Como Cadena;
	
	estructura = '';
	
	alto = 0;
	ancho = 0;
	
	Imprimir 'Ingresa el alto de la estructura deseada';
	Leer alto;
	
	Imprimir 'Ingresa el ancho de la estructura deseada';
	Leer ancho;
	anchoOriginal = ancho;
	
	Mientras alto > 0 Hacer
		estructura = ''; // Reiniciar estructura para cada fila
		ancho = anchoOriginal;
		Mientras ancho > 0 Hacer
			estructura = Concatenar(estructura, '*');
			ancho = ancho -1;
		Fin Mientras
		Imprimir estructura;
		alto = alto -1;
	Fin Mientras
FinAlgoritmo