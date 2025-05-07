// Ejercicio 078: Crea un programa para convertir de decimal a cualquiera de las siguientes bases
// de numeraci�n (binario, octal o hexadecimal)

// Funci�n que convierte n�meros mayores a 9 a letras hexadecimales (A, B, C, etc.)
Funcion resultado <- LetrasHex (cociente)
	
	Definir resultado Como Caracter;
	
	// Seg�n el cociente (que va de 10 a 15) asignamos la letra correspondiente
	Segun cociente Hacer
		10:
			resultado = 'A';  // Si el cociente es 10, el car�cter ser� 'A'
		11:
			resultado = 'B';  // Si el cociente es 11, el car�cter ser� 'B'
		12:
			resultado = 'C';  // Si el cociente es 12, el car�cter ser� 'C'
		13:
			resultado = 'D';  // Si el cociente es 13, el car�cter ser� 'D'
		14:
			resultado = 'E';  // Si el cociente es 14, el car�cter ser� 'E'
		15:
			resultado = 'F';  // Si el cociente es 15, el car�cter ser� 'F'
	Fin Segun
	
Fin Funcion

// Funci�n que convierte un n�mero decimal a cualquier base (binario, octal, hexadecimal)
Funcion resultado <- ConversorDesdeDecimal (num, base)
	// Declaraci�n de la variable resultado que almacenar� el n�mero convertido
	Definir resultado Como Cadena;
	resultado = "";
	Definir cociente Como Entero;
	Definir digito Como Cadena;
	digito = "";
	cociente = 0;
	
	// Si el n�mero es 0, directamente asignamos "0" a resultado
	Si num = 0 Entonces
		resultado = "0";  // Si el n�mero es 0, no hay que hacer conversiones
	Fin Si
	
	// Mientras el n�mero sea mayor que 0, seguimos dividiendo y obteniendo residuos
	Mientras num > 0 Hacer
		// El cociente es el residuo de la divisi�n del n�mero entre la base
		cociente = (num % base);
		// Convertimos el cociente a texto
		digito = ConvertirATexto(cociente);
		
		// Si el cociente es mayor que 9, necesitamos usar letras hexadecimales (A, B, etc.)
		Si cociente > 9 Entonces
			// Llamamos a la funci�n LetrasHex para obtener la letra correspondiente
			digito = LetrasHex(cociente);
		Fin Si
		
		// Concatenamos el d�gito actual al principio de la cadena resultado
		resultado = Concatenar(digito, resultado);
		// Dividimos el n�mero entre la base para obtener el cociente para la pr�xima iteraci�n
		num = trunc(num / base);
	Fin Mientras
	
Fin Funcion

Algoritmo Ejercicio078
	
	Definir decimal, base Como Entero;
	Definir solucion Como Cadena;
	
	solucion = "";
	Escribir "Ingresa un n�mero en base decimal";
	Leer decimal;
	Escribir "A que base lo quieres convertir: ";
	Escribir "(2) Binario"; 
	Escribir "(8) Octal";
	Escribir "(16) Hexadecimal";
	Leer base;
	// Llamamos a la funci�n ConversorDesdeDecimal para hacer la conversi�n y mostramos el resultado
	Escribir ConversorDesdeDecimal(decimal, base);
	
FinAlgoritmo