package supermercados;

public class Notificacao {

    public void enviarMensagem(ValidacaoRegistroProduto validacao, ProdutoController produtoCtrl, ProdutoEntity idProduto) {
        if (produtoCtrl.salvarProduto(idProduto, validacao)) {
            System.out.println("Produto salvo com sucesso");
        } else {
            System.out.println("Erro ao salvar produto");
        }
    }
}
