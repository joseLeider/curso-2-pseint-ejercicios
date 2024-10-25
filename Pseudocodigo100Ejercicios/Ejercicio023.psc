// Ejercicio 023: Indica cu�nto tendr� que pagar el usuario en el gimnasio seg�n sus preferencias
// Para determinar la tarifa de un gimnasio se tiene en cuenta la siguiente tabla:
// Periodo: (M) Ma�anas; horas: 1h = 20, 2h = 30, 3h = 40h 
// Periodo: (T) Tardes; horas: 1h = 30, 2h = 40, 3h = 50h 

Algoritmo Ejercicio023
	
	Definir horas Como Entero; // Horas de clase en el gimnasio
	Definir periodo Como Caracter; // M si se va en las ma�anas o T si va en las tardes
	horas = 0;
	Escribir "M-Ma�ana";
	Escribir "T-Tarde";
	Escribir "�En qu� periodo vas a ir al gimanasio (M o T)?";
	Leer periodo;
	periodo = Mayusculas(periodo);
	Escribir "�Cu�ntas horas vas a ir al gimnasio (1,2 o 3)?";
	Leer horas;
	
	Segun horas Hacer
		1:
			Segun periodo Hacer
				'M':
					Imprimir "Coste a pagar: 20";
				'T':
					Imprimir "Coste a pagar: 30";
				De Otro Modo:
					Imprimir "ERROR: Caracter invalido";
			Fin Segun
		2:
			Segun periodo Hacer
				'M':
					Imprimir "Coste a pagar: 30";
				'T':
					Imprimir "Coste a pagar: 40";
				De Otro Modo:
					Imprimir "ERROR: Caracter invalido";
			Fin Segun
		3:
			Segun periodo Hacer
				'M':
					Imprimir "Coste a pagar: 40";
				'T':
					Imprimir "Coste a pagar: 50";
				De Otro Modo:
					Imprimir "ERROR: Caracter invalido";
			Fin Segun
		De Otro Modo:
			Imprimir "ERROR: N�mero invalido";
	Fin Segun
	
FinAlgoritmo