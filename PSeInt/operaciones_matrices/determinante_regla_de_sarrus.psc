Algoritmo determinante_regla_de_sarrus

    Dimension A(3,3)
    Definir i, j Como Entero
    Definir posicion_1, posicion_2, posicion_3, posicion_4, posicion_5, posicion_6 Como Real
    Definir determinante Como Real

    i <- 0
    j <- 0

    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "Ingrese el numero en la fila ", i, " y columna ", j, ": "
            Leer A[i,j]
        FinPara
    FinPara

    Escribir "La matriz ingresada es: "
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir ""
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir Sin Saltar A[i,j], " "
        FinPara
    FinPara
    Escribir ""

    posicion_1 <- A[1,1]*A[2,2]*A[3,3]
    posicion_2 <- A[2,1]*A[3,2]*A[1,3]
    posicion_3 <- A[3,1]*A[1,2]*A[2,3]
    posicion_4 <- A[1,3]*A[2,2]*A[3,1]
    posicion_5 <- A[2,3]*A[3,2]*A[1,1]
    posicion_6 <- A[3,3]*A[1,2]*A[2,1]

    Determinante <- (posicion_1 + posicion_2 + posicion_3) - (posicion_4 + posicion_5 + posicion_6)
	Escribir ""
    Escribir "La Determinante es:", determinante
FinAlgoritmo
