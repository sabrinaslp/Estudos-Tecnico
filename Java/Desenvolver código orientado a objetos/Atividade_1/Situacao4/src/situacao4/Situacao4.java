package situacao4;

import java.util.Scanner;

public class Situacao4 {

    public static void main(String[] args) {
        /* Declaração de variáveis e vetor para armazenamento dos hóspedes */
        int opcao = 0, i = 0;
        String nome;
        String[] hospedes = new String[15];

        Scanner leia = new Scanner(System.in);

        while (opcao != 3) {
            /* Irá repetir até que se digite a opção 3 */
            System.out.println("+-------------------------------------------+");
            System.out.println("|        Digite a opção desejada:           |");
            System.out.println("+-------------------------------------------+");
            System.out.println("| 1- Cadastrar hóspede                      |");
            System.out.println("| 2- Pesquisar hóspede                      |");
            System.out.println("| 3- Sair                                   |");
            System.out.println("+-------------------------------------------+");

            opcao = leia.nextInt();

            switch (opcao) {

                case 1:

                    if (i < 15) {
                        System.out.print("Por favor, insira o nome do hóspede: ");
                        hospedes[i] = leia.next();
                        leia.nextLine();
                        i++;
                        System.out.println("+-------------------------------------------+");
                        System.out.println("Nome registrado. ");
                        break;
                    }

                    if (i == 15) {
                        System.out.println("Máximo de cadastros atingidos.");
                        break;
                    }

                    break;

                case 2:

                    System.out.print("Por favor, informe o nome do hóspede que deseja buscar: ");
                    nome = leia.next();

                    leia.nextLine();

                    boolean achou = false;

                    for (i = 0; i < hospedes.length && !"".equals(hospedes[i]); i++) {
                        if (nome.equals(hospedes[i])) {
                            achou = true;
                            System.out.println("+-------------------------------------------+");
                            System.out.println("Hóspede " + hospedes[i] + " foi encontrado no índice " + i + ".");
                            break;
                        }
                    }
                    if (achou == false) {
                        System.out.println("+-------------------------------------------+");
                        System.out.println("Hóspede " + nome + " não foi encontrado.");
                    }
                    break;

                case 3:
                    System.out.println("+-------------------------------------------+");
                    System.out.println("Obrigada por utilizar nosso sistema!!");
                    System.out.println("+-------------------------------------------+");
                    leia.close();
                    break;

                default:
                    System.out.println("+-------------------------------------------+");
                    System.out.println("Digite uma opção válida.");
                    break;
            }
        }
    }
}
