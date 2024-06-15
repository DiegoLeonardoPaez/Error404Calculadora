Algoritmo multiplicar_matriz
    // Declaraci�n de variables
    Dimension A[100,100], B[100,100], C[100,100]
    Definir filas_A, columnas_A, filas_B, columnas_B Como Entero
    Definir i, j, k Como Entero
	
    // Entrada de dimensiones de la primera matriz
    Escribir "Ingrese el n�mero de filas de la primera matriz A:"
    Leer filas_A
    Escribir "Ingrese el n�mero de columnas de la primera matriz A:"
    Leer columnas_A
	
    // Entrada de dimensiones de la segunda matriz
    Escribir "Ingrese el n�mero de filas de la segunda matriz B:"
    Leer filas_B
    Escribir "Ingrese el n�mero de columnas de la segunda matriz B:"
    Leer columnas_B
	
    // Validaci�n de dimensiones para la multiplicaci�n
    Si columnas_A <> filas_B Entonces
        Escribir "Error: El n�mero de columnas de la primera matriz debe ser igual al n�mero de filas de la segunda matriz."
	SiNo
		Escribir "Las dimensiones son correctas para la multiplicaci�n."
	FinSi

	// Entrada de elementos de la primera matriz
	Para i <- 1 Hasta filas_A Con Paso 1 Hacer
		Para j <- 1 Hasta columnas_A Con Paso 1 Hacer
			Escribir "Ingrese el elemento A[", i, "][", j, "]:"
			Leer A[i, j]
		FinPara
	FinPara

	// Entrada de elementos de la segunda matriz
	Para i <- 1 Hasta filas_B Con Paso 1 Hacer
		Para j <- 1 Hasta columnas_B Con Paso 1 Hacer
			Escribir "Ingrese el elemento B[", i, "][", j, "]:"
			Leer B[i, j]
		FinPara
	FinPara

	// Inicializaci�n de la matriz resultante C
	Para i <- 1 Hasta filas_A Con Paso 1 Hacer
		Para j <- 1 Hasta columnas_B Con Paso 1 Hacer
			C[i, j] <- 0
		FinPara
	FinPara

	// Multiplicaci�n de matrices
	Para i <- 1 Hasta filas_A Con Paso 1 Hacer
		Para j <- 1 Hasta columnas_B Con Paso 1 Hacer
			Para k <- 1 Hasta columnas_A Con Paso 1 Hacer
				C[i, j] <- C[i, j] + A[i, k] * B[k, j]
			FinPara
		FinPara
	FinPara

	// Salida de la matriz resultante
	Escribir "La matriz resultante C es:"
	Para i <- 1 Hasta filas_A Con Paso 1 Hacer
		Para j <- 1 Hasta columnas_B Con Paso 1 Hacer
			Escribir "C[", i, "][", j, "] = ", C[i, j]
		FinPara
	FinPara
FinAlgoritmo
