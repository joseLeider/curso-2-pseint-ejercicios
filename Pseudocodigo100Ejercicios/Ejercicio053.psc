// Ejercicio 053: Crea una matriz con n�meros aleatorios y despu�s cuenta el n�mero de veces que aparece el n�mero que
// te indique el usuario

Algoritmo Ejercicio053
	
	Definir matriz, filas, columnas, buscar, contar Como Entero;
	Dimension matriz[4,4];
	contar = 0;
	
	Imprimir "Ingresa el valor a buscar para ser contado luego de generarse la matriz";
	Leer buscar;
	
	Para filas = 0 Hasta 3 Con Paso 1 Hacer
		Para columnas = 0 Hasta 3 Con Paso 1 Hacer
			matriz[filas,columnas] = azar(9);
			Imprimir matriz[filas,columnas], " ", sin saltar;
			Si matriz[filas,columnas] = buscar Entonces
				contar = contar +1;
			Fin Si
		Fin Para
		Escribir " ";
	Fin Para
	
	Imprimir 'El valor ', buscar, ' se encuentra ', contar, ' veces en la matriz';
	
FinAlgoritmo