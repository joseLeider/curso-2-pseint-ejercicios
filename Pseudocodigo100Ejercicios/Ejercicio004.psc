// Ejercicio 004: Convertir una distancia en millas náuticas a metros
// 1 milla náutica tiene 1852 metros

Algoritmo Ejercicio004
	
	Definir millasNauticas, metros Como Real;
	millasNauticas = 0;
	metros = 0;
	Escribir "Conversor de millas náuticas a metros";
	Escribir "Ingresa el valor de la distancia en millas náuticas";
	Leer millasNauticas;
	metros = millasNauticas * 1852;
	Imprimir millasNauticas, " millas náuticas, equivale a: ", metros, " m";
	
FinAlgoritmo