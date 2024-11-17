// Ejercicio 037: Averiguar cuál es el dígito mas pequeño de un número dado

Algoritmo Ejercicio037
	
    // Declaramos las variables
    Definir num, digito, menor Como Entero;
	
    // Inicializamos las variables
    menor = 10; // Valor inicial alto para comparaciones de dígitos
	
    // Solicitamos al usuario un número y validamos que el número sea válido
	Repetir
		Escribir "Ingresa un número mayor a 0:";
		Leer num;
	Hasta Que num > 0
	
	// Usamos el ciclo Repetir para procesar los dígitos
	Repetir
		digito = num % 10; // Obtenemos el último dígito del número
		Si digito < menor Entonces
			menor = digito; // Actualizamos el dígito más pequeño si corresponde
		Fin Si
		num = Trunc(num / 10); // Eliminamos el último dígito del número
	Hasta Que num = 0 // El ciclo se detiene cuando no quedan más dígitos
	
	// Mostramos el resultado final
	Escribir "El menor dígito es: ", menor;
	
FinAlgoritmo