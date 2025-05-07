// Ejercicio 077: Convierte un n�mero decimal en binario

Algoritmo Ejercicio077
	
	Definir decimal Como Entero;
	Definir binario Como Cadena;
	binario = "";
	Escribir "Ingresa un n�mero";
	Leer decimal;
	
	Mientras decimal > 0 Hacer
		// Calcula el residuo (0 o 1) y lo agrega al principio de la cadena
		// As� se arma el binario de atr�s hacia adelante
		binario = Concatenar(ConvertirATexto(decimal % 2), binario);
		// Divide el n�mero entre 2 (parte entera) para continuar
		decimal = trunc(decimal / 2);
	Fin Mientras
	
	Escribir binario;
	
FinAlgoritmo