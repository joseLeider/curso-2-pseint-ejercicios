// Ejercicio 025: Determinar la cantidad de digitos de un numero entero

Algoritmo Ejercicio025
	
	Definir num, digitos Como Entero;
	num = 0;
	digitos = 0;
	Mostrar "Ingresa un numero entero";
	Leer num;
	
	Si num == 0 Entonces
		// Si el n�mero es 0, entonces se asigna 1 a 'digitos', ya que 0 tiene un d�gito.
		digitos = 1;
	SiNo
		// Mientras 'num' no sea igual a 0, se repiten las instrucciones dentro del bucle.
		Mientras num <> 0 Hacer
			// Divide 'num' por 10, quitando el �ltimo d�gito y truncando el resultado a un n�mero entero, hasta que sea 0.
			num = trunc(num/10);
			Imprimir num;
			// Incrementa en 1 el contador 'digitos' cada vez que se quita un d�gito de 'num'.
			digitos = digitos +1;
		Fin Mientras
	Fin Si
	
	Imprimir "El numero tiene ", digitos, " digitos";
	
FinAlgoritmo