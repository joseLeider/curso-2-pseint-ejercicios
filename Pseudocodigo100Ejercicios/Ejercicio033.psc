// Ejercicio 033: Pide al usuario que introduzca 100 números enteros. Despues calcula y muestra su media. (Para probar el
// programa puedes hacerlo con menos números, pero el programa debe de ser válido para hacerlo con 100 números con un solo
// cambio en el programa)

Algoritmo Ejercicio033
	
	Definir cantidad ,num, sumaMedia, contador, media Como Real;
	
	cantidad = 100;
	num = 0;
	sumaMedia = 0;
	contador = 1;
	media = 0;
	
	Imprimir "Ingresa la cantidad de números a analizar";
	Leer cantidad;
	
	Repetir
		Imprimir "Ingresa el numero ", contador, ": ";
		Leer num;
		sumaMedia = sumaMedia + num;
		contador = contador + 1;
	Hasta Que contador > cantidad
	
	media = sumaMedia / cantidad;
	Imprimir "La media de ", cantidad, " números es de: ", media;
	
FinAlgoritmo