package proyecto_final;

import java.util.Scanner;

public class InterfazUsuario {
    private final Calculadora calculadora;
    private final Scanner escaner;

    public InterfazUsuario(Calculadora calculadora) {
        this.calculadora = calculadora;
        this.escaner = new Scanner(System.in);
    }

    public void ejecutar() {
        while (true) {
            mostrarMenu();
            int eleccion = obtenerEntradaEntera("Ingrese su elección (0 para salir): ");
            if (eleccion == 0) {
                System.out.println("Gracias por usar la calculadora");
                break;
            }
            if (eleccion < 1 || eleccion > 18) {
                System.out.println("Elección no válida. Intente de nuevo");
                continue;
            }
            Operacion operacion = Operacion.values()[eleccion - 1];
            try {
                double resultado;
                if (operacion == Operacion.PORCENTAJE) {
                    double a = obtenerEntradaDoble("Ingrese el número: ");
                    double b = obtenerEntradaDoble("Ingrese el porcentaje: ");
                    resultado = calculadora.calcular(a, b, operacion);
                } else if (necesitaDosOperandos(operacion)) {
                    double a = obtenerEntradaDoble("Ingrese el primer número: ");
                    double b = obtenerEntradaDoble("Ingrese el segundo número: ");
                    resultado = calculadora.calcular(a, b, operacion);
                } else {
                    double a = obtenerEntradaDoble("Ingrese el número: ");
                    resultado = calculadora.calcular(a, operacion);
                }
                System.out.printf("Resultado: %.4f%n", resultado);
            } catch (ArithmeticException | IllegalArgumentException e) {
                System.out.println("Error: " + e.getMessage());
            }
        }
        escaner.close();
    }

    private void mostrarMenu() {
        System.out.println("\n===== Menú =====");
        System.out.println("Operaciones aritméticas básicas:");
        System.out.println("  1. Suma (+)");
        System.out.println("  2. Resta (-)");
        System.out.println("  3. Multiplicación (*)");
        System.out.println("  4. División (/)");
        System.out.println("Operaciones avanzadas:");
        System.out.println("  5. Módulo/Resto (%)");
        System.out.println("  6. Potencia (^)");
        System.out.println("  7. Raíz cuadrada");
        System.out.println("  8. Valor absoluto");
        System.out.println("Funciones trigonométricas:");
        System.out.println("  9. Seno (sin)");
        System.out.println("  10. Coseno (cos)");
        System.out.println("  11. Tangente (tan)");
        System.out.println("Funciones logarítmicas:");
        System.out.println("  12. Logaritmo natural (ln)");
        System.out.println("  13. Logaritmo común (log10)");
        System.out.println("Otras funciones:");
        System.out.println("  14. Factorial");
        System.out.println("  15. Cálculos de porcentaje");
        System.out.println("  16. Techo");
        System.out.println("  17. Piso");
        System.out.println("  18. Redondear");
        System.out.println("Salir. 0");
    }

    private boolean necesitaDosOperandos(Operacion operacion) {
        return operacion == Operacion.SUMAR || operacion == Operacion.RESTAR ||
               operacion == Operacion.MULTIPLICAR || operacion == Operacion.DIVIDIR ||
               operacion == Operacion.MODULO || operacion == Operacion.POTENCIA;
    }

    private int obtenerEntradaEntera(String prompt) {
        System.out.print(prompt);
        while (!escaner.hasNextInt()) {
            System.out.println("No es un número válido. Intente de nuevo");
            escaner.next();
            System.out.print(prompt);
        }
        return escaner.nextInt();
    }

    private double obtenerEntradaDoble(String prompt) {
        System.out.print(prompt);
        while (!escaner.hasNextDouble()) {
            System.out.println("No es un número válido. Intente de nuevo");
            escaner.next();
            System.out.print(prompt);
        }
        return escaner.nextDouble();
    }
}