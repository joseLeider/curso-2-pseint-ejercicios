// Ejercicio 021: Pide al usuario dos n�meros. Luego el usuario tendr� que elegir que operaci�n Hacer
// 1. Suma, 2. Resta, 3. Multiplicaci�n, 4. Divisi�n
// Si intenta dividir entre 0 habr� que indicarlo con un mensaje

Algoritmo Ejercicio021
	
	Definir num1, num2, operacion, resultado Como Real;
	num1 = 0;
	num2 = 0;
	operacion = 0;
	resultado = 0;
	Escribir "Digita dos n�meros";
	Leer num1, num2;
	Escribir "Escoge la operaci�n que desea realizar con los dos n�meros";
	Mostrar "1. Suma";
	Mostrar "2. Resta";
	Mostrar "3. Multiplicaci�n";
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