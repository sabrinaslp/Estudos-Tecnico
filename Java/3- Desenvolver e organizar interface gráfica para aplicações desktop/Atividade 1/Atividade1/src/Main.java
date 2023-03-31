
import javax.swing.JOptionPane;

public class Main {

    public static void main(String[] args) {

        // Variáveis
        Double valorVenda, desconto, valorTotal;

        // Janela inicial
        valorVenda = Double.parseDouble(JOptionPane.showInputDialog("Informe o valor de uma venda (em reais): "));

        if (valorVenda > 500) {
            desconto = Double.parseDouble(JOptionPane.showInputDialog("Informe o percentual de desconto: "));
            valorTotal = valorVenda - (valorVenda * (desconto / 100));
            JOptionPane.showMessageDialog(null, "Valor total: R$ " + valorTotal + "\n *Desconto aplicado.");
        } else {
            JOptionPane.showMessageDialog(null, "Valor total: R$" + valorVenda + "\n *Sem descontos.");
        }
    }
}
