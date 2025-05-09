// Ejercicio 079: Convierte un número binario en decimal

Algoritmo Ejercicio079
	
	Definir binario, pos, decimal, digito Como Entero;
	binario = 0;      // Aquí se guardará el número binario ingresado por el usuario
	pos = 0;          // Esta variable representa la posición del dígito (potencia de 2)
	decimal = 0;      // Almacenará el resultado final en base decimal
	digito = 0;       // Almacena temporalmente cada dígito extraído del número binario
	
	Escribir "Escribe un número en binario";
	Leer binario;
	
	// Mientras queden dígitos por procesar
	Mientras binario > 0 Hacer
		digito = binario % 10; // Extrae el último dígito del número binario (0 o 1)
		decimal = decimal + digito * (2^pos); // Convierte ese dígito a decimal según su posición
		pos = pos + 1; // Aumenta la posición para la siguiente potencia de 2
		binario = trunc(binario / 10); // Elimina el último dígito del binario
	Fin Mientras
	
	Escribir decimal;

FinAlgoritmo