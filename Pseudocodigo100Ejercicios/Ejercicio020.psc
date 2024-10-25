// Determinar si la empresa recibir� o no subvenci�n una vez aportados los datos.
// Una subvenci�n es una ayuda econ�mica que otorgan entidades p�blicas o privadas a personas o proyectos.
// Para recibir una subvenci�n una empresa tiene que cumplir los siguientes criterios
// - Provincia de CUENCA, TERUEL O SORIA
// - Tener al menos 5 trabajadores

Algoritmo Ejercicio020
	
	Definir provincia Como Cadena;
	Definir trabajadores Como Entero;
	provincia = " ";
	trabajadores = 0;

	Escribir "Ingresa la provincia a la que perteneces";
	Leer provincia;
	provincia = Mayusculas(provincia);
	Escribir "Ingresa cuantos trabajadores tiene la empresa";
	Leer trabajadores;
	
	Si trabajadores >= 5 & (provincia == "CUENCA" | provincia == "TERUEL" | provincia == "SORIA") Entonces
		Imprimir "La empresa recibira una subvenci�n";
	SiNo
		Imprimir "La empresa no recibira una subvenci�n";
	Fin Si
	
FinAlgoritmo