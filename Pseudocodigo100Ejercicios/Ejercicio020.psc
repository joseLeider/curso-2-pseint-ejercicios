// Determinar si la empresa recibirá o no subvención una vez aportados los datos.
// Una subvención es una ayuda económica que otorgan entidades públicas o privadas a personas o proyectos.
// Para recibir una subvención una empresa tiene que cumplir los siguientes criterios
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
		Imprimir "La empresa recibira una subvención";
	SiNo
		Imprimir "La empresa no recibira una subvención";
	Fin Si
	
FinAlgoritmo