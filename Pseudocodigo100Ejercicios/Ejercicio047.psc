// Ejercicio 047: Pide al usuario que introduzca el valor de las componentes x, y, z de un vector de 3 dimensiones
// y guárdalas en un arreglo. Después calcula y muestra por pantalla su modulo (raíz cuadrada de la suma de los
// cuadrados de todas las componentes)

Algoritmo Ejercicio047 
	
	// 'vector' será un arreglo para guardar las componentes del vector
	// 'suma' acumulará la suma de los cuadrados
	Definir vector, suma Como Real;
	Definir i Como Entero; // 'i' será la variable de control del ciclo
	
	suma = 0; // Inicializamos la suma en 0 para ir almacenando la suma de los cuadrados
	i = 0; // Inicializamos la variable 'i' para moverse por las posiciones del arreglo
	
	// Reservamos espacio para 3 elementos en el arreglo 'vector'
	Dimension vector[3];
	
	// Bucle para pedir los 3 componentes (x, y, z) del vector
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		// Pedimos al usuario el valor de la componente actual
		Mostrar "Ingresa el valor de la componente ", i+1, " del vector.";
		// Leemos y guardamos ese valor en el arreglo
		Leer vector[i];
		// Sumamos el cuadrado del valor al acumulador
		suma = suma + vector[i]^2;
	Fin Para
	
	// Calculamos y mostramos el módulo (raíz cuadrada de la suma de cuadrados)
	Imprimir "El módulo es: ", raiz(suma);
	
FinAlgoritmo