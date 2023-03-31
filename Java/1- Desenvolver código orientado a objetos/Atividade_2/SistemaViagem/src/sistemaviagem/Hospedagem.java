package sistemaviagem;

public class Hospedagem {

    private String descricao;
    private double valorDiaria;

    public Hospedagem() {
    }

    public Hospedagem(String descricao, double valorDiaria) {
        this.descricao = descricao;
        this.valorDiaria = valorDiaria;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getValorDiaria() {
        return valorDiaria;
    }

    public void setValorDiaria(double valorDiaria) {
        this.valorDiaria = valorDiaria;
    }

    public String exibirHospedagem() {
        return "Hospedagem: " + descricao + "  |  Valor da diária (em dólares): $" + valorDiaria;
    }

}
