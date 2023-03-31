package atv3;

public abstract class Funcionarios {

    private String nome;
    private String cpf;
    private String endereco;
    private String telefone;
    private String setor;
    
    public void mostrarDados() {
        System.out.println("nome: "+ nome);
        System.out.println("cpf: "+cpf);
        System.out.println("endereco: "+endereco);
        System.out.println("telefone: "+telefone);
        System.out.println("setor: "+setor);
    } 
    
     public abstract double calcularPagamento();
     public abstract double aplicarAumento(int porcentagem);

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getSetor() {
        return setor;
    }

    public void setSetor(String setor) {
        this.setor = setor;
    }

    public Funcionarios(String nome, String cpf, String endereco, String telefone, String setor) {
        this.nome = nome;
        this.cpf = cpf;
        this.endereco = endereco;
        this.telefone = telefone;
        this.setor = setor;
    }

    public Funcionarios() {
    }    
       
}