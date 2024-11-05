// EJercicio 036: Averigua si un número es primo. (Tiene dos divisores: 1 y el mismo)
// Este programa considera el 1 como No Primo

Algoritmo Ejercicio036
	
	Definir num, candidatos, divisores Como Entero;
	num = 0;
	candidatos = 0; // Número para probar si es divisor
	divisores = 0; // Contador de divisores
	
	Imprimir "Ingresa un número";
	Leer num;
	candidatos = num;
	
	Mientras candidatos > 0 Hacer
		Si num % candidatos = 0 Entonces
			divisores = divisores + 1;
		Fin Si
		candidatos = candidatos - 1;
	Fin Mientras
	
	Si divisores = 2 Entonces
		Imprimir "El número ", num, " es un primo"; // Si tiene solo dos divisores es primo
	SiNo
		Imprimir "El número ", num, " no es un primo";
	Fin Si
	
FinAlgoritmo

//	Algoritmo Ejercicio036
//		
//		Definir num, candidatos, divisores Como Entero;
//		num = 0;
//		divisores = 0; // Contador de divisores
//		
//		Imprimir "Ingresa un número";
//		Leer num;
//		
//		// Usamos el ciclo Para para contar los divisores
//		Para candidatos = num Hasta 1 Con Paso -1 Hacer
//			Si num % candidatos = 0 Entonces
//				divisores = divisores + 1;
//			Fin Si
//		Fin Para
//		
//		// Verificamos si tiene exactamente dos divisores
//		Si divisores = 2 Entonces
//			Imprimir "El número ", num, " es un primo";
//		SiNo
//			Imprimir "El número ", num, " no es un primo";
//		Fin Si
//		
//	FinAlgoritmo