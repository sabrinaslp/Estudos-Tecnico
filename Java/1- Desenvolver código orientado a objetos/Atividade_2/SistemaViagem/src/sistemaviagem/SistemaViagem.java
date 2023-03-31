package sistemaviagem;

import java.util.Scanner;

public class SistemaViagem {

    public static void main(String[] args) {

        Scanner leia = new Scanner(System.in);

        // Objetos
        PacoteViagem pacote = new PacoteViagem();
        Transporte transporte = new Transporte();
        Hospedagem hospedagem = new Hospedagem();
        Venda venda = new Venda();

        // <=============> Solicita dados para transporte <=============> 
        System.out.println("Informe o tipo de transporte desejado (aéreo, rodoviário, marítimo, etc.: ");
        transporte.setTipo(leia.nextLine());
        System.out.println("Informe valor do transporte ($): ");
        transporte.setValor(leia.nextDouble());
        pacote.setTransp(transporte); // atribui o transporte na classe PACOTE

        leia.nextLine();

        // <=============> Solicita dados para hospedagem <=============> 
        System.out.println("Informe a descrição da hospedagem:");
        hospedagem.setDescricao(leia.nextLine());

        System.out.println("Informe o valor da diária ($):");
        hospedagem.setValorDiaria(leia.nextDouble());
        pacote.setHosp(hospedagem); // atribui a hospedagem na classe PACOTE

        leia.nextLine();

        // <=============> Solicita dados para pacote de viagem <=============> 
        System.out.println("Informe o destino da viagem:");
        pacote.setDestino(leia.nextLine());

        System.out.println("Informe a quantidade de dias:");
        pacote.setQtdDias(leia.nextInt());

        // <=============> Exibe dados do pacote de viagem <=============> 
        pacote.exibirPacote();

        // <=============> Solicita dados para cálculo de lucro <=============> 
        System.out.println("Informe a margem de lucro desejada: ");
        pacote.setMargemLucro(leia.nextInt());
        System.out.println("O valor total do pacote é de $" + pacote.calcularPacote() + " dólares."); // exibe o total do pacote
        venda.setPacote(pacote); // atribui o pacote na classe VENDA
        
        leia.nextLine();
        
        // <=============> Solicita dados para venda <=============> 
        // solicita nome do cliente e forma de pagamento
        System.out.print("|------------------------------------------------------------------|\n");
        System.out.println("Informe o nome do cliente: ");
        venda.setNomeCliente(leia.nextLine());
        System.out.println("Informe a forma de pagamento:");
        venda.setFormaPagamento(leia.nextLine());

        // solicita a cotação do dólar 
        System.out.println("Insira o valor da cotação atual do dólar em reais:");
        venda.setCotacao(leia.nextDouble());

        // mostra total em dólar e  total em reais
        System.out.print("|------------------------------------------------------------------|\n");
        venda.exibirVenda();

        leia.close();
    }

}
