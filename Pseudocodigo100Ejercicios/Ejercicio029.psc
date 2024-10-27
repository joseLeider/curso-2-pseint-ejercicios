// Ejercicio 029: Escribir todos los números pares del 0 al 100 en orden inverso, es decir en orden descendente

Algoritmo Ejercicio029
	
	Definir num Como Entero;
	
	Imprimir "Imprimir numeros pares entre 0 a 100";
	
	Para num = 100 Hasta 0 Con Paso -1 Hacer
		Si num % 2 = 0 Entonces
			Imprimir num;
		Fin Si
	Fin Para
	
FinAlgoritmo