// Ejercicio 081: Descomponer un n�mero en factores primos

// Funci�n que verifica si un n�mero es primo
Funcion resultado <- Primo (num)
	Definir divisores, i Como Entero;
	divisores = 0;
	Definir resultado Como Logico;
	resultado = Falso;
	
	// Contar cu�ntos divisores tiene el n�mero
	Para i = num Hasta 1 Con Paso -1 Hacer
		Si num % i = 0 Entonces
			divisores = divisores + 1;
		Fin Si
		// Si ya tiene 2 divisores (1 y �l mismo), es primo
		Si divisores = 2 Entonces
			resultado = Verdadero;
		Fin Si
	Fin Para
Fin Funcion

// Funci�n que encuentra el siguiente n�mero primo despu�s de uno dado
Funcion resultado <- PrimoSiguiente (num)
	Definir resultado Como Entero;
	Definir encontrado Como Logico;
	encontrado = Falso;
	resultado = 0;
	
	// Aumentar num hasta encontrar uno que sea primo
	Mientras encontrado = Falso Hacer
		num = num + 1;
		encontrado = Primo(num);  // Reutiliza la funci�n Primo
	Fin Mientras
	resultado = num;  // Devuelve el n�mero primo encontrado
Fin Funcion

Algoritmo Ejercicio081
	Definir num, candidato Como Entero;
	
	Escribir "Ingresa un n�mero";
	Leer num;
	
	candidato = 1;  // Se inicia desde 1 (el siguiente primo ser� 2)
	
	// Mientras queden divisiones posibles, seguir buscando factores primos
	Mientras num > 1 Hacer
		candidato = PrimoSiguiente(candidato);  // Buscar siguiente n�mero primo
		Si num % candidato = 0 Entonces
			Escribir candidato;  // Mostrar el factor primo encontrado
			num = num / candidato;  // Reducir el n�mero dividi�ndolo por ese factor
			candidato = 1;  // Reiniciar para volver a buscar desde el 2
		Fin Si
	Fin Mientras
FinAlgoritmo