// Ejercicio 034: Calcular el factorial de un n�mero dado. Ejemplo: 5! = 5x4x3x2x1

Algoritmo Ejercicio034
	
	Definir numFactorial ,factorial, resultadoFactorial Como Entero;
	numFactorial = 0;
	resultadoFactorial = 1;
	
	Imprimir "Ingresa el n�mero a calcular";
	Leer numFactorial;
	
	factorial = numFactorial;
	
	Repetir
		resultadoFactorial = resultadoFactorial * numFactorial;
		numFactorial = numFactorial - 1;
	Hasta Que numFactorial = 0
	
	Imprimir 'El factorial de ', factorial, '! es = ', resultadoFactorial;
	
FinAlgoritmo