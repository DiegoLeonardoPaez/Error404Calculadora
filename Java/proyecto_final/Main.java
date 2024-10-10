package proyecto_final;

public class Main {
    public static void main(String[] args) {
        Calculadora calculadora = new Calculadora();
        InterfazUsuario ui = new InterfazUsuario(calculadora);
        ui.ejecutar();
    }
}
