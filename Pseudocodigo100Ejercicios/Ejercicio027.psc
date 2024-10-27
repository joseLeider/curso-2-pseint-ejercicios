// Ejercicio 027: Suma todos los números que indique el usuario hasta que introduzca un cero

Algoritmo Ejercicio027
	
	Definir num, suma Como Entero;
	num = 0;
	suma = 0;
	
	Repetir
		suma = suma + num;
		Imprimir "Ingresa un numero entero";
		Leer num;
	Mientras Que num <> 0;
	
	Imprimir "La suma entre los numeros introducidos es de: ", suma;
	
FinAlgoritmo