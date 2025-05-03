// Ejercicio 072: Calcula las soluciones de una ecuaci�n de segundo grado conociendo los coeficientes. Utiliza subprocesos
// para ayudarte en el c�lculo.

// Funci�n que calcula la primera soluci�n de la ecuaci�n de segundo grado
Funcion resultado <- sol1(a, b, c)
	Definir resultado Como Real;
	// Aplicamos la f�rmula general: (-b + ?(b� - 4ac)) / (2a)
	resultado = (-b + raiz(b^2 - 4*a*c)) / (2 * a);
Fin Funcion

// Funci�n que calcula la segunda soluci�n de la ecuaci�n de segundo grado
Funcion resultado <- sol2(a, b, c)
	Definir resultado Como Real;
	// Aplicamos la f�rmula general: (-b - ?(b� - 4ac)) / (2a)
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
	
	// Verificamos que a no sea 0, ya que si lo es, no es una ecuaci�n de segundo grado
	Si a = 0 Entonces
		Escribir "No es una ecuaci�n de segundo grado.";
	Sino
		// Calculamos el discriminante: b� - 4ac
		discriminante = b^2 - 4*a*c;
		
		// Si el discriminante es negativo, no hay soluciones reales
		Si discriminante < 0 Entonces
			Escribir "La ecuaci�n no tiene soluciones reales.";
		Sino
			// Si el discriminante es 0 o mayor, mostramos las dos soluciones reales
			Escribir 'La primera soluci�n a la ecuaci�n es: ', sol1(a, b, c);
			Escribir 'La segunda soluci�n a la ecuaci�n es: ', sol2(a, b, c);
		FinSi
	FinSi
	
FinAlgoritmo