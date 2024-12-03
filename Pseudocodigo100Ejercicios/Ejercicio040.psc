// Ejercicio 040: Calcular el MCD de dos números dados
// Se denomina máximo común divisor o MCD al mayor número común que divide exactamente a más de 2 números sin dejar resto.
// Para hallar el MCD se multiplica los factores comunes

Algoritmo Ejercicio040
	
	Definir num1, num2, menor, mcd, i Como Entero;
	
	num1 = 0;
	num2 = 0;
	menor = 0; // Para guardar el menor número de los dos
	mcd = 0;
	i = 0;
	
	Mostrar 'Ingresa dos numeros';
	Leer num1, num2;
	
	// En primer lugar determinamos cual es el menor
	Si num1 < num2 Entonces
		menor = num1;
	SiNo
		menor = num2;
	Fin Si
	
	// Ahora se busca el mcd
	Para i = 1 Hasta menor Con Paso 1 Hacer
		Si num1 % i = 0 & num2 % i = 0 Entonces
			mcd = i;
		Fin Si
	Fin Para
	
	Escribir 'El MCD de ', num1 ' y ', num2, ' es: ', mcd;
	
FinAlgoritmo