// Ejercicio 076: Crea un subproceso que calcule la potencia de dos números de forma recursiva, sabiendo que n^m=n x n^m-1
// Pruebalo en un algoritmo general.

Funcion resultado <- Potencia (base, exponente)
	Definir resultado Como Entero;
	Si exponente = 0 Entonces
		resultado = 1;
	SiNo                                         
		resultado = base * potencia(base, exponente-1); // Llama recursivamente con exponente-1
		// Ejemplo: 2^3 = 2 * 2^2 ? 2^2 = 2 * 2^1 ? 2^1 = 2 * 2^0 ? 2^0 = 1
		// Se resuelve desde el fondo hacia arriba: 2 * (2 * (2 * 1)) = 8
	Fin Si
Fin Funcion

Algoritmo Ejercicio076
	Definir base, exponente Como Entero;
	Imprimir "Escribe el número base";
	Leer base;                                   
	Imprimir "Escribe el exponente para el número base";
	Leer exponente;                              
	
	Imprimir "El resultado de la potencia es: ", Potencia(base, exponente);
	
FinAlgoritmo