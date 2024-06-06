//Operaciones Básicas: Suma, Resta, Multiplicación y División.
//Operaciones Científicas: Potencia, Raíz Cuadrada, Logaritmo, Seno, Coseno, Tangente.
//Operaciones de Matrices: Suma, Resta, Multiplicación, Determinante y Transposición.

//Tarea 1: Suma, Resta, Multiplicación y División.
//Tarea 2: Potencia (usar recursividad) y Raíz Cuadrada.
//Tarea 3: Logaritmo y Funciones Trigonométricas (Seno, Coseno, Tangente).
//Tarea 4: Operaciones de Matrices: Inicialización y Entrada de Matrices.
//	Tarea 5: Suma y Resta de Matrices.
//	Tarea 6: Multiplicación de Matrices.
//	Tarea 7: Determinante de una Matriz.
//	Tarea 9: Transposición de Matrices.
//	Tarea 10: Menú Principal y Lógica del Programa.
Proceso Calculadora
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
                        // Llamado a método SUMA
                        Escribir "Ejecutando Suma...";
                    Caso 2:
                        // Llamado a método RESTA
                        Escribir "Ejecutando Resta...";
                    Caso 3:
                        // Llamado a método MULTI
                        Escribir "Ejecutando Multiplicación...";
                    Caso 4:
                        // Llamado a método DIV
                        Escribir "Ejecutando División...";
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
                        // Llamado a método POTENCIA
                        Escribir "Ejecutando Potencia...";
                    Caso 2:
                        // Llamado a método RAIZ
                        Escribir "Ejecutando Raíz Cuadrada...";
                    Caso 3:
                        // Llamado a método LOG
                        Escribir "Ejecutando Logaritmo...";
                    Caso 4:
                        // Llamado a método SENO
                        Escribir "Ejecutando Seno...";
                    Caso 5:
                        // Llamado a método COS
                        Escribir "Ejecutando Coseno...";
                    Caso 6:
                        // Llamado a método TAN
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
                        // Llamado a método SUMAMATRIZ
                        Escribir "Ejecutando Suma de Matrices...";
                    Caso 2:
                        // Llamado a método RESTAMATRIZ
                        Escribir "Ejecutando Resta de Matrices...";
                    Caso 3:
                        // Llamado a método MULTIMATRIZ
                        Escribir "Ejecutando Multiplicación de Matrices...";
                    Caso 4:
                        // Llamado a método DETMATRIZ
                        Escribir "Ejecutando Determinante de Matrices...";
                    Caso 5:
                        // Llamado a método TRANSPMATRIZ
                        Escribir "Ejecutando Transposición de Matrices...";
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
			Si seguir = "S" Entonces
				Escribir "Redirigiendo al menú...";
			FinSi
			Si seguir = "N" Entonces
				Escribir "Saliendo del programa...";
			SiNo
				Escribir "Opción no válida, redirigiendo al menú principal...";
				seguir <- "S";
			FinSi
        FinSi
    FinMientras
FinProceso
