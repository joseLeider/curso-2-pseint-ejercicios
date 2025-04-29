// Ejercicio 063: Crea un subproceso que escriba si un n�mero dado es primo o no. Aprovecha ese subproceso para indicar si
// los n�meros naturales comprendidos entre el 1 y el que indique el usuario son primos o no.

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
		Escribir 'El n�mero ',num, ' es primo, tiene ', divisores, ' divisores';
	SiNo
		Escribir 'El n�mero ',num, ' no es primo, tiene ', divisores, ' divisores';
	Fin Si
	
Fin Funcion

Algoritmo Ejercicio063
	
	Definir i, digito Como Entero;
	
	Imprimir 'N�mero primo: entero mayor que 1 con exactamente dos divisores positivos exactos (sin residuo): 1 y �l mismo';
	Imprimir 'N�mero compuesto: entero mayor que 1 con tres o m�s divisores positivos exactos (sin residuo).';
	Imprimir '';
	
	Imprimir 'Ingresa un valor numerico alto para determinar que numeros son primos';
	Leer digito;
	
	Para i = 1 Hasta digito Con Paso 1 Hacer
		primo(i);
	Fin Para
	
FinAlgoritmo