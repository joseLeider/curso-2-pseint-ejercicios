// Ejercicio 018: Un articulo determinado sigue la siguiente política de descuentos:
// -15% si se compran más de 1000 unidades
// -10% si se compran entre 500 y 999 unidades
// -5% si se compran entre 200 y 499 unidades
// Calcula el coste final de un pedido dado el precio de artículo y las unidades de compra

Algoritmo Ejercicio018
	
	// precioBase: precio unitario del producto antes de descuentos
	// precioFinal: precio unitario del producto tras descuentos
	// unidades: cantidad de artículos pedidos
	// costeFinal: coste del pedido total
	
	Definir precioBase, precioFinal, unidades, costeFinal Como Real;
	precioBase = 0;
	precioFinal = 0;
	unidades = 0;
	costeFinal = 0;
	Mostrar "Ingresa el precio base unitario del producto";
	Leer precioBase;
	Mostrar "Ingresa las unidades que quieres comprar";
	Leer unidades;
	
	Si unidades >= 1000 Entonces
		precioFinal = precioBase*0.85;
	SiNo
		Si unidades >= 500 Entonces
			precioFinal = precioBase*0.9;
		SiNo
			Si unidades >= 200 Entonces
				precioFinal = precioBase*0.95;
			SiNo
				precioFinal = precioBase;
			Fin Si
		Fin Si
	Fin Si
	
	costeFinal = unidades*precioFinal;
	Imprimir "El coste final del pedido es: $ ", costeFinal;
	
FinAlgoritmo