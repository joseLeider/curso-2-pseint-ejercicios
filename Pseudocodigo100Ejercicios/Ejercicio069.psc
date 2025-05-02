// Ejercicio 069: Crea un subproceso que calcule el mcm (mínimo común multiplo) de varios números proporcionados en un
// arreglo. Prueba su funcionamiento en el algoritmo principal.

Funcion resultado <- mcm (arrayNumeros, totalNumeros, arrayPrimos, totalPrimos)
	Definir i, j, resultado Como Entero;
	resultado = 0;
	Para i = 0 Hasta totalNumeros-1 Con Paso 1 Hacer
		Para j = 0 Hasta totalPrimos-1 Con Paso 1 Hacer
			resultado = arrayNumeros[i] / arrayPrimos[j];
			Si arrayNumeros[i] % arrayPrimos[j] == 0 Entonces
				acciones_por_verdadero
			Fin Si
		Fin Para
	Fin Para
Fin Funcion

Algoritmo Ejercicio069
	
	Definir arrayNumeros, totalNumeros, i, j, arrayPrimos, totalPrimos, resultado, divisores,  p Como Entero;
	Definir t, x como cadena;
	t = '';
	//NumPrimos
	totalNumeros = 3;
	totalPrimos = 0;
	Dimension arrayNumeros[totalNumeros];
	Dimension arrayPrimos[25];
	
	// CICLO PARA ALMACENAR LOS NUMEROS ALEATORIOS EN UN ARREGLO
	Imprimir 'numeros';
	Para i = 0 Hasta totalNumeros-1 Con Paso 1 Hacer
		arrayNumeros[i] = Aleatorio(2,10);
		Imprimir arrayNumeros[i];
	Fin Para
	
	
	// CICLO PARA PARA ALMACENAR LOS NUMEROS PRIMOS EN UN ARREGLO
	p = 0;
	Para i = 1 Hasta 100 Con Paso 1 Hacer
		divisores = 0;
		Para j = 1 Hasta i Con Paso 1 Hacer
			Si i % j == 0 Entonces
				divisores = divisores+1;
			Fin Si
		Fin Para
		Si divisores == 2 Entonces
			arrayPrimos[p] = i;
			totalPrimos = totalPrimos+1;
			p = p+1;
		Fin Si
	Fin Para
	
	Escribir 'Array de primos';
	Para i = 0 Hasta totalPrimos-1 Con Paso 1 Hacer
		Imprimir arrayPrimos[i];
	Fin Para
	
	Imprimir '';
	// FUNCION QUE DETERMINA EL MCM DE UN ARREGLO DE NUMEROS
	Imprimir 'mcm';
	resultado = mcm(arrayNumeros, totalNumeros, arrayPrimos, totalPrimos);
	Imprimir 'resultado', resultado;
	Imprimir arrayPrimos[24];
	
	Imprimir  8%2;
	
FinAlgoritmo