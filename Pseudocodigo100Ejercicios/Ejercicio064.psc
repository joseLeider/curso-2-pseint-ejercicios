// Ejercicio 064: Crea un subproceso que escriba la tabla de multiplicar del n�mero que se le indique. Posteriormente
// aprovecha ese subproceso para escribir las tablas del 1 al 10.

Funcion tablaDeMultiplicar (tabla)
	Definir i Como Entero;
	Imprimir 'Tabla del n�mero ', tabla;
	Para i = 1 Hasta 10 Con Paso 1 Hacer
		Imprimir tabla, ' * ', i, ' = ', tabla*i;
	Fin Para
	Imprimir '';
Fin Funcion

Algoritmo Ejercicio064
	
	Definir digito, i Como Entero;
	
	Imprimir 'Indica el n�mero de la tabla que deseas imprimir';
	Leer digito;
	
	tablaDeMultiplicar(digito);
	Imprimir '';
	
	Imprimir '<<< Tablas del n�mero 1 al 10 >>>';
	Imprimir '';
	
	Para i = 1 Hasta 10 Con Paso 1 Hacer
		tablaDeMultiplicar(i);
	Fin Para
	
FinAlgoritmo