// Ejercicio 041: Escribir por pantalla las tablas de multiplicar del 1 al 10

Algoritmo Ejercicio041
	
	Definir i, num, resultado Como Entero;
	
	resultado = 0;
	
	Para num = 1 Hasta 10 Con Paso 1 Hacer
		Imprimir 'Tabla del ', num;
		Para i = 1 Hasta 10 Con Paso 1 Hacer
			resultado = num * i;
			Imprimir num, ' x ', i, ' = ', resultado;
		Fin Para
		Imprimir ' ';
	Fin Para
	
FinAlgoritmo