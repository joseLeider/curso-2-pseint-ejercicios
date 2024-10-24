// Ejercicio 016: Determinar si un número entero dado es a la vez múltiplo de 2 y 3 o no.

Algoritmo Ejercicio016
	
	Definir num Como Entero;
	num=0;
	Escribir "Digite un número entero: ";
	Leer num;
	
	Si num%2=0 & num%3=0 Entonces //Operador Logico Y (AND) & conjunción
		Imprimir "El número es múltiplo de 2 y 3";
	SiNo
		Imprimir "El número no es múltiplo de 2 y 3";
	Fin Si
	
FinAlgoritmo