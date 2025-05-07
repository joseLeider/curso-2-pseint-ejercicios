// Ejercicio 078: Crea un programa para convertir de decimal a cualquiera de las siguientes bases
// de numeración (binario, octal o hexadecimal)

// Función que convierte números mayores a 9 a letras hexadecimales (A, B, C, etc.)
Funcion resultado <- LetrasHex (cociente)
	
	Definir resultado Como Caracter;
	
	// Según el cociente (que va de 10 a 15) asignamos la letra correspondiente
	Segun cociente Hacer
		10:
			resultado = 'A';  // Si el cociente es 10, el carácter será 'A'
		11:
			resultado = 'B';  // Si el cociente es 11, el carácter será 'B'
		12:
			resultado = 'C';  // Si el cociente es 12, el carácter será 'C'
		13:
			resultado = 'D';  // Si el cociente es 13, el carácter será 'D'
		14:
			resultado = 'E';  // Si el cociente es 14, el carácter será 'E'
		15:
			resultado = 'F';  // Si el cociente es 15, el carácter será 'F'
	Fin Segun
	
Fin Funcion

// Función que convierte un número decimal a cualquier base (binario, octal, hexadecimal)
Funcion resultado <- ConversorDesdeDecimal (num, base)
	// Declaración de la variable resultado que almacenará el número convertido
	Definir resultado Como Cadena;
	resultado = "";
	Definir cociente Como Entero;
	Definir digito Como Cadena;
	digito = "";
	cociente = 0;
	
	// Si el número es 0, directamente asignamos "0" a resultado
	Si num = 0 Entonces
		resultado = "0";  // Si el número es 0, no hay que hacer conversiones
	Fin Si
	
	// Mientras el número sea mayor que 0, seguimos dividiendo y obteniendo residuos
	Mientras num > 0 Hacer
		// El cociente es el residuo de la división del número entre la base
		cociente = (num % base);
		// Convertimos el cociente a texto
		digito = ConvertirATexto(cociente);
		
		// Si el cociente es mayor que 9, necesitamos usar letras hexadecimales (A, B, etc.)
		Si cociente > 9 Entonces
			// Llamamos a la función LetrasHex para obtener la letra correspondiente
			digito = LetrasHex(cociente);
		Fin Si
		
		// Concatenamos el dígito actual al principio de la cadena resultado
		resultado = Concatenar(digito, resultado);
		// Dividimos el número entre la base para obtener el cociente para la próxima iteración
		num = trunc(num / base);
	Fin Mientras
	
Fin Funcion

Algoritmo Ejercicio078
	
	Definir decimal, base Como Entero;
	Definir solucion Como Cadena;
	
	solucion = "";
	Escribir "Ingresa un número en base decimal";
	Leer decimal;
	Escribir "A que base lo quieres convertir: ";
	Escribir "(2) Binario"; 
	Escribir "(8) Octal";
	Escribir "(16) Hexadecimal";
	Leer base;
	// Llamamos a la función ConversorDesdeDecimal para hacer la conversión y mostramos el resultado
	Escribir ConversorDesdeDecimal(decimal, base);
	
FinAlgoritmo