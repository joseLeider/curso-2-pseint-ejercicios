// Ejercicio 048: Guarda en un arreglo cinco notas de un alumno que has de pedir al usuario. Posteriormente calcula la media
// e indica cuál es la mayor y la menor de ellas.

Algoritmo Ejercicio048 
	
	Definir notas, media, mayor, menor, suma Como Real;
	Definir i, elementos Como Entero;
	
	suma = 0;
	
	// Solicita al usuario la cantidad de notas (elementos del arreglo) hasta que ingrese un número válido
	Repetir
		Imprimir 'Ingrese el numero de elementos que desea tener en el arreglo';
		Leer elementos;
	Hasta Que elementos > 0
	
	// Define el arreglo de notas con la cantidad indicada por el usuario
	Dimension notas[elementos];
	
	// Recorre el arreglo para ingresar las notas y calcular suma, media, mayor y menor
	Para i=0 Hasta elementos -1 Con Paso 1 Hacer
		// Solicita al usuario el valor de la nota en la posición actual
		Imprimir 'Ingrese el valor ', i+1, ' del arreglo: ';
		Leer notas[i];
		suma = suma + notas[i];
		
		// Si es la primera nota, se establece como mayor y menor
		Si i = 0 Entonces
			mayor = notas[i];
			menor = notas[i];
		Fin Si
		// Si la nota actual es mayor que la mayor registrada, se actualiza
		Si notas[i] > mayor Entonces
			mayor = notas[i];
		Fin Si
		// Si la nota actual es menor que la menor registrada, se actualiza
		Si notas[i] < menor Entonces
			menor = notas[i];
		Fin Si
	Fin Para
	
	media = suma/elementos;
	
	Imprimir 'La media de notas es de: ', media;
	Imprimir 'El numero Mayor de las notas es: ', mayor;
	Imprimir 'El numero Menor de las notas es: ', menor;
	
FinAlgoritmo