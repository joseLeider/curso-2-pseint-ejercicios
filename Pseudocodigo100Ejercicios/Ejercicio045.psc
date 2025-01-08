// Ejercicio 045: Dibujar un cuadrado con asteriscos, en el que aparezca solamente el borde. El n�mero de asteriscos de
// ancho y alto ser�n los mismos y lo indicar� el usuario

// ****
// *  *
// *  *
// ****

Algoritmo Ejercicio045
	
	Definir numAsteriscos, ancho, alto, i, j Como Entero;
	Definir estructura Como Cadena;
	
	numAsteriscos = 0;
	estructura = '';
	
	Imprimir "Ingresa el n�mero de asteriscos para la estructura cuadrada";
	Leer numAsteriscos;
	
	ancho = numAsteriscos;
	alto = numAsteriscos;
	
	Para i = 1 Hasta alto Con Paso 1 Hacer
		estructura = '';
		Para j = 1 Hasta ancho Con Paso 1 Hacer
			Si i = 1 | j = 1 | i = alto | j = ancho Entonces
				estructura = Concatenar(estructura, '*');
			SiNo
				estructura = Concatenar(estructura, ' ');
			Fin Si
		Fin Para
		Imprimir estructura;
	Fin Para
	
FinAlgoritmo