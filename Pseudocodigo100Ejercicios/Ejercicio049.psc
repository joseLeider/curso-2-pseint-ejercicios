// Ejercicio 049: Guarda en un arreglo tantos números enteros como quiera el usuario. Después cuenta las veces que otro
// número indicado por el usuario aparece en el arreglo.

Algoritmo Ejercicio049 
	
	Definir i, j, numeros, elementos, contarNumero, conteo Como Entero;
	conteo = 0;
	
	Repetir
		Imprimir 'Ingresa cuantos números deseas ingresar';
		Leer elementos;
	Hasta Que elementos > 0
	
	Dimension numeros[elementos];
	
	Para i = 0 Hasta elementos -1 Con Paso 1 Hacer
		imprimir 'Digita el valor ',i+1, ': ';
		Leer numeros[i];
	Fin Para
	
	Imprimir 'Ingresa el valor a buscar para contar cuantas veces se encuentra en el arreglo';
	Leer contarNumero;
	
	Para i = 0 Hasta elementos -1 Con Paso 1 Hacer
		Si numeros[i] == contarNumero  Entonces
			conteo = conteo+1;
		Fin Si
	Fin Para
	
	Imprimir conteo;

FinAlgoritmo