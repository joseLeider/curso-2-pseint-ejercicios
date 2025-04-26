// Ejercicio 054: Crea una matriz 4x3 con valores aportados por el usuario que represente el número de personas que
// viven en los pisos de un edificio de viviendas. Después indica cual es la planta con mayor número de vecinos,
// indicando también el número. 

//edificio = {
//planta1 = piso1/piso2/piso3
//planta2 = piso1/piso2/piso3
//planta3 = piso1/piso2/piso3
//planta4 = piso1/piso2/piso3
//}

Algoritmo Ejercicio054
	
	Definir i, edificio, planta, piso, suma, mayor, mayorPosicion Como Entero;
	
	piso = 0;
	mayor = 0;
	mayorPosicion = 0;
	
	Dimension edificio[4,3]; // Crea una matriz de 4 filas (plantas) y 3 columnas (pisos) para guardar los datos
	Dimension suma[4]; // Crea un arreglo para guardar la suma total de personas por cada planta
	
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		suma[i] = 0;
	Fin Para
	// Inicia el recorrido por cada planta del edificio
	Para planta = 0 Hasta 3 Con Paso 1 Hacer
		// Recorre cada piso dentro de la planta actual
		Para piso = 0 Hasta 2 Con Paso 1 Hacer
			Imprimir 'Cuás personas viven en la planta ', planta+1, ' piso ', piso+1;
			Leer edificio[planta, piso];
			// Suma esa cantidad a la suma total de personas de la planta actual
			suma[planta] = suma[planta]+edificio[planta, piso];
		Fin Para
		// Después de llenar una planta, verifica si su suma es mayor que el máximo anterior
		Si suma[planta] > mayor Entonces
			mayor = suma[planta];           // Si lo es, guarda ese valor como el nuevo mayor
			mayorPosicion = planta;         // También guarda qué planta es esa
		Fin Si
		Imprimir " ";                       // Espacio visual entre plantas
	Fin Para
	
	Imprimir " ";
	Imprimir "Matriz del edificio (cada fila es una planta, con 3 pisos):";
	Para planta = 0 Hasta 3 Con Paso 1 Hacer
		Imprimir "Planta ", planta+1, ": ", Sin Saltar;
		Para piso = 0 Hasta 2 Con Paso 1 Hacer
			Imprimir edificio[planta,piso], " ", Sin Saltar;
		Fin Para
		Imprimir " ";
	Fin Para
	
	Mostrar ' ';
	Imprimir 'La planta con mayor número de personas es el planta #', mayorPosicion+1, ' y tiene un total de ', mayor, ' personas';
	
FinAlgoritmo