// Ejercicio 038: Indicar el n�mero inverso a otro. Ej: 547 -> 745

Algoritmo Ejercicio038
	
	Definir num, i, digito, inverso, long Como Entero;
	Definir numText Como Cadena;
	num = 0; // Guarda el n�mero actual
	digito = 0; // Guarda el �ltimo d�gito
	inverso = 0; // Guarda el n�mero inverso
	long = 0; // Cantidad de d�gitos del n�mero
	
	Imprimir "Ingresa el n�mero a invertir:";
	Leer num;
	
	// Calcular la cantidad de d�gitos del n�mero
	long = Longitud(ConvertirATexto(num));

	// Iterar desde 1 hasta el n�mero de d�gitos
	Para i = 1 Hasta long Hacer
		// Extraer el �ltimo d�gito del n�mero
		digito = num % 10;
		// Construir el n�mero inverso
		inverso = inverso * 10 + digito;
		// Reducir el n�mero eliminando el �ltimo d�gito
		num = Trunc(num / 10);
	Fin Para
	
	Imprimir "El n�mero invertido es: ", inverso;
	
FinAlgoritmo