// Ejercicio 031: Contar cuántos números de los comprendidos entre el 500 y el 1000 (incluidos) cumplen
// que son a la vez múltiplos de 2 y 3

//Algoritmo Ejercicio031 // Bucle Para
//	
//	Definir num, contar Como Entero;
//	contar = 0;
//	
//	Para num = 500 Hasta 1000 Con Paso 1 Hacer
//		Si num % 2 = 0 & num % 3 = 0 Entonces
//			Imprimir num;
//			contar = contar + 1;
//		FinSi
//	Fin Para
//	
//	Imprimir contar, " numeros son multiplos de 2 y 3";
//	
//FinAlgoritmo

//Algoritmo Ejercicio031 // Bucle Mientras
//	
//	Definir num, contar Como Entero;
//	contar = 0;
//	num = 500;
//	
//	Mientras num <= 1000 Hacer
//		Si num % 2 = 0 & num % 3 = 0 Entonces
//			Imprimir num;
//			contar = contar + 1;
//		Fin Si
//		num = num + 1;
//	Fin Mientras
//	
//	Imprimir contar, " numeros son multiplos de 2 y 3";
//	
//FinAlgoritmo

Algoritmo Ejercicio031 // Bucle Repetir
	
	Definir num, contar Como Entero;
	contar = 0;
	num = 500;
	
	Repetir
		Si num % 2 = 0 & num % 3 = 0  Entonces
			Imprimir num;
			contar = contar + 1;
		Fin Si
		num = num + 1;
	Hasta Que num > 1000
	
	Imprimir contar, " numeros son multiplos de 2 y 3";
	
FinAlgoritmo