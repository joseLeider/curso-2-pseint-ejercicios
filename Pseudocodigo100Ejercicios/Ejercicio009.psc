// Ejercicio 009: Calcular el precio sin iva de un producto, dado el precio de venta con el iva ya incluido

Algoritmo Ejercicio009

	Definir precioConIva, iva, precioSinIva Como Real;
	
	iva = 19;
	precioConIva = 0;
	precioSinIva = 0;
	
	Escribir "Ingresa el precio de venta para el producto: ";
	Leer precioConIva;
	precioSinIva = precioConIva / (1+iva/100);
	Imprimir "El precio sin IVA del producto es: ", "$ ", precioSinIva;
	
FinAlgoritmo