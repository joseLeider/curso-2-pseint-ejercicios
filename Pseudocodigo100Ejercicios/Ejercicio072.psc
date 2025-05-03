// Ejercicio 072: Calcula las soluciones de una ecuación de segundo grado conociendo los coeficientes. Utiliza subprocesos
// para ayudarte en el cálculo.

// Función que calcula la primera solución de la ecuación de segundo grado
Funcion resultado <- sol1(a, b, c)
	Definir resultado Como Real;
	// Aplicamos la fórmula general: (-b + ?(b² - 4ac)) / (2a)
	resultado = (-b + raiz(b^2 - 4*a*c)) / (2 * a);
Fin Funcion

// Función que calcula la segunda solución de la ecuación de segundo grado
Funcion resultado <- sol2(a, b, c)
	Definir resultado Como Real;
	// Aplicamos la fórmula general: (-b - ?(b² - 4ac)) / (2a)
	resultado = (-b - raiz(b^2 - 4*a*c)) / (2 * a);
Fin Funcion

Algoritmo Ejercicio072
	Definir a, b, c, discriminante Como Real; // Declaramos las variables para los coeficientes y el discriminante
	
	// Solicitamos los coeficientes al usuario
	Escribir 'ECUACIONES DE SEGUNDO GRADO';
	Escribir 'Dime el valor de la a';
	Leer a;
	Escribir 'Dime el valor de la b';
	Leer b;
	Escribir 'Dime el valor de la c';
	Leer c;
	
	// Verificamos que a no sea 0, ya que si lo es, no es una ecuación de segundo grado
	Si a = 0 Entonces
		Escribir "No es una ecuación de segundo grado.";
	Sino
		// Calculamos el discriminante: b² - 4ac
		discriminante = b^2 - 4*a*c;
		
		// Si el discriminante es negativo, no hay soluciones reales
		Si discriminante < 0 Entonces
			Escribir "La ecuación no tiene soluciones reales.";
		Sino
			// Si el discriminante es 0 o mayor, mostramos las dos soluciones reales
			Escribir 'La primera solución a la ecuación es: ', sol1(a, b, c);
			Escribir 'La segunda solución a la ecuación es: ', sol2(a, b, c);
		FinSi
	FinSi
	
FinAlgoritmo