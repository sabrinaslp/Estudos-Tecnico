package supermercados;

public class Supermercados {

    public static void main(String[] args) {

        ProdutoEntity produto1 = new ProdutoEntity();
        produto1.setId(1);
        produto1.setNome("Salgado");
        produto1.setPreco(10.90);

        ValidacaoRegistroProduto validaRegistro = new ValidacaoRegistroProduto();
        validaRegistro.validacao(produto1);

        ProdutoController produtoCtrl = new ProdutoController();
        produtoCtrl.salvarProduto(produto1, validaRegistro);

        Notificacao notifica = new Notificacao();
        notifica.enviarMensagem(validaRegistro, produtoCtrl, produto1);

    }

}
