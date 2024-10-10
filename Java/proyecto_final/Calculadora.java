package proyecto_final;
public class Calculadora {
    double calcular(double a, Operacion operacion) {
        return switch (operacion) {
            case RAIZ_CUADRADA -> Math.sqrt(a);
            case VALOR_ABSOLUTO -> Math.abs(a);
            case SENO -> Math.sin(Math.toRadians(a));
            case COSENO -> Math.cos(Math.toRadians(a));
            case TANGENTE -> Math.tan(Math.toRadians(a));
            case LOGARITMO_NATURAL -> Math.log(a);
            case LOGARITMO_COMUN -> Math.log10(a);
            case FACTORIAL -> factorial((int) a);
            case TECHO -> Math.ceil(a);
            case PISO -> Math.floor(a);
            case REDONDEAR -> Math.round(a);
            default -> throw new IllegalArgumentException("Operación de un operando no válida");
        };
    }

    public double calcular(double a, double b, Operacion operacion) {
        return switch (operacion) {
            case SUMAR -> a + b;
            case RESTAR -> a - b;
            case MULTIPLICAR -> a * b;
            case DIVIDIR -> {
                if (b == 0) throw new ArithmeticException("División por cero");
                yield a / b;
            }
            case MODULO -> a % b;
            case POTENCIA -> Math.pow(a, b);
            case PORCENTAJE -> (a * b) / 100;
            default -> throw new IllegalArgumentException("Operación de dos operandos no válida");
        };
    }

    private long factorial(int n) {
        if (n < 0) throw new IllegalArgumentException("El factorial no está definido para números negativos");
        if (n > 20) throw new ArithmeticException("Factorial demasiado grande para calcular");
        long resultado = 1;
        for (int i = 2; i <= n; i++) {
            resultado *= i;
        }
        return resultado;
    }
}