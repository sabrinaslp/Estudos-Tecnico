package atv4;

public class Pis extends Pagamentos implements Calculo{
   protected Double credito;
   protected Double debito; 

    public Pis(){
        
    }
    public Pis(Double credito,Double debito){
        this.credito = credito;
        this.debito = debito;

    } 

    public Double getCredito(){
        return credito;
    }
    public void setCredito(Double credito){
        this.credito = credito;
    }

    public Double getDebito(){
        return debito;
    }
    public void setDebito(Double debito){
        this.debito = debito;
    }

@Override
    public Double calculoImposto(){
        double total = debito - credito;
        total *= 1.65 / 100;
        return total;
    }
@Override
    public void descricao(){
        System.out.println("PIS: ");
    }   

}
