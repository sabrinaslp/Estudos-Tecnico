package situacao5;

import java.util.Scanner;

public class Situacao5 {

    public static void main(String[] args) {
        char opcao;
        int numQuarto, numAndar, i, j;
        String ocupacao[][] = new String[4][3];
        /* matriz 4x3 (andares (i) x quarto (j))*/

        Scanner leia = new Scanner(System.in);

        for (i = 0; i < 4; i++) {
            for (j = 0; j < 3; j++) {
                ocupacao[i][j] = "Desocupado";
            }
        }

        System.out.println("Informe o andar e o quarto:");
        numAndar = leia.nextInt();
        i = numAndar - 1;
        numQuarto = leia.nextInt();
        j = numQuarto - 1;
        ocupacao[i][j] = "Ocupado";

        if (!ocupacao[i][j].equals("Ocupado")) {
            ocupacao[i][j] = "Desocupado";
        }

        System.out.println("Deseja informar outra ocupação? (S/N):");
        opcao = leia.next().charAt(0);

        while (opcao != 'N') {
            System.out.println("Informe o andar e o quarto:");
            numAndar = leia.nextInt();
            i = numAndar - 1;
            numQuarto = leia.nextInt();
            j = numQuarto - 1;
            ocupacao[i][j] = "Ocupado";

            System.out.println("Deseja informar outra ocupação? (S/N):");
            opcao = leia.next().charAt(0);
        }

        System.out.println("+-----------------------------------------------+ ");
        System.out.println("Ocupação do hotel: ");
        System.out.println("+-----------------------------------------------+ ");

        System.out.println("1º andar: ");

        System.out.println("- Quarto 1: " + ocupacao[0][0]);
        System.out.println("- Quarto 2: " + ocupacao[0][1]);
        System.out.println("- Quarto 3: " + ocupacao[0][2]);

        System.out.println("2º andar: ");

        System.out.println("- Quarto 1: " + ocupacao[1][0]);
        System.out.println("- Quarto 2: " + ocupacao[1][1]);
        System.out.println("- Quarto 3: " + ocupacao[1][2]);

        System.out.println("3º andar: ");

        System.out.println("- Quarto 1: " + ocupacao[2][0]);
        System.out.println("- Quarto 2: " + ocupacao[2][1]);
        System.out.println("- Quarto 3: " + ocupacao[2][2]);

        System.out.println("4º andar: ");

        System.out.println("- Quarto 1: " + ocupacao[3][0]);
        System.out.println("- Quarto 2: " + ocupacao[3][1]);
        System.out.println("- Quarto 3: " + ocupacao[3][2]);

        System.out.println("+-----------------------------------------------+ ");
        System.out.println("Obrigada por utilizar nosso sistema!");
        System.out.println("+-----------------------------------------------+ ");
    }

}
