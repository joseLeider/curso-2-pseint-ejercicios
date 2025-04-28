// Ejercicio 060: Encuentra la palabra oculta. El siguiente mensaje está encriptado de manera que para obtenerlo hay que
// escoger la primera letra de cada palabra: "Estoy seguro te urge devolver intereses ahora"
// Crea un algoritmo para encontrar la solución al enigma

Algoritmo Ejercicio060
	
	Definir enigma, mensaje Como Cadena;
	Definir i Como Entero;
	
	mensaje = '';
	enigma = "Estoy seguro te urge devolver intereses ahora";
	mensaje = SubCadena(enigma,0,0);
	
	Para i = 0 Hasta Longitud(enigma)-1 Con Paso 1 Hacer
		Si SubCadena(enigma,i,i) = ' ' Entonces
			mensaje = Concatenar(mensaje,SubCadena(enigma,i+1,i+1));
		Fin Si
	Fin Para
	
	Imprimir 'El mensaje oculto al enigma es: ', mensaje; // Estudia
	
FinAlgoritmo