// -- Inicio M�todo de Operaciones B�sicas --
SubProceso operaciones_basicas(valor_opcion Por Valor)
    // Variables locales
    Definir cantidad_numeros, num, resultado, i, resto como Entero;
    Definir cociente, num1, num2 como Real;
    
    // Inicializar el resultado en 0 para suma y multiplicaci�n, 1 para divisi�n (elemento neutro)
    Si valor_opcion = 1 Entonces
        resultado <- 0; // Para suma
    Sino;
        Si valor_opcion = 2 Entonces
            resultado <- 0; // Para resta (no hay elemento neutro, pero se inicializa en 0)
        Sino;
            Si valor_opcion = 3 Entonces
                resultado <- 1; // Para multiplicaci�n (elemento neutro)
            Sino;
                Si valor_opcion = 4 Entonces
                    resultado <- 1; // Para divisi�n (elemento neutro)
                FinSi;
            FinSi;
        FinSi;
    FinSi;
    
    Si valor_opcion <> 4 Entonces
        // Cantidad de n�meros a operar
        Escribir "Ingrese la cantidad de n�meros a operar:";
        Leer cantidad_numeros;
        
        // Operaciones b�sicas (suma, resta, multiplicaci�n)
        Para i <- 1 Hasta cantidad_numeros Hacer
            Escribir "Ingrese el n�mero ", i, ":";
            Leer num;
            
            Si valor_opcion = 1 Entonces
                resultado <- resultado + num; // Suma
            Sino;
                Si valor_opcion = 2 Entonces
                    Si i = 1 Entonces
                        resultado <- num; // Inicializaci�n para la primera resta
                    Sino
                        resultado <- resultado - num; // Resta
                    FinSi;
                Sino;
                    Si valor_opcion = 3 Entonces
                        Si i = 1 Entonces
                            resultado <- num; // Inicializaci�n para la primera multiplicaci�n
                        Sino
                            resultado <- resultado * num; // Multiplicaci�n
                        FinSi;
                    FinSi;
                FinSi;
            FinSi;
        FinPara;
    Sino;
        // Operaci�n de divisi�n
        // Inicializar num2 con 0 para entrar en el bucle
        num2 <- 0;
        Escribir "Ingrese el primer n�mero para la divisi�n:";
        Leer num1;
        // Solicitar el segundo n�mero hasta que sea diferente de cero
        Mientras num2 = 0 Hacer
            Escribir "Ingrese el segundo n�mero para la divisi�n:";
            Leer num2;
            Si num2 = 0 Entonces
                Escribir "Error: no se puede dividir por cero.";
            FinSi;
        FinMientras;
        
        // Realizar la divisi�n
        cociente <- num1 / num2; // Cociente
        resto <- num1 % num2; // Resto de la divisi�n
    FinSi;
    
    // Mostrar resultados seg�n la opci�n seleccionada
	Si valor_opcion = 1 Entonces
		Escribir "La suma de los n�meros ingresados es:", resultado;
	Sino 
		Si valor_opcion = 2 Entonces
			Escribir "La resta de los n�meros ingresados es:", resultado;
		Sino 
			Si valor_opcion = 3 Entonces
				Escribir "El producto de los n�meros ingresados es:", resultado;
			Sino 
				Si valor_opcion = 4 Entonces
					Escribir "El cociente de los n�meros ingresados es:", cociente;
					Escribir "El resto de la divisi�n es:", resto;
				FinSi;
			FinSi;
		FinSi;
	FinSi; 
FinSubProceso
// -- Fin M�todo de Operaciones B�sicas --

// -- Inicio M�todos de Operaciones Cient�ficas --
SubProceso  resultado <- potencia(base, exponente Por Valor)
	Definir resultado Como Real;
    Si exponente = 0 Entonces
        resultado <- 1;
    sino
        resultado <- base * potencia(base, exponente - 1);
    FinSi
FinSubProceso
SubProceso potencia2
	Definir  base, exponente Como Real;
	Repetir
		Escribir "Ingrese la base:";
		Leer base;
		Si base <= 0 Entonces
			Escribir "Error: La base debe ser un n�mero mayor a 0.";
		FinSi;
	Hasta Que base > 0;
	
	Repetir
		Escribir "Ingrese el exponente:";
		Leer exponente;
		Si exponente <= 0 Entonces
			Escribir "Error: El exponente debe ser un n�mero mayor a 0.";
		FinSi;
	Hasta Que exponente > 0;
	
	Escribir "El resultado es ", potencia(base, exponente);
FinSubProceso

SubProceso raiz_cuadrada
	// Variables locales
	Definir num, resultado Como Real;
	
	// Ingreso del n�mero
	Repetir
		Escribir "Ingrese el n�mero para calcular la ra�z cuadrada:";
		Leer num;
		Si num < 0 Entonces
			Escribir "Error: El n�mero debe ser mayor o igual a 0.";
		FinSi;
	Hasta Que num >= 0;
	
	// Calcular la ra�z cuadrada
	resultado <- raiz(num);
	
	// Mostrar el resultado
	Escribir "La ra�z cuadrada de ", num, " es:", resultado;
FinSubProceso

SubProceso logaritmo
    Definir num Como Real;
    // Ingreso del n�mero
    Repetir
        Escribir "Ingrese el n�mero para calcular el Logaritmo Natural: ";
        Leer num;
        Si num <= 0 Entonces
            Escribir "El logaritmo Natural no est� definido para n�meros no positivos.";
        FinSi
    Hasta Que num > 0;
    Escribir "El Logaritmo Natural de ", num, " es: ", ln(num);
FinSubProceso

SubProceso seno
    Definir num Como Real;
    // Ingreso del n�mero
    Escribir "Ingrese el n�mero para calcular el Seno: ";
    Leer num;
    Escribir "El Seno de ", num, " es: ", sen(num);
FinSubProceso

SubProceso coseno
    Definir num Como Real;
    // Ingreso del n�mero
    Escribir "Ingrese el n�mero para calcular el Coseno: ";
    Leer num;
    Escribir "El Coseno de ", num, " es: ", cos(num);
FinSubProceso

SubProceso tangente
    Definir num Como Real;
    // Ingreso del n�mero
    Escribir "Ingrese el n�mero para calcular la Tangente: ";
    Leer num;
    Escribir "La Tangente de ", num, " es: ", tan(num);
FinSubProceso


// -- Fin M�todos de Operaciones Cient�ficas --

// -- Inicio M�todos de Matrices --
// CORREGIR EL METODO PARA CARGAR MATRIZ, NO ESTARIA LEYENDO LA PARTE DE LA MATRIZ POR REFERENCIA
SubProceso carga_matriz(matriz Por Referencia, filas, columnas)
    Definir i, j Como Entero;
    Para i <- 0 Hasta filas - 1 Con Paso 1 Hacer
        Para j <- 0 Hasta columnas - 1 Con Paso 1 Hacer
            Escribir "Ingrese el valor para la posici�n [", i, ", ", j, "]:";
			//CUANDO LEE ESTA PARTE, SE ROMPE EL CODIGO
            Leer matriz[i, j];
        FinPara
    FinPara
FinSubProceso

SubProceso mostrar_matriz(matriz, filas, columnas)
    Para i <- 0 Hasta filas - 1 Con Paso 1 Hacer
        Para j <- 0 Hasta columnas - 1 Con Paso 1 Hacer
            Escribir Sin Saltar matriz[i, j], " ";
        FinPara;
        Escribir "";
    FinPara;
FinSubProceso

SubProceso suma_matriz
    Escribir "Ejecutando Suma de Matrices...";
    Definir filas_A, columnas_A, filas_B, columnas_B, i, j como Entero;
    Dimension matriz_A[100, 100], matriz_B[100, 100], resultado_matriz[100, 100];
	
    Repetir
        Escribir "Ingrese el n�mero de filas de la matriz A:";
        Leer filas_A;
        Escribir "Ingrese el n�mero de columnas de la matriz A:";
        Leer columnas_A;
		
        Escribir "Ingrese el n�mero de filas de la matriz B:";
        Leer filas_B;
        Escribir "Ingrese el n�mero de columnas de la matriz B:";
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
    mostrar_matriz(matriz_A, filas_A, columnas_A);
	
    // Ingreso de la matriz B
    Escribir "Ingrese la matriz B:";
    carga_matriz(matriz_B, filas_B, columnas_B);
	
    // Mostrar matriz B
    Escribir "Matriz B ingresada:";
    mostrar_matriz(matriz_B, filas_B, columnas_B);
	
    // Suma de matrices
    Para i <- 0 Hasta filas_A - 1 Con Paso 1 Hacer
        Para j <- 0 Hasta columnas_A - 1 Con Paso 1 Hacer
            resultado_matriz[i, j] <- matriz_A[i, j] + matriz_B[i, j];
        FinPara;
    FinPara;
	
    // Mostrar matriz resultado
    Escribir "El resultado de la suma de matrices es:";
    mostrar_matriz(resultado_matriz, filas_A, columnas_A);
FinSubProceso

SubProceso resta_matriz
    Escribir "Ejecutando Resta de Matrices...";
    Definir filas_A, columnas_A, filas_B, columnas_B, i, j como Entero;
    Dimension matriz_A[100, 100], matriz_B[100, 100], resultado_matriz[100, 100];
	
    Repetir
        Escribir "Ingrese el n�mero de filas de la matriz A:";
        Leer filas_A;
        Escribir "Ingrese el n�mero de columnas de la matriz A:";
        Leer columnas_A;
		
        Escribir "Ingrese el n�mero de filas de la matriz B:";
        Leer filas_B;
        Escribir "Ingrese el n�mero de columnas de la matriz B:";
        Leer columnas_B;
		
        // Validar que las matrices tengan las mismas dimensiones
        Si filas_A <> filas_B O columnas_A <> columnas_B Entonces
            Escribir "Error: Las matrices deben tener las mismas dimensiones para poder restarlas.";
        FinSi;
    Hasta Que filas_A = filas_B Y columnas_A = columnas_B;
	
    // Ingreso de la matriz A
    Escribir "Ingrese la matriz A:";
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
    Para i <- 0 Hasta filas_A - 1 Con Paso 1 Hacer
        Para j <- 0 Hasta columnas_A - 1 Con Paso 1 Hacer
            resultado_matriz[i, j] <- matriz_A[i, j] - matriz_B[i, j];
        FinPara;
    FinPara;
	
    // Mostrar matriz resultado
    Escribir "El resultado de la resta de matrices es:";
    mostrar_matriz(resultado_matriz, filas_A, columnas_A);
FinSubProceso

SubProceso multiplicacion_matriz
    Escribir "Ejecutando Multiplicaci�n de Matrices...";
    // Variables locales
    Dimension matriz_A[100,100], matriz_B[100,100], resultado_matriz[100,100];
    Definir filas_A, columnas_A, filas_B, columnas_B Como Entero;
    Definir i, j, k Como Entero;
	
    // Entrada de la dimensi�n de la matriz A
    Escribir "Ingrese el n�mero de filas de la primera matriz A:";
    Leer filas_A;
    Escribir "Ingrese el n�mero de columnas de la primera matriz A:";
    Leer columnas_A;
	
    // Entrada de la dimensi�n de la matriz B
    Escribir "Ingrese el n�mero de filas de la segunda matriz B:";
    Leer filas_B;
    Escribir "Ingrese el n�mero de columnas de la segunda matriz B:";
    Leer columnas_B;
	
    // Validaci�n de dimensiones para la multiplicaci�n
    Si columnas_A <> filas_B Entonces
        Escribir "Error: El n�mero de columnas de la primera matriz debe ser igual al n�mero de filas de la segunda matriz.";
    Sino
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
		
        // Inicializaci�n de la matriz resultante
        Para i <- 0 Hasta filas_A - 1 Con Paso 1 Hacer
            Para j <- 0 Hasta columnas_B - 1 Con Paso 1 Hacer
                resultado_matriz[i, j] <- 0;
            FinPara;
        FinPara;
		
        // Multiplicaci�n de matrices
        Para i <- 0 Hasta filas_A - 1 Con Paso 1 Hacer
            Para j <- 0 Hasta columnas_B - 1 Con Paso 1 Hacer
                Para k <- 0 Hasta columnas_A - 1 Con Paso 1 Hacer
                    resultado_matriz[i, j] <- resultado_matriz[i, j] + matriz_A[i, k] * matriz_B[k, j];
                FinPara;
            FinPara;
        FinPara;
		
        // Mostrar matriz resultado
        Escribir "La matriz resultante es:";
        mostrar_matriz(resultado_matriz, filas_A, columnas_B);
    FinSi;
FinSubProceso

SubProceso determinante_matriz
    Escribir "Ejecutando Determinante de Matrices...";
    Escribir "Info >> La regla de Sarrus es un m�todo espec�fico para calcular el determinante de una matriz cuadrada de tama�o 3x3";
    Dimension matriz_A[3,3];
    Definir i, j Como Entero;
    Definir filas, columnas, posicion_1, posicion_2, posicion_3, posicion_4, posicion_5, posicion_6, determinante Como Real;
	
    filas <- 3;
    columnas <- 3;
	
    // Ingreso de la matriz A
    Escribir "Ingrese los elementos de la matriz A:";
    carga_matriz(matriz_A, filas, columnas);
	
    // Mostrar matriz A
    Escribir "La matriz ingresada es: ";
    mostrar_matriz(matriz_A, filas, columnas);
	
    posicion_1 <- matriz_A[0, 0] * matriz_A[1, 1] * matriz_A[2, 2];
    posicion_2 <- matriz_A[1, 0] * matriz_A[2, 1] * matriz_A[0, 2];
    posicion_3 <- matriz_A[2, 0] * matriz_A[0, 1] * matriz_A[1, 2];
    posicion_4 <- matriz_A[0, 2] * matriz_A[1, 1] * matriz_A[2, 0];
    posicion_5 <- matriz_A[1, 2] * matriz_A[2, 1] * matriz_A[0, 0];
    posicion_6 <- matriz_A[2, 2] * matriz_A[0, 1] * matriz_A[1, 0];
	
    determinante <- (posicion_1 + posicion_2 + posicion_3) - (posicion_4 + posicion_5 + posicion_6);
    Escribir "";
    Escribir "La Determinante es:", determinante;
FinSubProceso

SubProceso transpuesta_matriz
    // Variables locales
    Definir filas, columnas como Entero;
    Dimension matriz_original[100, 100], matriz_transpuesta[100, 100];
    Definir i, j como Entero;
	
    // Dimension de la matriz
    Escribir "Ingrese el n�mero de filas de la matriz:";
    Leer filas;
    Escribir "Ingrese el n�mero de columnas de la matriz:";
    Leer columnas;
	
    // Ingreso de la matriz original
    Escribir "Ingrese los elementos de la matriz:";
    carga_matriz(matriz_original, filas, columnas);
	
    // Mostrar la matriz original
    Escribir "Matriz Original:";
    mostrar_matriz(matriz_original, filas, columnas);
	
    // Calcular la transpuesta
    Para i <- 0 Hasta filas - 1 Con Paso 1 Hacer
        Para j <- 0 Hasta columnas - 1 Con Paso 1 Hacer
            matriz_transpuesta[j, i] <- matriz_original[i, j];
        FinPara;
    FinPara;
	
    // Mostrar la matriz transpuesta
    Escribir "Matriz Transpuesta:";
    mostrar_matriz(matriz_transpuesta, columnas, filas); // Invertir filas y columnas
FinSubProceso


// -- Fin M�todos de Matrices --

Proceso PRINCIPAL
	Definir puerta Como Logico;
    Definir opcion, subopcion Como Entero;
    Definir seguir Como Caracter;
	
	Escribir "Bienvenido a la aplicaci�n de Calculadora Cient�fica";
	
    seguir <- "S";
    Mientras seguir = "S" Hacer
        // Mostrar el men� principal
        Escribir "1. Operaciones B�sicas";
        Escribir "2. Operaciones Cient�ficas";
        Escribir "3. Operaciones de Matrices";
        Escribir "4. Salir";
        Escribir "Seleccione una opci�n: ";
        Leer opcion;
		
        Segun opcion Hacer
            Caso 1:
                // Submen� de Operaciones B�sicas
                Escribir "Operaciones B�sicas";
                Escribir "1. Suma";
                Escribir "2. Resta";
                Escribir "3. Multiplicaci�n";
                Escribir "4. Divisi�n";
                Escribir "Seleccione una operaci�n: ";
                Leer subopcion;
				
                Segun subopcion Hacer
                    Caso 1:
                        // SUMA
                        Escribir "Ejecutando Suma...";
						operaciones_basicas(subopcion);
						
                    Caso 2:
                        // RESTA
						Escribir "Ejecutando Resta...";
                        operaciones_basicas(subopcion);
                    Caso 3:
                        // MULTIPLICACI�N
                        Escribir "Ejecutando Multiplicaci�n...";
						operaciones_basicas(subopcion);
                    Caso 4:
                        // DIVISI�N
                        Escribir "Ejecutando Divisi�n...";
						operaciones_basicas(subopcion);
                    De Otro Modo:
                        Escribir "Opci�n no v�lida";
                FinSegun
				
            Caso 2:
                // Submen� de Operaciones Cient�ficas
                Escribir "Operaciones Cient�ficas";
                Escribir "1. Potencia";
                Escribir "2. Ra�z Cuadrada";
                Escribir "3. Logaritmo";
                Escribir "4. Seno";
                Escribir "5. Coseno";
                Escribir "6. Tangente";
                Escribir "Seleccione una operaci�n: ";
                Leer subopcion;
				
                Segun subopcion Hacer
					Caso 1:
						// POTENCIA
						Escribir  "Ejecutando Potencia...";
						potencia2;
                    Caso 2:
                        // RAIZ
                        Escribir "Ejecutando Ra�z Cuadrada...";
						raiz_cuadrada;
                    Caso 3:
                        // LOG
                        Escribir "Ejecutando Logaritmo...";
						logaritmo;
                    Caso 4:
                        // SENO
                        Escribir "Ejecutando Seno...";
						seno;
                    Caso 5:
                        // COS
                        Escribir "Ejecutando Coseno...";
						coseno;
                    Caso 6:
                        // TAN
                        Escribir "Ejecutando Tangente...";
						tangente;
                    De Otro Modo:
                        Escribir "Opci�n no v�lida";
                FinSegun
				
            Caso 3:
                // Submen� de Operaciones de Matrices
                Escribir "Operaciones de Matrices";
                Escribir "1. Suma";
                Escribir "2. Resta";
                Escribir "3. Multiplicaci�n";
                Escribir "4. Determinante";
                Escribir "5. Transposici�n";
                Escribir "Seleccione una operaci�n: ";
                Leer subopcion;
				
                Segun subopcion Hacer
                    Caso 1:
                        // SUMA MATRIZ
						suma_matriz;
                    Caso 2:
                        // RESTA MATRIZ
						resta_matriz;
                    Caso 3:
                        // MULTIPLICACI�N MATRIZ
						multiplicacion_matriz;
                    Caso 4:
                        // DETERMINANTE MATRIZ
						determinante_matriz;
                    Caso 5:
                        // TRANSPUESTA DE UNA MATRIZ
						transpuesta_matriz;
                    De Otro Modo:
                        Escribir "Opci�n no v�lida";
                FinSegun
				
            Caso 4:
                Escribir "Saliendo...";
                seguir <- "N";
            De Otro Modo:
                Escribir "Opci�n no v�lida";
        FinSegun
		
        Si opcion <> 4 Entonces
            Escribir "�Desea realizar otra operaci�n? (S/N): ";
            Leer seguir;
			seguir<-Mayusculas(seguir);
			
			Si seguir = "N" Entonces
				Escribir "Saliendo del programa...";
			SiNo
				Si seguir = "S" Entonces
					Escribir "Redirigiendo al men�...";
				SiNo
					Escribir "Opci�n no v�lida, redirigiendo al men� principal...";
					seguir <- "S";
				FinSi
			FinSi
        FinSi
    FinMientras
FinProceso