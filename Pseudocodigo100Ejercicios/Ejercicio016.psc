// Ejercicio 016: Determinar si un n�mero entero dado es a la vez m�ltiplo de 2 y 3 o no.

Algoritmo Ejercicio016
	
	Definir num Como Entero;
	num=0;
	Escribir "Digite un n�mero entero: ";
	Leer num;
	
	Si num%2=0 & num%3=0 Entonces //Operador Logico Y (AND) & conjunci�n
		Imprimir "El n�mero es m�ltiplo de 2 y 3";
	SiNo
		Imprimir "El n�mero no es m�ltiplo de 2 y 3";
	Fin Si
	
FinAlgoritmo