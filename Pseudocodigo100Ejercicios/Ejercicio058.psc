// Ejercicio 058: Averigua si una palabra dada por el usuario es igual a otra al darle la vuelta, ejermplo: ana = ana, oso = oso

Algoritmo Ejercicio058
	
	Definir palabra, letra, palabraInvertida Como Cadena;
	Definir i Como Entero;
	letra = '';
	palabraInvertida = '';
	
	Imprimir 'Ingresa una palabra';
	Leer palabra;
	palabra = Minusculas(palabra);
	
	Para i = 0 Hasta Longitud(palabra)-1 Con Paso 1 Hacer
		// Extrae el carácter de la palabra en la posición 'i'
		letra = SubCadena(palabra,i,i);
		// Agrega el carácter extraído al inicio de 'palabraInvertida'
		palabraInvertida = Concatenar(letra, palabraInvertida);
	Fin Para
	
	Si palabra == palabraInvertida Entonces
		Escribir 'La palabra (', palabra, ') es igual a (', palabraInvertida, '), es una palabra palindroma';
	SiNo
		Escribir 'La palabra (', palabra, ') no es igual a (', palabraInvertida, '), no es una palabra palindroma';
	Fin Si
	
FinAlgoritmo