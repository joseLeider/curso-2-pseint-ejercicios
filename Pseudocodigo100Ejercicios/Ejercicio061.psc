// Ejercicio 061: Crea un subproceso que sume dos números, otro que los reste, otro que los multiplique y otro que los divida.
// Posteriormente pide dos números al usuario y que elija la operación que quiere realizar con ellos. Muestra el resultado por
// pantalla. Al menos un subproceso tendrá que ser sin retorno y otra con retorno

// OTRAS INSTRUCCIONES:

// Borrar Pantalla; Borra la pantalla y coloca el cursor en la esquina superior izquierda.
// Esperar Tecla; Detiene su algoritmo hasta que el usuario presione una tecla cualquiera de su teclado
// Esperar 4 Segundos; Detiene su algoritmo durante el tiempo deseado en segundos o milisegundos
// Esperar 4000 Milisegundos;

// Subproceso o funcion de procedimiento sin retorno
Funcion sumar (a, b)
	Imprimir a + b;
Fin Funcion

Funcion restar (a, b)
	Imprimir a - b;
Fin Funcion
// Subproceso o función con retorno
Funcion multiplicacion = multiplicar (a, b)
	Definir multiplicacion Como Real;
	multiplicacion = a * b;
Fin Funcion

Funcion division = dividir (a, b)
	Definir division Como Real;
	division = a / b;
Fin Funcion

Algoritmo Ejercicio061
	
	Definir num1, num2, seleccion, division Como Real;
	
	Imprimir "Ingrese dos números para las operaciones";
	Leer num1, num2;

	Imprimir 'Seleccione que operación quiere realizar del 1 al 4: ';
	Imprimir '1. Sumar';
	Imprimir '2. Restar';
	Imprimir '3. Multiplicar';
	Imprimir '4. Dividir';
	Leer seleccion;
	
	Segun seleccion Hacer
		1:
			sumar(num1, num2);
		2:
			restar(num1, num2);
		3:
			Mostrar multiplicar(num1, num2);
		4:
			division = dividir(num1, num2);
			Imprimir division;
		De Otro Modo:
			Imprimir 'No ha seleccionado una opcion correcta';
	Fin Segun
	
FinAlgoritmo