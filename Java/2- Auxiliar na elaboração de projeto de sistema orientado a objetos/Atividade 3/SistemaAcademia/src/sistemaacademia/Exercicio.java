package sistemaacademia;

public class Exercicio {

    private String nome;

    public Exercicio() {
    }

    public Exercicio(String nome) {
        this.nome = nome;
    }

    @Override
    public String toString() {
        return nome;
    }

}
