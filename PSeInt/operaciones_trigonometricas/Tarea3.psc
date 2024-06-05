Proceso Tarea3
    Definir numero Como Real;
    Definir opcion Como Entero;
    
    Escribir "Logaritmos y Funciones Trigonom�tricas";
    Escribir "�Qu� desea calcular?";
    Escribir "1. Logaritmo";
    Escribir "2. Seno";
    Escribir "3. Coseno";
    Escribir "4. Tangente";
    Escribir "Ingrese una opci�n (1-4): ";
    Leer opcion;
    Escribir "Ingrese un n�mero: ";
    Leer numero;
    
    Segun opcion Hacer
        Caso 1:
            Logaritmo(numero);
        Caso 2:
            CalcularSeno(numero);
        Caso 3:
            CalcularCoseno(numero);
        Caso 4:
            CalcularTangente(numero);
        De Otro Modo:
            Escribir "Opci�n no v�lida.";
    FinSegun
FinProceso

SubProceso Logaritmo(numero)
    Si numero > 0 Entonces
        Escribir "Logaritmo: ", ln(numero);
    SiNo
        Escribir "El logaritmo natural no est� definido para n�meros no positivos.";
    FinSi
FinSubProceso

SubProceso CalcularSeno(numero)
    Escribir "Seno: ", sen(numero);
FinSubProceso

SubProceso CalcularCoseno(numero)
    Escribir "Coseno: ", cos(numero);
FinSubProceso

SubProceso CalcularTangente(numero)
    Escribir "Tangente: ", tan(numero);
FinSubProceso
