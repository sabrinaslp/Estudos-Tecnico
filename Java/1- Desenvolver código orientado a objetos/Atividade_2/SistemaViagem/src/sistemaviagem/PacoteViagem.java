package sistemaviagem;

public class PacoteViagem {

    private String destino;
    private int qtdDias;
    private int margemLucro;
    private Transporte transp;
    private Hospedagem hosp;

    public PacoteViagem() {
        this.hosp = new Hospedagem();
        this.transp = new Transporte();
    }

    public PacoteViagem(String destino, int qtdDias, int margemLucro) {
        this.destino = destino;
        this.qtdDias = qtdDias;
        this.margemLucro = margemLucro;
        this.hosp = new Hospedagem();
        this.transp = new Transporte();
    }

    public PacoteViagem(String destino, int qtdDias, int margemLucro, Transporte transp, Hospedagem hosp) {
        this.destino = destino;
        this.qtdDias = qtdDias;
        this.margemLucro = margemLucro;
        this.transp = transp;
        this.hosp = hosp;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public int getQtdDias() {
        return qtdDias;
    }

    public void setQtdDias(int qtdDias) {
        this.qtdDias = qtdDias;
    }

    public Transporte getTransp() {
        return transp;
    }

    public void setTransp(Transporte transp) {
        this.transp = transp;
    }

    public Hospedagem getHosp() {
        return hosp;
    }

    public void setHosp(Hospedagem hosp) {
        this.hosp = hosp;
    }

    public int getMargemLucro() {
        return margemLucro;
    }

    public void setMargemLucro(int margemLucro) {
        this.margemLucro = margemLucro;
    }

    public double calcularTotalHospedagem() {
        return hosp.getValorDiaria() * qtdDias;
    }

    public double calcularLucro() {
        return ((margemLucro * (calcularTotalHospedagem() + transp.getValor())) / 100) + calcularTotalHospedagem();
    }

    public double calcularPacote() {
        return transp.getValor() + calcularLucro();
    }

    public void exibirPacote() {
        System.out.print("+-----------------------SOLICITAÇÃO DE PACOTE----------------------+\n");
        System.out.print("|------------------------------------------------------------------|\n");
        System.out.println("| " + transp.exibirTransporte());
        System.out.println("| " + hosp.exibirHospedagem());
        System.out.println("| Destino: " + destino + "    |    Quantidade de dias: " + qtdDias);
        System.out.println("| VALOR TOTAL (Hospedagem + Transporte): $" + (calcularTotalHospedagem() + transp.getValor()));
        System.out.print("|------------------------------------------------------------------|\n");
    }

}
