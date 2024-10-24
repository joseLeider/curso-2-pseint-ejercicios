// Ejercicio 019: Determinar si una letra dada es vocal o no. (En minúscula y sin tilde)

Algoritmo Ejercicio019
	
	Definir letra Como Caracter;
	letra = ' ';
	Mostrar "Ingresa una letra";
	Leer letra;
	letra = Minusculas(letra);
	
	Si letra == 'a' | letra == 'e' | letra == 'i' | letra == 'o' | letra == 'u' Entonces //Operador Logico O (OR) | disyunción
		Imprimir "La letra (", letra, ") es una vocal";
	SiNo
		Imprimir "La letra (", letra, ") no es una vocal";
	Fin Si
	
FinAlgoritmo