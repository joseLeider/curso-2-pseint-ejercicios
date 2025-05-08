// Ejercicio 082: Crea un programa, que dada una frase haga un dibujo como el siguiente
// **************************************
// **CURSO DE PSEINT CON 100 EJERCICIOS**
// **************************************

Algoritmo Ejercicio082
	
	Definir ancho, alto, i, j, long Como Entero;
	Definir frase Como Cadena;
	
	ancho = 0;
	alto = 3;
	long = 0;
	
	Escribir "Dime la frase";
	Leer frase;
	long = Longitud(frase);
	ancho = long+4;
	
	Para i = 1 Hasta alto Con Paso 1 Hacer
		Si i = 1 | i = 3 Entonces
			Para j = 1 Hasta ancho Con Paso 1 Hacer
				Escribir "*" Sin Saltar;
			Fin Para
		SiNo
			Escribir "**", frase, "**" Sin Saltar;
		Fin Si
		Escribir " ";
	Fin Para
	
FinAlgoritmo