// Ejercicio 022: Indica la calificación de un alumno (Sobresaliente, Notable, Bien, Aprobado y Suspenso)
// según su calificación numérica.

Algoritmo Ejercicio022
	
	Definir calificacion Como Entero;
	calificacion = 0;
	Escribir "Escribe tu calificación en números enteros entre 0 a 10";
	Leer calificacion;
	
	Segun calificacion Hacer
		0,1,2,3,4:
			Imprimir "Suspenso";
		5:
			Imprimir "Aprobado";
		6:
			Imprimir "Bien";
		7,8: 
			Imprimir "Notable";
		9,10:
			Imprimir "Sobresaliente";
		De Otro Modo:
			Imprimir "ERROR: El valor introducido no es válido";
	Fin Segun
	
FinAlgoritmo