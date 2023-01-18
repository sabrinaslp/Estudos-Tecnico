package atv4;

import java.util.ArrayList;
import java.util.List; 

public class Pagamentos  {
    protected Empresa empresa;
    List<Ipi> listaIpi = new ArrayList<>();
    List<Pis> listaPis = new ArrayList<>();

//CONSTRUTOR------------------------
    public Pagamentos(){

    }
    public Pagamentos(Empresa empresa){
        this.empresa = empresa;
    }

//GET É SET---------------------------
    public Empresa getEmpresa(){
        return empresa;
    }
    public void setEmpresa(Empresa empresa){
        this.empresa = empresa;
    }

}
