// Ejercicio 015: Calcular el sueldo de un trabajador dado su sueldo base y sabiendo que si ha trabajado
// más de 40 horas cobrará un 20 % más.

Algoritmo Ejercicio015
	
	Definir sueldoBase, horasTrabajadas, incremento, sueldoFinal Como Real;
	
	Escribir "Ingrese tu sueldo base: ";
	Leer sueldoBase;
	Escribir "Ingrese las horas trabajadas: ";
	Leer horasTrabajadas;
	incremento = 20;
	
	Si horasTrabajadas > 40 Entonces
		sueldoFinal = (sueldoBase*(1+incremento/100));
		Imprimir "El sueldo del trabajador por haber trabajado más de 40 horas es de: ", sueldoFinal;
	SiNo
		Imprimir "El sueldo del trabajador es de: ", sueldoBase;
	Fin Si
	
FinAlgoritmo