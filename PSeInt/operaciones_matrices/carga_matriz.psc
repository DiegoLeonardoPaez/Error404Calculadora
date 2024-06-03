Proceso carga_matriz
	// Imp: Falta agregar un paso de validación de datos, para que solo se ingrese numeros

    Definir filas, columnas, i, j Como Entero
    Definir matriz Como Entero

    Escribir "Ingrese el número de filas:"
    Leer filas
    Escribir "Ingrese el número de columnas:"
    Leer columnas

    Dimension matriz[filas, columnas]

    Para i <- 1 Hasta filas Con Paso 1 Hacer
        Para j <- 1 Hasta columnas Con Paso 1 Hacer
            Escribir "Ingrese el valor para la posición [", i, ", ", j, "]:"
            Leer matriz[i, j]
        FinPara
    FinPara

    Escribir "La matriz ingresada es:"
    Para i <- 1 Hasta filas Con Paso 1 Hacer
        Para j <- 1 Hasta columnas Con Paso 1 Hacer
            Escribir Sin Saltar matriz[i, j], " "
        FinPara
        Escribir ""
    FinPara
FinProceso
