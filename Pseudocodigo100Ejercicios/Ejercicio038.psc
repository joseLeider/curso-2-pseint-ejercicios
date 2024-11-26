// Ejercicio 038: Indicar el número inverso a otro. Ej: 547 -> 745

Algoritmo Ejercicio038
	
	Definir num, i, digito, inverso, long Como Entero;
	Definir numText Como Cadena;
	num = 0; // Guarda el número actual
	digito = 0; // Guarda el último dígito
	inverso = 0; // Guarda el número inverso
	long = 0; // Cantidad de dígitos del número
	
	Imprimir "Ingresa el número a invertir:";
	Leer num;
	
	// Calcular la cantidad de dígitos del número
	long = Longitud(ConvertirATexto(num));

	// Iterar desde 1 hasta el número de dígitos
	Para i = 1 Hasta long Hacer
		// Extraer el último dígito del número
		digito = num % 10;
		// Construir el número inverso
		inverso = inverso * 10 + digito;
		// Reducir el número eliminando el último dígito
		num = Trunc(num / 10);
	Fin Para
	
	Imprimir "El número invertido es: ", inverso;
	
FinAlgoritmo