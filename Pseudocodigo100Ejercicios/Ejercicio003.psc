// Ejercicio 003: Convertir una temperatura dada en grados Celsius en grados Kelvin.
// Formula: K = C + 273.15

// La escala Kelvin comienza en 0 K, que es el cero absoluto. Por lo tanto, 0 K equivale a -273.15 °C.
// El número 273.15 es la cantidad que se suma a los grados Celsius para convertirlos a Kelvin.

Algoritmo Ejercicio003
	
	Definir celsius, resultado Como Real; // Dato en Celsius
	celsius = 0;
	Imprimir "Conversor de grados Celsius a Kelvin";
	Imprimir "Escriba el valor de la temperatura en grados celsius";
	Leer celsius;
	resultado = celsius + 273.15;
	Imprimir celsius, " C es igual a: ", resultado, " K";
	
FinAlgoritmo