// Ejercicio 043: Dibujar la siguiente estructura cuadrada, pidiendo al usuario que te diga cuantos asteriscos tendremos
// de alto y de ancho:

// *****
// *****
// *****

Algoritmo Ejercicio043
	
	Definir x, y, alto, ancho, anchoOriginal Como Entero;
	Definir estructura, estructuraX Como Cadena;
	
	estructura = '';
	estructuraX = '';
	
	y = 1;
	x = 1;
	alto = 0;
	ancho = 0;
	
	Imprimir 'Ingresa el alto de la estructura deseada';
	Leer alto;
	
	Imprimir 'Ingresa el ancho de la estructura deseada';
	Leer ancho;
	anchoOriginal = ancho;
	
	Mientras y <= alto Hacer
		ancho = anchoOriginal;
		Mientras x <= ancho Hacer
			estructuraX = '*';
			estructura = Concatenar(estructura, estructuraX);
			x = x +1;
		Fin Mientras
		Imprimir estructura;
		y = y +1;
	Fin Mientras
FinAlgoritmo