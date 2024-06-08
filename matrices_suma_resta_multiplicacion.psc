Proceso matrices_suma_resta_multiplicacion
Definir i, j, filas, columnas Como Entero;
Definir matrizA, matrizB, matrizSuma, matrizResta, matrizProducto Como Real;
Escribir "Ingrese el número de filas: ";
Leer filas;
Escribir "Ingrese el número de columnas: ";
Leer columnas;

Dimension matrizA[filas, columnas];
Dimension matrizB[filas, columnas];
Dimension matrizSuma[filas, columnas];
Dimension matrizResta[filas, columnas];
Dimension matrizProducto[filas, columnas];

Para i <- 1 Hasta filas Hacer
	Para j <- 1 Hasta columnas Hacer
		Escribir "Ingrese el elemento [", i,",", j, "] de la matriz A: ";
		Leer matrizA[i, j];
		Escribir "Ingrese el elemento [", i,",", j, "] de la matriz B: ";
		Leer matrizB[i, j];
	FinPara
FinPara
//Suma de matrices
Para i <- 1 Hasta filas Hacer
	Para j <- 1 Hasta columnas Hacer
		matrizSuma[i, j] = matrizA[i, j] + matrizB[i, j];
	FinPara
FinPara
Escribir "La suma de la matriz es:";
Para i <- 1 Hasta filas Hacer
	Para j <- 1 Hasta columnas Hacer
		Escribir Sin Saltar matrizSuma[i, j], " ";
	FinPara
	Escribir "";
FinPara

//Resta de matrices
Para i <- 1 Hasta filas Hacer
	Para j  <- 1 Hasta columnas Hacer
		matrizResta[i, j] = matrizA[i, j] - matrizB[i, j];
	FinPara
FinPara
Escribir "La resta de la matriz es:";
Para i <- 1 Hasta filas Hacer
	Para j <- 1 Hasta columnas Hacer
		Escribir Sin Saltar matrizResta[i,j], " ";
	FinPara
FinPara

//Multiplicacion de matrices
Para i <- 1 Hasta filas Hacer
	Para j <- 1 Hasta columnas Hacer
		matrizProducto[i, j] = 0;
		Para k <- 1 Hasta columnas Hacer
			matrizProducto[i, j] = matrizProducto[i,j ] + matrizA[i,j ] * matrizB[j, k];
		FinPara
	FinPara
FinPara
Escribir "El producto de las matrices es: ";
Para i <- 1 Hasta filas Hacer
	Para j <- 1 Hasta columnas Hacer
		Escribir Sin Saltar matrizProducto[i, j]," ";
	FinPara
FinPara
FinProceso