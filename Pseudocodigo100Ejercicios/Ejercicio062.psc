// Ejercicio 062: Crea dos subprocesos que incrementen el valor de un n�mero, pero no devuelvan ning�n valor. A una de ellas
// se le ha de pasar el argumento por valor y a la otra por referencia. Despu�s en el algoritmo principal llama a las dos
// funciones y crea un programa en el que se observen las diferencias de ambos m�todos.

Funcion subprocesoA (parametroA) // Por Valor, por defecto
	parametroA = parametroA+1;
Fin Funcion

Funcion subprocesoB (parametroB Por Referencia)
	parametroB = parametroB+1;
Fin Funcion

Algoritmo Ejercicio062
	
	Definir argumentoA, argumentoB Como Entero;
	
	argumentoA = 3;
	argumentoB = 4;
	
	Mostrar 'El argumento antes de llamar a la funci�n con paso por valor vale: ', argumentoA;
	subprocesoA(argumentoA);
	Mostrar 'El argumento despues de llamar a la funci�n con paso por valor vale: ', argumentoA;
	
	Mostrar 'El argumento antes de llamar a la funci�n con paso por referencia vale: ', argumentoB;
	subprocesoB(argumentoB);
	Mostrar 'El argumento despues de llamar a la funci�n con paso por referencia vale: ', argumentoB;
	
	Imprimir '';
	Imprimir '((( NOTAS )))';
	
	Imprimir 'El argumento pasado por valor no se modifica, ya que se pasa una copia de la variable original.';
	Imprimir 'Se crean dos variables: una es la variable original (el argumento) y otra es la copia dentro de la funci�n (el par�metro).';
	Imprimir 'Son dos espacios de memoria separados.';
	Imprimir '';
	Imprimir 'El argumento pasado por referencia s� se modifica, ya que se pasa la direcci�n en memoria de la variable original.';
	Imprimir 'Se crea una variable y solo existe un �nico valor en memoria, y tanto el argumento como el par�metro apuntan al mismo sitio.';
	Imprimir 'Es un espacio de memoria compartido.';

	
FinAlgoritmo