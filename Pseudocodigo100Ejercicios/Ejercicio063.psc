// Ejercicio 063: Crea un subproceso que escriba si un número dado es primo o no. Aprovecha ese subproceso para indicar si
// los números naturales comprendidos entre el 1 y el que indique el usuario son primos o no.

// Las funciones siempre devuelven un valor, mientras que los subprocesos(procedimiento) no.
Funcion primo (num) // Procedimiento con paso por valor
	Definir i, divisores Como Entero;
	divisores = 0;
	
	Para i = 1 Hasta num Con Paso 1 Hacer
		Si num % i == 0 Entonces
			divisores = divisores+1;
		Fin Si
	Fin Para
	
	Si divisores == 2 Entonces
		Escribir 'El número ',num, ' es primo, tiene ', divisores, ' divisores';
	SiNo
		Escribir 'El número ',num, ' no es primo, tiene ', divisores, ' divisores';
	Fin Si
	
Fin Funcion

Algoritmo Ejercicio063
	
	Definir i, digito Como Entero;
	
	Imprimir 'Número primo: entero mayor que 1 con exactamente dos divisores positivos exactos (sin residuo): 1 y él mismo';
	Imprimir 'Número compuesto: entero mayor que 1 con tres o más divisores positivos exactos (sin residuo).';
	Imprimir '';
	
	Imprimir 'Ingresa un valor numerico alto para determinar que numeros son primos';
	Leer digito;
	
	Para i = 1 Hasta digito Con Paso 1 Hacer
		primo(i);
	Fin Para
	
FinAlgoritmo