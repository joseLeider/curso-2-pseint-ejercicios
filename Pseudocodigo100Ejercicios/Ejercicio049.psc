// Ejercicio 049: Guarda en un arreglo tantos n�meros enteros como quiera el usuario. Despu�s cuenta las veces que otro
// n�mero indicado por el usuario aparece en el arreglo.

Algoritmo Ejercicio049
	
	Definir i, elementos, numero, contarNumero, conteo Como Entero;
	conteo = 0;
	
	Repetir
		Imprimir '�Cu�ntos n�meros deseas ingresar?';
		Leer elementos;
	Hasta Que elementos > 0
	
	Dimension numero[elementos];
	
	Imprimir 'Ingresa el n�mero que deseas contar:';
	Leer contarNumero;
	
	Para i = 0 Hasta elementos - 1 Con Paso 1 Hacer
		Imprimir 'Digita el valor ', i + 1, ': ';
		Leer numero[i];
		
		Si numero[i] == contarNumero Entonces
			conteo = conteo + 1;
		Fin Si
	Fin Para
	
	Imprimir 'El n�mero ', contarNumero, ' aparece ', conteo, ' veces.';
	
FinAlgoritmo