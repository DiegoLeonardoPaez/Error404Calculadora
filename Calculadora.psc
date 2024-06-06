//Operaciones B�sicas: Suma, Resta, Multiplicaci�n y Divisi�n.
//Operaciones Cient�ficas: Potencia, Ra�z Cuadrada, Logaritmo, Seno, Coseno, Tangente.
//Operaciones de Matrices: Suma, Resta, Multiplicaci�n, Determinante y Transposici�n.

//Tarea 1: Suma, Resta, Multiplicaci�n y Divisi�n.
//Tarea 2: Potencia (usar recursividad) y Ra�z Cuadrada.
//Tarea 3: Logaritmo y Funciones Trigonom�tricas (Seno, Coseno, Tangente).
//Tarea 4: Operaciones de Matrices: Inicializaci�n y Entrada de Matrices.
//	Tarea 5: Suma y Resta de Matrices.
//	Tarea 6: Multiplicaci�n de Matrices.
//	Tarea 7: Determinante de una Matriz.
//	Tarea 9: Transposici�n de Matrices.
//	Tarea 10: Men� Principal y L�gica del Programa.
Proceso Calculadora
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
                        // Llamado a m�todo SUMA
                        Escribir "Ejecutando Suma...";
                    Caso 2:
                        // Llamado a m�todo RESTA
                        Escribir "Ejecutando Resta...";
                    Caso 3:
                        // Llamado a m�todo MULTI
                        Escribir "Ejecutando Multiplicaci�n...";
                    Caso 4:
                        // Llamado a m�todo DIV
                        Escribir "Ejecutando Divisi�n...";
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
                        // Llamado a m�todo POTENCIA
                        Escribir "Ejecutando Potencia...";
                    Caso 2:
                        // Llamado a m�todo RAIZ
                        Escribir "Ejecutando Ra�z Cuadrada...";
                    Caso 3:
                        // Llamado a m�todo LOG
                        Escribir "Ejecutando Logaritmo...";
                    Caso 4:
                        // Llamado a m�todo SENO
                        Escribir "Ejecutando Seno...";
                    Caso 5:
                        // Llamado a m�todo COS
                        Escribir "Ejecutando Coseno...";
                    Caso 6:
                        // Llamado a m�todo TAN
                        Escribir "Ejecutando Tangente...";
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
                        // Llamado a m�todo SUMAMATRIZ
                        Escribir "Ejecutando Suma de Matrices...";
                    Caso 2:
                        // Llamado a m�todo RESTAMATRIZ
                        Escribir "Ejecutando Resta de Matrices...";
                    Caso 3:
                        // Llamado a m�todo MULTIMATRIZ
                        Escribir "Ejecutando Multiplicaci�n de Matrices...";
                    Caso 4:
                        // Llamado a m�todo DETMATRIZ
                        Escribir "Ejecutando Determinante de Matrices...";
                    Caso 5:
                        // Llamado a m�todo TRANSPMATRIZ
                        Escribir "Ejecutando Transposici�n de Matrices...";
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
			Si seguir = "S" Entonces
				Escribir "Redirigiendo al men�...";
			FinSi
			Si seguir = "N" Entonces
				Escribir "Saliendo del programa...";
			SiNo
				Escribir "Opci�n no v�lida, redirigiendo al men� principal...";
				seguir <- "S";
			FinSi
        FinSi
    FinMientras
FinProceso
