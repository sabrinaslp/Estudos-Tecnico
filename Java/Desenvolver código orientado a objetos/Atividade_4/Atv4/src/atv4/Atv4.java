package atv4;

import java.util.Scanner;

public class Atv4 { 
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Empresa em = new Empresa();
        Pagamentos pagamentos = new Pagamentos();
        Pis pis = new Pis();
        Ipi ipi = new Ipi();
        String tipo;
        
        
          System.out.println("Digite o nome da empresa:");
          String nomeEmpresa = sc.nextLine();
          em = new Empresa(nomeEmpresa);
          
          // toUpperCase(); maiusculo ou menusculo. 
          do{
          System.out.println("Digite o PIS/IPI ou digite PARE para encerrar: ");
          tipo = sc.nextLine().toUpperCase();
          
          
          switch(tipo){
              case "IPI" -> {
                  System.out.println("Qual o valor do produto: ");
                  double valorDoProduto = sc.nextDouble();
                  System.out.println("Digite o frete: ");
                  double valorFrete = sc.nextDouble();
                  System.out.println("Digite o seguro: ");
                  double valorSeguro = sc.nextDouble();
                  System.out.println("Digite outras despesas:");
                  double despesas = sc.nextDouble();
                  ipi = new Ipi(valorDoProduto, valorFrete, valorSeguro, despesas);
                  pagamentos.listaIpi.add(ipi);
                  sc.nextLine();
                break;
              }
              case "PIS" -> {
                  System.out.println("Digite o débito: ");
                  double debito = sc.nextDouble();
                  System.out.println("Digite o crédito: ");
                  double credito = sc.nextDouble();
                  pis = new Pis(credito, debito);
                  pagamentos.listaPis.add(pis);
                  sc.nextLine();
                break;
              }
                  
              default -> {
                System.out.println();
                System.out.println();
              }
          }
      } while(!tipo.equals("PARE"));

      System.out.println("Nome da empresa: "+em.getNomeEmpresa());
      System.out.println();


      System.out.println("VALOR DE IMPOSTO COBRADO DE PIS É IPI:");
      double totalPis = 0;
      for (Pagamentos x : pagamentos.listaPis) {
       totalPis += pis.calculoImposto();
      }
      pis.descricao(); 
      System.out.println(totalPis);
      System.out.println();


      double totalIpi = 0;
      for (Pagamentos x : pagamentos.listaIpi) {
        totalIpi += ipi.calculoImposto();
      }
      ipi.descricao();
      System.out.println(totalIpi);
      System.out.println();

    }
}
