// Ejercicio 004: Convertir una distancia en millas n�uticas a metros
// 1 milla n�utica tiene 1852 metros

Algoritmo Ejercicio004
	
	Definir millasNauticas, metros Como Real;
	millasNauticas = 0;
	metros = 0;
	Escribir "Conversor de millas n�uticas a metros";
	Escribir "Ingresa el valor de la distancia en millas n�uticas";
	Leer millasNauticas;
	metros = millasNauticas * 1852;
	Imprimir millasNauticas, " millas n�uticas, equivale a: ", metros, " m";
	
FinAlgoritmo