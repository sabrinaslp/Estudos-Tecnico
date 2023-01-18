package supermercados;

public class ValidacaoRegistroProduto {

    public boolean validacao(ProdutoEntity produto) {

        if (produto.getNome().equals("")) {
            return false;
        } else {
            return true;
        }

    }
}
