package sistemaacademia;

public class FabricaMusculacao implements Modelo {

    @Override
    public Corrida getCorrida() {
        // TODO Auto-generated method stub
        return new PularCorda();
    }

    @Override
    public Musculacao getMusculacao() {
        return new Supino();
    }

}
