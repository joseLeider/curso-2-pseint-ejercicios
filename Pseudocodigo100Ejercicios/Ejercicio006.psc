// Ejercicio 006: Diseña un programa que pida al usuario dos números enteros. Posteriormente muestra por pantalla 
// el resultado de sumarlos, restarlos, multiplicarlos, dividirlos, hacer la potencia del primero elevado al segundo y 
// el resto que resulte de dividir el primero entre el segundo.

Algoritmo Ejercicio006
	
	Definir num1, num2, suma, resta, multiplicacion, division, potencia, resto Como Real;
	
	num1 = 0;
	num2 = 0;
	suma = 0;
	resta = 0;
	multiplicacion = 0;
	division = 0;
	potencia = 0;
	resto = 0;
	
	Escribir "Digite dos valores: ";
	Leer num1, num2;
	
	suma = num1 + num2;
	resta = num1 - num2;
	multiplicacion = num1 * num2;
	division = num1 / num2;
	potencia = num1^num2;
	resto = num1 % num2;
	
	Imprimir "La suma es: ", suma;
	Imprimir "La resta es: ", resta;
	Imprimir "La multiplicacion es: ", multiplicacion;
	Imprimir "La division es: ", division;
	Imprimir "La potencia es: ", potencia;
	Imprimir "El resto es: ", resto;
	
FinAlgoritmo