package sistemaviagem;

public class Transporte {

    private String tipo;
    private double valor;

    public Transporte(String tipo, double valor) {
        this.tipo = tipo;
        this.valor = valor;
    }

    public Transporte() {
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public String exibirTransporte() {
        return "Transporte: " + tipo + "   |  Valor (dólares): $" + valor;
    }

}
