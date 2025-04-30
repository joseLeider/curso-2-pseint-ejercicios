// Ejercicio 068: Haz un subproceso que devuelva el número mayor de una lista de números que se le proporcione en un
// arreglo. Crea el algoritmo principal necesario para probar su funcionamiento.


Funcion mayor <- numeroMayor (arreglo, cantidad)
	Definir mayor, i Como Entero;
	mayor = arreglo[0]; 
	Para i = 1 Hasta cantidad-1 Con Paso 1 Hacer
		Si arreglo[i] > mayor Entonces
			mayor = arreglo[i];
		Fin Si
	Fin Para
Fin Funcion

Algoritmo Ejercicio068
	
	Definir arreglo, i Como Entero;
	Dimension arreglo[5];

	Para i = 0 Hasta 4 Con Paso 1 Hacer
		arreglo[i] = azar(10);
	Fin Para
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Imprimir arreglo[i];
	Fin Para
	
	Imprimir '';
	// Se llama la funcion y se le pasa como parametro el arreglo de números y la cantidad de elementos de esta.
	Imprimir 'El número mayor del arreglo es: ', numeroMayor(arreglo, 5);
	
FinAlgoritmo