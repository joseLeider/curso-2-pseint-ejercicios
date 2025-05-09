// Ejercicio 079: Convierte un n�mero binario en decimal

Algoritmo Ejercicio079
	
	Definir binario, pos, decimal, digito Como Entero;
	binario = 0;      // Aqu� se guardar� el n�mero binario ingresado por el usuario
	pos = 0;          // Esta variable representa la posici�n del d�gito (potencia de 2)
	decimal = 0;      // Almacenar� el resultado final en base decimal
	digito = 0;       // Almacena temporalmente cada d�gito extra�do del n�mero binario
	
	Escribir "Escribe un n�mero en binario";
	Leer binario;
	
	// Mientras queden d�gitos por procesar
	Mientras binario > 0 Hacer
		digito = binario % 10; // Extrae el �ltimo d�gito del n�mero binario (0 o 1)
		decimal = decimal + digito * (2^pos); // Convierte ese d�gito a decimal seg�n su posici�n
		pos = pos + 1; // Aumenta la posici�n para la siguiente potencia de 2
		binario = trunc(binario / 10); // Elimina el �ltimo d�gito del binario
	Fin Mientras
	
	Escribir decimal;

FinAlgoritmo