Algoritmo matriz_transpuesta
    Definir M, N como Entero
    Dimension a[100, 100]
    Dimension b[100, 100]
    Escribir "Ingrese las dimensiones de la matriz original:"
    Leer M, N

    Para i <- 1 Hasta M Hacer
        Para j <- 1 Hasta N Hacer
            Escribir "Ingrese el numero en la fila ", i, " y columna ", j, ": "
            Leer a[i, j]
        FinPara
    FinPara

	Escribir "La matriz ingresada es: "
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir ""
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir Sin Saltar a[i,j], " "
        FinPara
    FinPara
    Escribir ""

    Para i <- 1 Hasta N Hacer
        Para j <- 1 Hasta M Hacer
            b[i, j] <- a[j, i]
        FinPara
    FinPara

    Escribir "La matriz transpuesta es:"
    Para i <- 1 Hasta N Hacer
		Escribir ""
        Para j <- 1 Hasta M Hacer
            Escribir Sin Saltar b[i, j], " "
        FinPara
    FinPara
FinAlgoritmo
