Algoritmo suma_matrices
    Definir filas_A, columnas_A, filas_B, columnas_B, i, j como Entero
    Dimension matriz_A[10, 10], matriz_B[10, 10], resultado_matriz[10, 10]
    
    Repetir
        Escribir "Ingrese el número de filas de la matriz A:"
        Leer filas_A
        Escribir "Ingrese el número de columnas de la matriz A:"
        Leer columnas_A
        
        Escribir "Ingrese el número de filas de la matriz B:"
        Leer filas_B
        Escribir "Ingrese el número de columnas de la matriz B:"
        Leer columnas_B
        
        // Validar que las matrices tengan las mismas dimensiones
        Si filas_A <> filas_B O columnas_A <> columnas_B Entonces
            Escribir "Error: Las matrices deben tener las mismas dimensiones para poder sumarlas."
        FinSi
    Hasta QUE filas_A = filas_B Y columnas_A = columnas_B
	
    // Ingreso de la matriz A
    Escribir "Ingrese la matriz A:"
    Para i <- 1 Hasta filas_A Con Paso 1 Hacer
        Para j <- 1 Hasta columnas_A Con Paso 1 Hacer
            Escribir "Ingrese el valor para la posición [", i, ", ", j, "]:"
            Leer matriz_A[i, j]
        FinPara
    FinPara
    
    // Mostrar matriz A
    Escribir "Matriz A ingresada:"
    Para i <- 1 Hasta filas_A Con Paso 1 Hacer
        Para j <- 1 Hasta columnas_A Con Paso 1 Hacer
            Escribir Sin Saltar matriz_A[i, j], " "
        FinPara
        Escribir ""
    FinPara
    
    // Ingreso de la matriz B
    Escribir "Ingrese la matriz B (misma dimensión que A):"
    Para i <- 1 Hasta filas_B Con Paso 1 Hacer
        Para j <- 1 Hasta columnas_B Con Paso 1 Hacer
            Escribir "Ingrese el valor para la posición [", i, ", ", j, "]:"
            Leer matriz_B[i, j]
        FinPara
    FinPara
    
    // Mostrar matriz B
    Escribir "Matriz B ingresada:"
    Para i <- 1 Hasta filas_B Con Paso 1 Hacer
        Para j <- 1 Hasta columnas_B Con Paso 1 Hacer
            Escribir Sin Saltar matriz_B[i, j], " "
        FinPara
        Escribir ""
    FinPara
    
    // Suma de matrices
    Para i <- 1 Hasta filas_A Con Paso 1 Hacer
        Para j <- 1 Hasta columnas_A Con Paso 1 Hacer
            resultado_matriz[i, j] <- matriz_A[i, j] + matriz_B[i, j]
        FinPara
    FinPara
    
    // Mostrar matriz resultado
    Escribir "El resultado de la suma de matrices es:"
    Para i <- 1 Hasta filas_A Con Paso 1 Hacer
        Para j <- 1 Hasta columnas_A Con Paso 1 Hacer
            Escribir Sin Saltar resultado_matriz[i, j], " "
        FinPara
        Escribir ""
    FinPara
    
FinAlgoritmo
