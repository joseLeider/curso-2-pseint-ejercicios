// Ejercicio 067: Crea un subproceso que reciba tres números por referencia y que los ordene de mayor a menor al pasarle los
// valores desde el algoritmo principal. Muestra los valores por pantalla.

Funcion ordenar (num1 Por Referencia, num2 Por Referencia, num3 Por Referencia)
	Definir memoria Como Entero;
	// Si el segundo número es mayor que el primero, se intercambian
	Si num2 > num1 Entonces
		memoria = num1; 
		num1 = num2;
		num2 = memoria;
	Fin Si
	// Si el tercer número es mayor que el segundo, se intercambian
	Si num3 > num2 Entonces
		memoria = num2;
		num2 = num3;
		num3 = memoria;
	Fin Si
	// Se vuelve a comparar el primero y el segundo en caso de que hayan cambiado
	Si num2 > num1 Entonces
		memoria = num1;
		num1 = num2;
		num2 = memoria;
	Fin Si
	
Fin Funcion

Algoritmo Ejercicio067
	
	Definir num1, num2, num3 Como Entero;
	
	Imprimir 'Ingresa 3 números';
	Leer num1, num2, num3;
	
	ordenar(num1, num2, num3);
	
	Imprimir num1;
	Imprimir num2;
	Imprimir num3;
	
FinAlgoritmo