package sistemaacademia;

public class FabricaCorrida implements Modelo {

    @Override
    public Corrida getCorrida() {
        // TODO Auto-generated method stub
        return new CorridaEstacionaria();
    }

    @Override
    public Musculacao getMusculacao() {
        return new Polichinelo();
    }
}
