// Ejercicio 028: Haz un juego en el que el usuario tenga que acertar un número al azar entre el 0 y el 9
// Despues el programa indicará cuantos intentos ha necesitado para acertar
// Nota: azar(n) retorna un número al azar entre 0 y n-1

Algoritmo Ejercicio028
	
	Definir numUsuario, numAzar, intentos Como Entero;
	
	numUsuario = 0;
	numAzar = azar(10); // Número al azar entre 0 y 9
	intentos = 0;

	Repetir
		Imprimir "Ingresa un numero";
		Leer numUsuario;
		intentos = intentos + 1;
	Mientras Que numUsuario <> numAzar;  
	
	Imprimir "Usted ha realizado ", intentos, " intentos";
	
FinAlgoritmo