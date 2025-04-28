// Ejercicio 059: Cuenta las palabras que tiene una frase dada por el usuario

Algoritmo Ejercicio059
	
	Definir frase Como Cadena;
	Definir i, palabras Como Entero;
	
	palabras = 0;
	
	Imprimir "Escribe una frase";
	Leer frase;
	
	Para i = 0 Hasta Longitud(frase)-1 Con Paso 1 Hacer
		Si  SubCadena(frase,i,i) = ' ' Entonces
			palabras = palabras +1;
		Fin Si
	Fin Para
	// Una frase tendra siempre tantas palabras como espacios+1
	Imprimir "La frase tiene ", palabras+1, " palabras";
	
FinAlgoritmo