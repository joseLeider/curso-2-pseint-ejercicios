// Ejercicio 021: Pide al usuario dos números. Luego el usuario tendrá que elegir que operación Hacer
// 1. Suma, 2. Resta, 3. Multiplicación, 4. División
// Si intenta dividir entre 0 habrá que indicarlo con un mensaje

Algoritmo Ejercicio021
	
	Definir num1, num2, operacion, resultado Como Real;
	num1 = 0;
	num2 = 0;
	operacion = 0;
	resultado = 0;
	Escribir "Digita dos números";
	Leer num1, num2;
	Escribir "Escoge la operación que desea realizar con los dos números";
	Mostrar "1. Suma";
	Mostrar "2. Resta";
	Mostrar "3. Multiplicación";
	Mostrar "4. Division";
	Leer operacion;
	
	Segun operacion Hacer
		1:
			resultado = num1 + num2;
			Imprimir resultado;
		2:
			resultado = num1 - num2;
			Imprimir resultado;
		3:
			resultado = num1 * num2;
			Imprimir resultado;
		4:	
			Si num2 <> 0 Entonces
				resultado = num1 / num2;
				Imprimir resultado;
			SiNo
				Imprimir  "No se puede dividir entre 0";
			Fin Si
		De Otro Modo:
			Imprimir "ERROR: Seleccion erronea.";
	Fin Segun
	
FinAlgoritmo