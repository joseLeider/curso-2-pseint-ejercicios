// Ejercicio 032: Pide al usuario que introduzca 100 n�meros enteros. Despues indica cu�ntos de esos n�meros son pares,
// cuantos impares, cu�ntos negativos y cu�ntos positivos. (Para probar el programa puedes hacerlo con menos n�meros, pero
// el programa debe de ser v�lido para hacerlo con 100 n�meros con un solo cambio en el programa)

Algoritmo Ejercicio032
	
	Definir num, i, limite, contarPares, contarImpares, contarPositivos, contarNegativos Como Entero;
	num = 0;
	limite = 100;
	contarPares = 0;
	contarImpares = 0;
	contarPositivos = 0;
	contarNegativos = 0;
	
	Imprimir "Ingresa cuantos n�meros deseas registrar";
	leer limite;
	
	Imprimir "Ingrese los n�meros a registrar";
	
	Para i = 1 Hasta limite Con Paso 1 Hacer
		Leer num;
		
		Si num % 2 = 0 Entonces
			contarPares = contarPares + 1;
		SiNo
			contarImpares = contarImpares + 1;
		Fin Si
		
		Si num >= 0 Entonces
			contarPositivos = contarPositivos + 1;
		SiNo
			contarNegativos = contarNegativos + 1;
		Fin Si
		
	Fin Para
	
	Imprimir "N�meros pares: ", contarPares;
	Imprimir "Numeros impares: ", contarImpares;
	Imprimir "N�meros positivos: ", contarPositivos;
	Imprimir "N�meros negativos: ", contarNegativos;
	
FinAlgoritmo