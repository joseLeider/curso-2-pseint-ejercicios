// Ejercicio 055: Crea una matriz 3x3 con valores aleatorios y después indique el número menor de cada columna

Algoritmo Ejercicio055
	
	Definir matriz, menor, i, filas, columnas Como Entero;
	
	Dimension matriz[3,3];
	Dimension menor[3];
	
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		menor[i] = 0;
	Fin Para
	
	Imprimir 'Matriz 3x3';
	Para filas = 0 Hasta 2 Con Paso 1 Hacer
		Para columnas = 0 Hasta 2 Con Paso 1 Hacer
			matriz[filas, columnas] = azar(10);
			Imprimir matriz[filas, columnas], " ", Sin Saltar;
			Si filas = 0 Entonces
				// Inicializamos el menor valor de cada columna con el primer valor encontrado en la fila 0
				menor[columnas] = matriz[filas, columnas];
			SiNo
				// A partir de la fila 1, comparamos el valor actual de la columna con el menor valor registrado previamente en el arreglo para esa columna
				Si matriz[filas, columnas] < menor[columnas] Entonces
					// Si el valor actual de esa columna es menor, actualizamos el menor de esa columna en el arreglo
					menor[columnas] = matriz[filas, columnas];
				Fin Si
			Fin Si
		Fin Para
		Imprimir " ";
	Fin Para

	Imprimir " ";
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Mostrar "El menor de la columna #",i, " es: ", menor[i];
	Fin Para
	
FinAlgoritmo