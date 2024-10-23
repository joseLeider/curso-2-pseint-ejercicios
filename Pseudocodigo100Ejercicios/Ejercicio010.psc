// Ejercicio 010: Calcular el área de un circulo y la longitud de la circuferencia dado el radio

Algoritmo Ejercicio010
	
	Definir radio, area, perimetro Como Real;
	radio = 0;
	Mostrar "Ingresa un valor para el radio";
	Leer radio;
	perimetro = 2 * PI * radio; // Formula para hallar la longitud: L = 2*PI*r
	area = PI * radio ^2; // Formula para hallar el área: A = PI*r^2
	Imprimir "Perimetro: ", perimetro; // Longitud de la circuferencia
	Imprimir "Área: ", area; // Area del círculo
	
FinAlgoritmo