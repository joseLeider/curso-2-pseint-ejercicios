// Ejercicio 039: Averiguar si un número es perfecto (Número positivo que es igual a la suma de sus divisores positivos)
// Nota: Obviamente no se cuenta a él mismo como divisor
// Se dice que un número es perfecto cuando es igual a la suma de sus divisores. Ej: 6 es perfecto 1 + 2 + 3 = 6

Algoritmo Ejercicio039
	
	Definir num, divisor, final, residuo, sumaDivisores Como Entero;
	
	num = 0;
	divisor = 0;
	final = 0;
	residuo = 0;
	sumaDivisores = 0;
	
	Imprimir 'Ingresa el numero a evaluar';
	Leer num;
	
	final = trunc(num /2); // Ningun divisor sera mayor que la mitad del número, por eso se optimiza.
	
	Para divisor = 1 Hasta final Con Paso 1 Hacer
		residuo = num % divisor;
		Imprimir residuo, ' = ', num, ' % ', divisor;
		Si residuo == 0  Entonces
			sumaDivisores = divisor + sumaDivisores;
		Fin Si
	Fin Para
	
	Si num == sumaDivisores Entonces
		Imprimir 'El número ', num, ', SI es un número perfecto, ', 'total suma divisores: ', sumaDivisores;
	SiNo
		Imprimir 'El número ', num, ', NO es un número perfecto, ', 'total suma divisores: ', sumaDivisores;
	Fin Si
	
FinAlgoritmo