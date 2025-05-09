// Ejercicio 080: Convierte un n�mero binario en octal

// Funci�n para convertir el n�mero binario en decimal
Funcion resultado <- binarioAdecimal (binario)
	Definir pos, resultado, digito Como Entero;
	pos = 0; // Posici�n de los bits desde la derecha
	resultado = 0; // Acumulador para el valor decimal
	Mientras binario > 0 Hacer
		digito = binario % 10; // Extrae el �ltimo d�gito (0 o 1)
		resultado = resultado + digito * (2^pos); // Convierte ese bit a decimal y lo suma
		pos = pos + 1; // Avanza a la siguiente posici�n de bit
		binario = trunc(binario / 10); // Quita el �ltimo d�gito del binario
	Fin Mientras
Fin Funcion
// Funci�n que convierte de decimal a octal
Funcion resultado <- ConversorDesdeDecimal (num)
	Definir resultado Como Caracter;
	resultado = '';
	Definir cociente Como Entero;
	Definir digito Como Caracter;
	digito = '';
	cociente = 0;
	
	Si num = 0 Entonces
		resultado = '0';
	Fin Si
	
	Mientras num > 0 Hacer
		cociente = num % 8; // Obtiene el d�gito m�s a la derecha en base 8
		digito = ConvertirATexto(cociente); // Lo convierte a texto
		resultado = Concatenar(digito, resultado); // Lo pone al inicio del resultado
		num = trunc(num / 8); // Divide el n�mero entre 8 para el siguiente d�gito
	Fin Mientras
Fin Funcion

Algoritmo Ejercicio080
	
	Definir binario, decimal Como Entero;
	Definir octal Como Cadena;
	
	binario = 0;
	octal = "";
	decimal = 0;
	Escribir "Ingresa el valor del n�mero binario que quieres convertir a octal";
	Leer binario;
	decimal = binarioADecimal(binario); // Convierte el binario a decimal
	octal = ConversorDesdeDecimal(decimal); // Convierte el decimal a octal
	Escribir "OCTAL: ", octal;
	
FinAlgoritmo