package atv4;

public class Ipi extends Pagamentos implements Calculo {

    protected Double aliquota = 5.0;
    protected Double valorDoProduto;
    protected Double frete;
    protected Double seguro;
    protected Double outrasDespesas;

    public Ipi() {
    }

    public Ipi(Double valorDoProduto, Double frete, Double seguro, Double outrasDespesas) {

        this.aliquota = aliquota;
        this.valorDoProduto = valorDoProduto;
        this.frete = frete;
        this.seguro = seguro;
        this.outrasDespesas = outrasDespesas;
    }

    public Double getAliquota() {
        return aliquota;
    }

    public void setAliquota(Double aliquota) {
        this.aliquota = aliquota;
    }

    public Double getValorDoProduto() {
        return valorDoProduto;
    }

    public void setValorDoProduto(Double valorDoProduto) {
        this.valorDoProduto = valorDoProduto;
    }

    public Double getFrete() {
        return frete;
    }

    public void setFrete(Double frete) {
        this.frete = frete;
    }

    public Double getSeguro() {
        return seguro;
    }

    public void setSeguro(Double seguro) {
        this.seguro = seguro;
    }

    public Double getOutrasDespesas() {
        return outrasDespesas;
    }

    public void setOutrasDespesas(Double outrasDespesas) {
        this.outrasDespesas = outrasDespesas;
    }

    @Override
    public Double calculoImposto() {
        double total = valorDoProduto + frete + seguro + outrasDespesas;
        total *= aliquota / 100;
        return total;
    }

    @Override
    public void descricao() {
        System.out.println("IPI: ");
    }

}
