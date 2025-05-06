// Ejercicio 075: Crea un subproceso recursivo que calcule el número de la serie de Fibonacci que se indique, sabiendo que
// esta es: 0,1,1,2,3,5,8,13,21... es decir la suma de los dos términos anteriores de la serie, exceptuando a los dos
// primeros. Despúes crea un algoritmo general donde se muestre la serie de Fibonacci hasta el término que indique el usuario.

Funcion resultado <- Fibonacci (n)
	// fn = fn-1 + fn-2
	Definir resultado Como Entero;
	Si n = 0 Entonces
		resultado = 0;
	Fin Si
	Si n = 1 Entonces
		resultado = 1;
	Fin Si
	Si n > 1 Entonces
		// Se calcula recursivamente la suma de los dos términos anteriores
		resultado = Fibonacci(n-1)+Fibonacci(n-2);
	Fin Si
Fin Funcion

Algoritmo Ejercicio075
	
	Definir num, i Como Entero;
	
	Escribir "Hasta que termino quieres que muestre la serie ?";
	Leer num;
	
	Para i = 0 Hasta num Con Paso 1 Hacer
		Mostrar Fibonacci(i), ' ' Sin Saltar;
	Fin Para
	
FinAlgoritmo