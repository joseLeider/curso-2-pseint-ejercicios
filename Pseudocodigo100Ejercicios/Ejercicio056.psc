// Ejercicio 056: Indicar si una frase contiene una letra dada

// CADENAS DE CARACTERES:

// Longitud(cadena); Retorna la cantidad de carecteres de la cadena.
// SubCadena(cadena, desde, hasta); Retorna la cadena recortada. (El primer carácter esta en la posición 0)
// Concatenar(cadena, cadena); Une dos cadenas.
// ConvertirANumero(cadena); Convertir una cadena en número. 
// ConvertirATexto(numero); Convertir un número a cadena de caracteres.
// Mayusculas(cadena); Devuelve la cadena en mayúsculas.
// Minusculas(cadena); Devuelve la cadena en minúsculas.

Algoritmo Ejercicio056
	
	Definir frase, letra Como Texto;
	Definir cantidad, i Como Entero;
	Definir encontrada Como Logico;
	
	Imprimir 'Ingresa una frase corta';
	Leer frase;
	
	cantidad = Longitud(frase);
	encontrada = Falso;
	
	Imprimir 'Ingresa la letra a buscar en la frase';
	Leer letra;
	
	i = 0;
	// Repite mientras halla caracteres y no se halla encontrado la letra
	Mientras i < cantidad & encontrada = Falso Hacer
		Si Subcadena(frase, i, i) = letra Entonces
			encontrada = Verdadero;
		Fin Si
		i = i + 1;
	Fin Mientras
	
	Si encontrada = Verdadero Entonces
		Mostrar 'Si, la letra (', letra, ') se encuentra en la frase (', frase, ')';
	SiNo
		Mostrar 'No, la letra (', letra, ') no se encuentra en la frase (', frase, ')';
	Fin Si
	
FinAlgoritmo