// Ejercicio 074: Crea un subproceso recursivo que calcule el factorial de un número. Después usa esa función para 
// calcular por pantalla el factorial de todos los números enteros comprendidos entre 1 y el número que indique el usuario.

// Declaración de la función recursiva Factorial que recibe un número 'a' como parámetro
Funcion resultado <- Factorial (a)
	Definir resultado Como Entero;
	resultado = 1;
	// El factorial de un número se define como n! = n * (n - 1)!
	// El factorial de 0 (0!) es 1 por definición
	
	// Si 'a' es diferente de 0, se realiza la llamada recursiva
	Si a <> 0 Entonces
		// Se asigna a 'resultado' el valor de a multiplicado por el factorial de (a - 1)
		resultado = a * Factorial(a - 1);
	Fin Si
Fin Funcion

// Inicio del algoritmo principal
Algoritmo Ejercicio074

	Definir n, i Como Entero;
	Mostrar 'Hasta que número quieres calcular el factorial ?';
	Leer n;
	
	Para i = n Hasta 1 Con Paso -1 Hacer
		// Para cada número 'i', se muestra su factorial usando la función Factorial
		Imprimir 'El factorial de ', i, ' es: ', Factorial(i);
	Fin Para
	
FinAlgoritmo