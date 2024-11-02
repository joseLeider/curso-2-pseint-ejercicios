// Ejercicio 035: Indicar cuál es el mayor y el menor de 100 números dados por el usuario. Para probarlo puedes hacerlo con
// una cantidad menor, pero el programa debe de funcionar con un solo cambio.

Algoritmo Ejercicio035
	
	Definir cantidad, contador, num, mayor, menor Como Entero;
	cantidad = 0;
	contador = 1;
	num = 0;
	// Se le asigna un valor inicial a mayor y menor para poder validar valores negativos (-)
	mayor = 1;
	menor = 1;
	
	Imprimir "Ingresa la cantidad de numeros a verificar";
	Leer cantidad;
	
	Mientras contador <= cantidad Hacer
		Imprimir "Ingresa el número ", contador;
		Leer num;
		Si num > mayor Entonces
			mayor = num;
		Fin Si
		Si num < menor  Entonces
			menor = num;
		Fin Si
		contador = contador + 1;
	Fin Mientras
	
	Imprimir "El número mayor de los ", cantidad, " es de:", mayor;
	Imprimir "El número menor de los ", cantidad, " es de:", menor;
	
FinAlgoritmo