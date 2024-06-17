// -- Inicio Método de Operaciones Básicas --
SubProceso operaciones_basicas(valor_opcion Por Valor)
	// Variables locales
	Definir cantidad_numeros, num, resultado, i, resto como Entero;
	Definir cociente, num1, num2 como Real;

	// Inicializar el resultado en 0 para suma y multiplicación, 1 para división (elemento neutro)
	Si valor_opcion = 1 Entonces
		resultado <- 0; // Para suma
	Sino;
		Si valor_opcion = 2 Entonces
			resultado <- 0; // Para resta (no hay elemento neutro, pero se inicializa en 0)
		Sino;
			Si valor_opcion = 3 Entonces
				resultado <- 1; // Para multiplicación (elemento neutro)
			Sino;
				Si valor_opcion = 4 Entonces
					resultado <- 1; // Para división (elemento neutro)
				FinSi;
			FinSi;
		FinSi;
	FinSi;

	Si valor_opcion <> 4 Entonces
		// Cantidad de números a operar
		Escribir "Ingrese la cantidad de números a operar:";
		Leer cantidad_numeros;
		Para i <- 1 Hasta cantidad_numeros Hacer
			Escribir "Ingrese el número ", i, ":";
			Leer num;
			Si valor_opcion = 1 Entonces
				resultado <- resultado + num; // Suma
			Sino;
				Si valor_opcion = 2 Entonces
					resultado <- resultado - num; // Resta
				Sino;
					Si valor_opcion = 3 Entonces
						resultado <- resultado * num; // Multiplicación
					FinSi;
				FinSi;
			FinSi;
		FinPara;
	Sino;
		// Operación de división
		// Inicializar num2 con 0 para entrar en el bucle
        num2 <- 0;
		Escribir "Ingrese el primer número para la división:";
		Leer num1;
        // Solicitar el segundo número hasta que sea diferente de cero
        Mientras num2 = 0 Hacer
            Escribir "Ingrese el segundo número para la división:";
            Leer num2;
            Si num2 = 0 Entonces
                Escribir "Error: no se puede dividir por cero.";
            FinSi;
        FinMientras;

        // Realizar la división
        cociente <- num1 / num2; // Cociente
        resto <- num1 % num2; // Resto de la división
	FinSi;

	Si valor_opcion = 1 Entonces
		// Mostrar la suma
		Escribir "La suma de los números ingresados es:", resultado;
	Sino;
		Si valor_opcion = 2 Entonces
			// Mostrar la resta
			Escribir "La resta de los números ingresados es:", resultado;
		Sino;
			Si valor_opcion = 3 Entonces
				// Mostrar la multiplicación
				Escribir "El producto de los números ingresados es:", resultado;
			Sino;
				Si valor_opcion = 4 Entonces
					// Mostrar el cociente
					Escribir "El cociente de los números ingresados es:", cociente;
					// Mostrar el resto
					Escribir "El resto de la división es:", resto;
				FinSi;
			FinSi;
		FinSi;
	FinSi;
FinSubProceso
// -- Fin Método de Operaciones Básicas --

// -- Inicio Métodos de Operaciones Científicas --
SubProceso potencia
	// Variables locales
	Definir base, exponente, resultado Como Real;
	
	// Ingreso de la base
	Escribir "Ingrese la base:";
	Leer base;
	
	// Ingreso del exponente
	Escribir "Ingrese el exponente:";
	Leer exponente;
	
	// Calcular la potencia
	resultado <- base^exponente;
	
	// Mostrar el resultado
	Escribir "El resultado de la potencia es:", resultado;
FinSubProceso

SubProceso raiz_cuadrada
	// Variables locales
	Definir numero, resultado Como Real;
	
	// Ingreso del número
	Escribir "Ingrese el número:";
	Leer numero;
	
	// Calcular la raíz cuadrada
	resultado <- raiz(numero);
	
	// Mostrar el resultado
	Escribir "La raíz cuadrada de ", numero, " es:", resultado;
FinSubProceso	
// -- Fin Métodos de Operaciones Científicas --

// -- Inicio Métodos de Matrices --
SubProceso carga_matriz(matriz, filas, columnas Por Referencia)
	Para i <- 1 Hasta filas Con Paso 1 Hacer;
		Para j <- 1 Hasta columnas Con Paso 1 Hacer;
			Escribir "Ingrese el valor para la posicion [", i, ", ", j, "]:";
			Leer matriz[i, j];
		FinPara;
	FinPara;
FinSubProceso

SubProceso mostrar_matriz(matriz, filas, columnas Por Referencia)
	Para i <- 1 Hasta filas Con Paso 1 Hacer;
		Para j <- 1 Hasta columnas Con Paso 1 Hacer;
			Escribir Sin Saltar matriz[i, j], " ";
		FinPara;
		Escribir "";
	FinPara;
FinSubProceso

SubProceso suma_matriz(parametro por valor)
	Escribir "Ejecutando Suma de Matrices...";
	Definir filas_A, columnas_A, filas_B, columnas_B, i, j como Entero;
	Dimension matriz_A[100, 100], matriz_B[100, 100], resultado_matriz[100, 100];

	Repetir;
		Escribir "Ingrese el número de filas de la matriz A:";
		Leer filas_A;
		Escribir "Ingrese el número de columnas de la matriz A:";
		Leer columnas_A;

		Escribir "Ingrese el número de filas de la matriz B:";
		Leer filas_B;
		Escribir "Ingrese el número de columnas de la matriz B:";
		Leer columnas_B;

		// Validar que las matrices tengan las mismas dimensiones
		Si filas_A <> filas_B O columnas_A <> columnas_B Entonces
			Escribir "Error: Las matrices deben tener las mismas dimensiones para poder sumarlas.";
		FinSi;
	Hasta Que filas_A = filas_B Y columnas_A = columnas_B;

	// Ingreso de la matriz A
	Escribir "Ingrese la matriz A:";
	carga_matriz(matriz_A, filas_A, columnas_A);

	// Mostrar matriz A
	Escribir "Matriz A ingresada:";
	mostrar_matriz(matriz_A, filas_A, filas_B);

	// Ingreso de la matriz B
	carga_matriz(matriz_B, filas_B, columnas_B);

	// Mostrar matriz B
	Escribir "Matriz B ingresada:";
	mostrar_matriz(matriz_B, filas_B, columnas_B);

	// Suma de matrices
	Para i <- 1 Hasta filas_A Con Paso 1 Hacer;
		Para j <- 1 Hasta columnas_A Con Paso 1 Hacer;
			resultado_matriz[i, j] <- matriz_A[i, j] + matriz_B[i, j];
		FinPara;
	FinPara;

	// Mostrar matriz resultado
	Escribir "El resultado de la suma de matrices es:";
	mostrar_matriz(resultado_matriz, filas_A, filas_B);
FinSubProceso

SubProceso resta_matriz(parametro Por Valor)
	Escribir "Ejecutando Resta de Matrices...";
	Definir filas_A, columnas_A, filas_B, columnas_B, i, j como Entero;
	Dimension matriz_A[100, 100], matriz_B[100, 100], resultado_matriz[100, 100];

	Repetir;
		Escribir "Ingrese el número de filas de la matriz A:";
		Leer filas_A;
		Escribir "Ingrese el número de columnas de la matriz A:";
		Leer columnas_A;

		Escribir "Ingrese el número de filas de la matriz B:";
		Leer filas_B;
		Escribir "Ingrese el número de columnas de la matriz B:";
		Leer columnas_B;

		// Validar que las matrices tengan las mismas dimensiones
		Si filas_A <> filas_B O columnas_A <> columnas_B Entonces
			Escribir "Error: Las matrices deben tener las mismas dimensiones para poder restarlas.";
		FinSi;
	Hasta QUE filas_A = filas_B Y columnas_A = columnas_B;

	// Ingreso de la matriz A
	carga_matriz(matriz_A, filas_A, columnas_A);

	// Mostrar matriz A
	Escribir "Matriz A ingresada:";
	mostrar_matriz(matriz_A, filas_A, columnas_A);

	// Ingreso de la matriz B
	Escribir "Ingrese la matriz B:";
	carga_matriz(matriz_B, filas_B, columnas_B);

	// Mostrar matriz B
	Escribir "Matriz B ingresada:";
	mostrar_matriz(matriz_B, filas_B, columnas_B);

	// Resta de matrices
	Para i <- 1 Hasta filas_A Con Paso 1 Hacer;
		Para j <- 1 Hasta columnas_A Con Paso 1 Hacer;
			resultado_matriz[i, j] <- matriz_A[i, j] - matriz_B[i, j];
		FinPara;
	FinPara;

	// Mostrar matriz resultado
	Escribir "El resultado de la resta de matrices es:";
	mostrar_matriz(resultado_matriz, filas_A, columnas_A);

FinSubProceso

SubProceso multiplicacion_matriz(parametro Por Valor)
	Escribir "Ejecutando Multiplicación de Matrices...";
	// Variables locales
	Dimension matriz_A[100,100], matriz_B[100,100], resultado_matriz[100,100];
	Definir filas_A, columnas_A, filas_B, columnas_B Como Entero;
	Definir i, j, k Como Entero;

	// Entrada de la dimensión de la matriz A
	Escribir "Ingrese el número de filas de la primera matriz A:";
	Leer filas_A;
	Escribir "Ingrese el número de columnas de la primera matriz A:";
	Leer columnas_A;

	// Entrada de la dimensión de la matriz B
	Escribir "Ingrese el número de filas de la segunda matriz B:";
	Leer filas_B;
	Escribir "Ingrese el número de columnas de la segunda matriz B:";
	Leer columnas_B;

	// Validación de dimensiones para la multiplicación
	Si columnas_A <> filas_B Entonces
		Escribir "Error: El número de columnas de la primera matriz debe ser igual al número de filas de la segunda matriz.";
	Sino;
		Escribir "El número de columnas de la primera matriz es igual al número de filas de la segunda matriz.";
	FinSi;

	// Ingreso de la matriz A
	Escribir "Ingrese los elementos de la matriz A:";
	carga_matriz(matriz_A, filas_A, columnas_A);

	// Mostrar matriz A
	Escribir "Matriz A ingresada:";
	mostrar_matriz(matriz_A, filas_A, columnas_A);

	// Ingreso de la matriz B
	Escribir "Ingrese los elementos de la matriz B:";
	carga_matriz(matriz_B, filas_B, columnas_B);

	// Mostrar matriz B
	Escribir "Matriz B ingresada:";
	mostrar_matriz(matriz_B, filas_B, columnas_B);

	// Inicialización de la matriz resultante
	Para i <- 1 Hasta filas_A Con Paso 1 Hacer;
		Para j <- 1 Hasta columnas_B Con Paso 1 Hacer;
			resultado_matriz[i, j] <- 0;
		FinPara;
	FinPara;

	// Multiplicación de matrices
	Para i <- 1 Hasta filas_A Con Paso 1 Hacer;
		Para j <- 1 Hasta columnas_B Con Paso 1 Hacer;
			Para k <- 1 Hasta columnas_A Con Paso 1 Hacer;
				resultado_matriz[i, j] <- resultado_matriz[i, j] + matriz_A[i, k] * matriz_B[k, j];
			FinPara;
		FinPara;
	FinPara;

	// Mostrar matriz resultado
	Escribir "La matriz resultante es:";
	mostrar_matriz(resultado_matriz, filas_A, columnas_B);

FinSubProceso

SubProceso determinante_matriz(parametro Por Valor)
	Escribir "Ejecutando Determinante de Matrices...";
	Escribir "Info >> La regla de Sarrus es un método específico para calcular el determinante de una matriz cuadrada de tamaño 3x3";
	Dimension matriz_A(3,3);
	Definir i, j Como Entero;
	Definir filas, columnas, posicion_1, posicion_2, posicion_3, posicion_4, posicion_5, posicion_6, determinante Como Real;

	filas <- 3;
	columnas <- 3;

	i <- 0;
	j <- 0;

	// Ingreso de la matriz A
	carga_matriz(matriz_A, filas, columnas);

	// Mostrar matriz A
	Escribir "La matriz ingresada es: ";
	mostrar_matriz(matriz_A, filas, columnas);

	posicion_1 <- matriz_A[1,1]*matriz_A[2,2]*matriz_A[3,3];
	posicion_2 <- matriz_A[2,1]*matriz_A[3,2]*matriz_A[1,3];
	posicion_3 <- matriz_A[3,1]*matriz_A[1,2]*matriz_A[2,3];
	posicion_4 <- matriz_A[1,3]*matriz_A[2,2]*matriz_A[3,1];
	posicion_5 <- matriz_A[2,3]*matriz_A[3,2]*matriz_A[1,1];
	posicion_6 <- matriz_A[3,3]*matriz_A[1,2]*matriz_A[2,1];

	Determinante <- (posicion_1 + posicion_2 + posicion_3) - (posicion_4 + posicion_5 + posicion_6);
	Escribir "";
	Escribir "La Determinante es:", determinante;
FinSubProceso

SubProceso transpuesta_matriz(parametro Por Valor)
	// Variables locales
    Definir filas, columnas como Entero;
    Dimension matriz_original[100, 100], matriz_transpuesta[100, 100];
    Definir i, j como Entero;

    // Dimension de la matriz
    Escribir "Ingrese el número de filas de la matriz:";
    Leer filas;
    Escribir "Ingrese el número de columnas de la matriz:";
    Leer columnas;

    Escribir "Ingrese los elementos de la matriz:";
	Para i <- 1 Hasta filas Hacer;
		Para j <- 1 Hasta columnas Hacer;
			Escribir "Ingrese el valor para la posicion [", i, ", ", j, "]:";
			Leer matriz_original[i, j];
		FinPara;
	FinPara;

	// Ingreso de la matriz original
	carga_matriz(matriz_original, filas, columnas);

	// Mostrar la matriz original
    Escribir "Matriz Original:";
	mostrar_matriz(matriz_original, filas, columnas);

    // Calcular la transpuesta
    Para i <- 1 Hasta filas Hacer
        Para j <- 1 Hasta columnas Hacer
            matriz_transpuesta[j, i] <- matriz_original[i, j];
        FinPara
    FinPara

	// Mostrar la matriz transpuesta
    Escribir "Matriz Transpuesta:";
	mostrar_matriz(matriz_transpuesta, filas, columnas);

FinSubProceso

// -- Fin Métodos de Matrices --

Proceso PRINCIPAL
	Definir puerta Como Logico;
    Definir opcion, subopcion Como Entero;
    Definir seguir Como Caracter;

	Escribir "Bienvenido a la aplicación de Calculadora Científica";

    seguir <- "S";
    Mientras seguir = "S" Hacer
        // Mostrar el menú principal
        Escribir "1. Operaciones Básicas";
        Escribir "2. Operaciones Científicas";
        Escribir "3. Operaciones de Matrices";
        Escribir "4. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;

        Segun opcion Hacer
            Caso 1:
                // Submenú de Operaciones Básicas
                Escribir "Operaciones Básicas";
                Escribir "1. Suma";
                Escribir "2. Resta";
                Escribir "3. Multiplicación";
                Escribir "4. División";
                Escribir "Seleccione una operación: ";
                Leer subopcion;

                Segun subopcion Hacer
                    Caso 1:
                        // SUMA
                        Escribir "Ejecutando Suma...";
						operaciones_basicas(subopcion);

                    Caso 2:
                        // RESTA
                        operaciones_basicas(subopcion);
                    Caso 3:
                        // MULTIPLICACIÓN
                        Escribir "Ejecutando Multiplicación...";
						operaciones_basicas(subopcion);
                    Caso 4:
                        // DIVISIÓN
                        Escribir "Ejecutando División...";
						operaciones_basicas(subopcion);
                    De Otro Modo:
                        Escribir "Opción no válida";
                FinSegun

            Caso 2:
                // Submenú de Operaciones Científicas
                Escribir "Operaciones Científicas";
                Escribir "1. Potencia";
                Escribir "2. Raíz Cuadrada";
                Escribir "3. Logaritmo";
                Escribir "4. Seno";
                Escribir "5. Coseno";
                Escribir "6. Tangente";
                Escribir "Seleccione una operación: ";
                Leer subopcion;

                Segun subopcion Hacer
                    Caso 1:
                        // POTENCIA
                        Escribir "Ejecutando Potencia...";
						potencia;
                    Caso 2:
                        // RAIZ
                        Escribir "Ejecutando Raíz Cuadrada...";
						raiz_cuadrada;
                    Caso 3:
                        // LOG
                        Escribir "Ejecutando Logaritmo...";
                    Caso 4:
                        // SENO
                        Escribir "Ejecutando Seno...";
                    Caso 5:
                        // COS
                        Escribir "Ejecutando Coseno...";
                    Caso 6:
                        // TAN
                        Escribir "Ejecutando Tangente...";
                    De Otro Modo:
                        Escribir "Opción no válida";
                FinSegun

            Caso 3:
                // Submenú de Operaciones de Matrices
                Escribir "Operaciones de Matrices";
                Escribir "1. Suma";
                Escribir "2. Resta";
                Escribir "3. Multiplicación";
                Escribir "4. Determinante";
                Escribir "5. Transposición";
                Escribir "Seleccione una operación: ";
                Leer subopcion;

                Segun subopcion Hacer
                    Caso 1:
                        // SUMA MATRIZ
						suma_matriz(arg);
                    Caso 2:
                        // RESTA MATRIZ
						resta_matriz(arg);
                    Caso 3:
                        // MULTIPLICACIÓN MATRIZ
						multiplicacion_matriz(arg);
                    Caso 4:
                        // DETERMINANTE MATRIZ
						determinante_matriz(arg);
                    Caso 5:
                        // TRANSPUESTA DE UNA MATRIZ
						transpuesta_matriz(arg);
                    De Otro Modo:
                        Escribir "Opción no válida";
                FinSegun

            Caso 4:
                Escribir "Saliendo...";
                seguir <- "N";
            De Otro Modo:
                Escribir "Opción no válida";
        FinSegun

        Si opcion <> 4 Entonces
            Escribir "¿Desea realizar otra operación? (S/N): ";
            Leer seguir;
			seguir<-Mayusculas(seguir);
			
			Si seguir = "N" Entonces
				Escribir "Saliendo del programa...";
			SiNo
				Si seguir = "S" Entonces
					Escribir "Redirigiendo al menú...";
				SiNo
					Escribir "Opción no válida, redirigiendo al menú principal...";
					seguir <- "S";
				FinSi
			FinSi
        FinSi
    FinMientras
FinProceso