// Ejercicio 005: Calcular el precio final de un articulo, tras aplicar un precio inicial y un porcentaje de descuento.

Algoritmo Ejercicio005
	
	Definir articulo Como Cadena;
	Definir precioInicial, porcentajeDescuento, descuento, precioFinal Como Real;
	precioInicial = 0;
	precioFinal = 0;
	porcentajeDescuento = 0; 
	
	Escribir "Ingrese el nombre del articulo";
	Leer articulo;
	Escribir "Ingrese el precio de la ", articulo, ": ";
	Leer precioInicial;
	Escribir "Ingrese el porcentaje de descuento para ", articulo, ": ";
	Leer porcentajeDescuento;
	
	descuento = precioInicial*(porcentajeDescuento/100);
	precioFinal = precioInicial-descuento;
	
	Imprimir " ";
	Imprimir "Nombre del articulo: ", articulo;
	Imprimir "Precio inicial del articulo: ", precioInicial;
	Imprimir "Porcentaje de descuento para el articulo es del: ", porcentajeDescuento, " %";
	Imprimir "Cantidad que se ha descontado: ", descuento;
	Imprimir "El precio final del articulo es de: ", precioFinal;
	
FinAlgoritmo