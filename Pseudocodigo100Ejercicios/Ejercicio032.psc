// Ejercicio 032: Pide al usuario que introduzca 100 números enteros. Despues indica cuántos de esos números son pares,
// cuantos impares, cuántos negativos y cuántos positivos. (Para probar el programa puedes hacerlo con menos números, pero
// el programa debe de ser válido para hacerlo con 100 números con un solo cambio en el programa)

Algoritmo Ejercicio032
	
	Definir num, i, limite, contarPares, contarImpares, contarPositivos, contarNegativos Como Entero;
	num = 0;
	limite = 100;
	contarPares = 0;
	contarImpares = 0;
	contarPositivos = 0;
	contarNegativos = 0;
	
	Imprimir "Ingresa cuantos números deseas registrar";
	leer limite;
	
	Imprimir "Ingrese los números a registrar";
	
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
	
	Imprimir "Números pares: ", contarPares;
	Imprimir "Numeros impares: ", contarImpares;
	Imprimir "Números positivos: ", contarPositivos;
	Imprimir "Números negativos: ", contarNegativos;
	
FinAlgoritmo