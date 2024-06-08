// versión preliminar
SubProceso suma <- sumar(a,b)
	Definir suma Como Real;
	suma <- a+b;
FinSubProceso

SubProceso resta <- restar(a,b)
	Definir resta Como Real;
	resta <- a-b;
FinSubProceso

SubProceso multiplicacion <- multiplicar(a,b)
	Definir multiplicacion Como Real;
	multiplicacion <- a*b;
FinSubProceso

SubProceso division <- dividir (a,b)
	Definir division Como Real;
	Si b=0 Entonces
		Escribir 'Error: División por cero.';
		division <- -1;
	SiNo
		division <- (a/b);
	FinSi
FinSubProceso

Proceso principal
	Definir a,b,z Como Real;
	Definir suma,resta,division,multiplicacion Como Real;
	Escribir 'Ingrese un numero para realizar una operacion: ';
	Leer a;
	Escribir 'Ingrese un numero para realizar una operacion: ';
	Leer b;
	Repetir
		Escribir "  ";
		Escribir ('=====Menu de ejemplo===');
		Escribir ' Suma (1)';
		Escribir ' Resta (2)';
		Escribir ' Multiplicacion (3)';
		Escribir ' Division (4)';
		Escribir ' Salir (5)';
		Escribir ('=======================');
		Escribir 'Ingrese la operacion que desea realizar con ',a,' y ',b,':';
		Escribir "  ";
		Leer z;
		Segun z  Hacer
			1:
				Escribir "El resultado es: ", sumar(a,b);
			2:
				Escribir "El resultado es: ", restar(a,b);
			3:
				Escribir "El resultado es: ", multiplicar(a,b);
			4:
				Escribir "El resultado es: ", dividir(a,b);
			De Otro Modo:
				Escribir 'Numero erroneo ingresado';
		FinSegun
	
	Hasta Que z=5
FinProceso
