// Ejercicio 077: Convierte un número decimal en binario

Algoritmo Ejercicio077
	
	Definir decimal Como Entero;
	Definir binario Como Cadena;
	binario = "";
	Escribir "Ingresa un número";
	Leer decimal;
	
	Mientras decimal > 0 Hacer
		// Calcula el residuo (0 o 1) y lo agrega al principio de la cadena
		// Así se arma el binario de atrás hacia adelante
		binario = Concatenar(ConvertirATexto(decimal % 2), binario);
		// Divide el número entre 2 (parte entera) para continuar
		decimal = trunc(decimal / 2);
	Fin Mientras
	
	Escribir binario;
	
FinAlgoritmo