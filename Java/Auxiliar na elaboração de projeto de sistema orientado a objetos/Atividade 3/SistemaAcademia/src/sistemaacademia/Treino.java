package sistemaacademia;

public class Treino {

    private Musculacao musculacao;
    private Corrida corrida;
    private Modelo modelo;

    public Treino(Modelo modelo) {
        this.modelo = modelo;
    }

    public Musculacao getMusculacao() {
        return musculacao;
    }

    public Corrida getCorrida() {
        return corrida;
    }

    public void gerar() {
        musculacao = modelo.getMusculacao();
        corrida = modelo.getCorrida();
    }

}
