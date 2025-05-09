// Ejercicio 080: Convierte un número binario en octal

// Función para convertir el número binario en decimal
Funcion resultado <- binarioAdecimal (binario)
	Definir pos, resultado, digito Como Entero;
	pos = 0; // Posición de los bits desde la derecha
	resultado = 0; // Acumulador para el valor decimal
	Mientras binario > 0 Hacer
		digito = binario % 10; // Extrae el último dígito (0 o 1)
		resultado = resultado + digito * (2^pos); // Convierte ese bit a decimal y lo suma
		pos = pos + 1; // Avanza a la siguiente posición de bit
		binario = trunc(binario / 10); // Quita el último dígito del binario
	Fin Mientras
Fin Funcion
// Función que convierte de decimal a octal
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
		cociente = num % 8; // Obtiene el dígito más a la derecha en base 8
		digito = ConvertirATexto(cociente); // Lo convierte a texto
		resultado = Concatenar(digito, resultado); // Lo pone al inicio del resultado
		num = trunc(num / 8); // Divide el número entre 8 para el siguiente dígito
	Fin Mientras
Fin Funcion

Algoritmo Ejercicio080
	
	Definir binario, decimal Como Entero;
	Definir octal Como Cadena;
	
	binario = 0;
	octal = "";
	decimal = 0;
	Escribir "Ingresa el valor del número binario que quieres convertir a octal";
	Leer binario;
	decimal = binarioADecimal(binario); // Convierte el binario a decimal
	octal = ConversorDesdeDecimal(decimal); // Convierte el decimal a octal
	Escribir "OCTAL: ", octal;
	
FinAlgoritmo