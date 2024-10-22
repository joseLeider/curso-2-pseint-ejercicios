// Ejercicio 007: Calcular el área y el perímetro de un tríangulo rectángulo dado los dos catetos

Algoritmo Ejercicio007
	
	Definir catetoA, catetoB, area, hipotenusa, perimetro Como Real;
	
	catetoA = 0;
	catetoB = 0;
	area = 0;
	hipotenusa = 0;
	perimetro = 0;
	
	Escribir "Ingrese los dos valores de los catetos: ";
	Leer catetoA, catetoB;
	
	area = (catetoA*catetoB)/2;
	hipotenusa = raiz(catetoA^2 + catetoB^2); // se calcula usando el teorema de pitágoras
	perimetro = catetoA + catetoB + hipotenusa;
	
	Imprimir "El área del triángulo rectangulo es: ", area;
	Imprimir "El perímetro es: ", perimetro;
	
FinAlgoritmo