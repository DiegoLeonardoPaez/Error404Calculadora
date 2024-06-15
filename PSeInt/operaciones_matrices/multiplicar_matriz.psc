Algoritmo multiplicar_matriz
    // Declaración de variables
    Dimension A[100,100], B[100,100], C[100,100]
    Definir filas_A, columnas_A, filas_B, columnas_B Como Entero
    Definir i, j, k Como Entero
	
    // Entrada de dimensiones de la primera matriz
    Escribir "Ingrese el número de filas de la primera matriz A:"
    Leer filas_A
    Escribir "Ingrese el número de columnas de la primera matriz A:"
    Leer columnas_A
	
    // Entrada de dimensiones de la segunda matriz
    Escribir "Ingrese el número de filas de la segunda matriz B:"
    Leer filas_B
    Escribir "Ingrese el número de columnas de la segunda matriz B:"
    Leer columnas_B
	
    // Validación de dimensiones para la multiplicación
    Si columnas_A <> filas_B Entonces
        Escribir "Error: El número de columnas de la primera matriz debe ser igual al número de filas de la segunda matriz."
	SiNo
		Escribir "Las dimensiones son correctas para la multiplicación."
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

	// Inicialización de la matriz resultante C
	Para i <- 1 Hasta filas_A Con Paso 1 Hacer
		Para j <- 1 Hasta columnas_B Con Paso 1 Hacer
			C[i, j] <- 0
		FinPara
	FinPara

	// Multiplicación de matrices
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
