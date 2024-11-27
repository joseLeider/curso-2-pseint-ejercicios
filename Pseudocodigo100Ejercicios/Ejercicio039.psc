// Ejercicio 039: Averiguar si un n�mero es perfecto (N�mero positivo que es igual a la suma de sus divisores positivos)
// Nota: Obviamente no se cuenta a �l mismo como divisor
// Se dice que un n�mero es perfecto cuando es igual a la suma de sus divisores. Ej: 6 es perfecto 1 + 2 + 3 = 6

Algoritmo Ejercicio039
	
	Definir num, divisor, final, residuo, sumaDivisores Como Entero;
	
	num = 0;
	divisor = 0;
	final = 0;
	residuo = 0;
	sumaDivisores = 0;
	
	Imprimir 'Ingresa el numero a evaluar';
	Leer num;
	
	final = trunc(num /2); // Ningun divisor sera mayor que la mitad del n�mero, por eso se optimiza.
	
	Para divisor = 1 Hasta final Con Paso 1 Hacer
		residuo = num % divisor;
		Imprimir residuo, ' = ', num, ' % ', divisor;
		Si residuo == 0  Entonces
			sumaDivisores = divisor + sumaDivisores;
		Fin Si
	Fin Para
	
	Si num == sumaDivisores Entonces
		Imprimir 'El n�mero ', num, ', SI es un n�mero perfecto, ', 'total suma divisores: ', sumaDivisores;
	SiNo
		Imprimir 'El n�mero ', num, ', NO es un n�mero perfecto, ', 'total suma divisores: ', sumaDivisores;
	Fin Si
	
FinAlgoritmo