// Ejercicio 057: Contar vocales y consonantes de una palabra dada por el usuario

Algoritmo Ejercicio057
	
	Definir p, contarVocales, contarConsonantes Como Entero;
	Definir palabra Como Cadena;
	
	contarVocales = 0;
	contarConsonantes = 0;
	
	Imprimir 'Ingresa una palabra:';
	Leer palabra;
	palabra = Minusculas(palabra);
	
	Para p = 0 Hasta Longitud(palabra) - 1 Con Paso 1 Hacer
		
		Segun SubCadena(palabra, p, p) Hacer
			"a","e","i","o","u","�","�","�","�","�","�":
				contarVocales = contarVocales + 1;
			"b","c","d","f","g","h","j","k","l","m","n","�","p","q","r","s","t","v","w","x","y","z":
				contarConsonantes = contarConsonantes + 1;
		FinSegun
		
	Fin Para
	
	Imprimir 'N�mero de vocales: ', contarVocales;
	Imprimir 'N�mero de consonantes: ', contarConsonantes;
	
FinAlgoritmo