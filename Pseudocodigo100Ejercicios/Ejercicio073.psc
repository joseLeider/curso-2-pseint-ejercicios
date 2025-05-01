// Ejercicio 073: Sustituye todos los valores que se alejen más de dos unidades de la media en una lista de 50 números por 
// ese valor de la media.

Funcion sustitucion (arreglo, elementos, media)
	Definir i Como Entero;
	Para i = 0 Hasta elementos-1 Con Paso 1 Hacer
		Si arreglo[i] < media-2 | arreglo[i] > media+2 Entonces
			arreglo[i] = media;
		Fin Si
		Imprimir arreglo[i],' ', Sin Saltar;
	Fin Para
Fin Funcion

Algoritmo Ejercicio073
	
	Definir arreglo, i, elementos, suma, media Como Real;
	suma = 0;
	media = 0;
	elementos = 50;
	Dimension arreglo[elementos];
	Imprimir 'Arreglo original';
	Para i = 0 Hasta elementos-1 Con Paso 1 Hacer
		arreglo[i] = azar(10);
		Imprimir arreglo[i],' ', Sin Saltar;
		suma = suma+arreglo[i];
	Fin Para
	
	Imprimir '';
	Imprimir '';
	media = redon(suma/elementos);
	Imprimir 'La media del arreglo es de: ', media;
	Imprimir '';
	Imprimir 'Arreglo modificado';
	sustitucion(arreglo, elementos, media);
	
FinAlgoritmo