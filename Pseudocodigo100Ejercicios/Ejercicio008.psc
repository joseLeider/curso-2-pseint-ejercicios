// Ejercicio 008: Dise�a un programa que muestre el resto de una divisi�n"

Algoritmo Ejercicio008
	// Los operandos para el operador MOD deben ser enteros y no de tipo Real, esto genera un error
	Definir dividiendo, divisor, residuo Como Entero;
	divisor = 10;
	Escribir "Dime un n�mero entero: ";
	Leer dividiendo;
	residuo = dividiendo % divisor;
	Imprimir "El resto de dividir ", dividiendo, " % ", divisor, " es: ", residuo;
	
	
	// En general, cuando el dividendo es menor que el divisor, el residuo ser� el mismo que el dividendo.
	// Resto: Restas el resultado de multiplicar el cociente por el divisor del dividendo. En este caso, ser�a as�:
	// 1. Tienes el dividendo (5) y el divisor (10).
	// 2. El cociente es 0, as� que multiplicas 0 por 10, lo que da 0
	// 3. Luego restas este resultado del dividendo: 5 - 0 = 5
	// Por lo tanto, el resto de 5 % 10 es 5.
	// Resto: Restas el resultado de la multiplicaci�n (0) del dividendo (5): 5 - 0 = 5
	
FinAlgoritmo