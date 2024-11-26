// Ejercicio 037: Averiguar cu�l es el d�gito mas peque�o de un n�mero dado

Algoritmo Ejercicio037
	
    // Declaramos las variables
    Definir num, digito, menor Como Entero;
	
    // Inicializamos las variables
    menor = 10; // Valor inicial alto para comparaciones de d�gitos
	
    // Solicitamos al usuario un n�mero y validamos que el n�mero sea v�lido
	Repetir
		Escribir "Ingresa un n�mero mayor a 0:";
		Leer num;
	Hasta Que num > 0
	
	// Usamos el ciclo Repetir para procesar los d�gitos
	Repetir
		digito = num % 10; // Obtenemos el �ltimo d�gito del n�mero
		Si digito < menor Entonces
			menor = digito; // Actualizamos el d�gito m�s peque�o si corresponde
		Fin Si
		num = Trunc(num / 10); // Eliminamos el �ltimo d�gito del n�mero
	Hasta Que num = 0 // El ciclo se detiene cuando no quedan m�s d�gitos
	
	// Mostramos el resultado final
	Escribir "El menor d�gito es: ", menor;
	
FinAlgoritmo