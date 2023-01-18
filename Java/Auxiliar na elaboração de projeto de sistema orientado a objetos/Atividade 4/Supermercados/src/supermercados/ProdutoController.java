package supermercados;

public class ProdutoController {

    public boolean salvarProduto(ProdutoEntity produto, ValidacaoRegistroProduto validacao) {

        if (validacao.validacao(produto)) {
            return true;
        } else {
            return false;
        }
    }

}
