// Ejercicio 083: Mejora el programa anterior y créalo en forma de subproceso que al recibir una cantidad de frases
// determinada por el usuario devuelva un dibujo como el siguiente:
// ****************************
//   CURSO COMPLETO DE PSEINT
//      CON 100 EJERCICIOS
//          TECNODAVID
// ****************************

// Subproceso que dibuja el rótulo decorado
Funcion Rotulo (listaFrases, cantFrases)
	// Variables para el ancho total del marco, alto (número de líneas), iteradores, longitud máxima y espacios
	Definir ancho, alto, i, j, long, huecos Como Entero;
	Definir frase Como Cadena;
	
	ancho = 0;
	alto = cantFrases + 2;  // 2 líneas extra: una arriba y una abajo con asteriscos
	long = 0; // Longitud de la cadena mayor
	huecos = 0; // Longitud del resto de frases
	
	// Buscar la longitud de la frase más larga
	Para i = 0 Hasta cantFrases - 1 Con Paso 1 Hacer
		Si Longitud(listaFrases[i]) > long Entonces
			long = Longitud(listaFrases[i]);  // Guardar la longitud máxima
		Fin Si
	Fin Para
	
	ancho = long + 4;  // Se añaden 4 espacios extra para márgenes y centrado
	
	// Dibujo del marco línea por línea
	Para i = 0 Hasta alto - 1 Con Paso 1 Hacer
		Si i = 0 | i = alto - 1 Entonces
			// Primera y última línea: línea completa de asteriscos
			Para j = 1 Hasta ancho Con Paso 1 Hacer
				Escribir "*" Sin Saltar;
			Fin Para
		SiNo
			// Línea de frases centradas
			huecos = ancho - Longitud(listaFrases[i - 1]);  // Calcular espacios para centrar
			Para j = 1 Hasta trunc(huecos / 2) Con Paso 1 Hacer
				Escribir " " Sin Saltar;  // Espacios antes de la frase
			Fin Para
			
			Escribir listaFrases[i - 1], Sin Saltar;  // Mostrar frase centrada
		Fin Si
		
		Escribir " ";  // Salto de línea después de cada fila
	Fin Para
Fin Funcion

Algoritmo Ejercicio083
	Definir i, cantidad Como Entero;
	Definir listaFrases Como Cadena;
	
	Escribir "¿Cuántas frases quieres escribir?";
	Leer cantidad;
	Dimension listaFrases[cantidad];  // Crear arreglo de frases
	
	// Capturar cada frase desde el usuario
	Para i = 0 Hasta cantidad - 1 Con Paso 1 Hacer
		Escribir "Dime la frase número ", i + 1;
		Leer listaFrases[i];
	Fin Para
	
	// Llamar al subproceso que dibuja el rótulo
	Rotulo(listaFrases, cantidad);
	
FinAlgoritmo