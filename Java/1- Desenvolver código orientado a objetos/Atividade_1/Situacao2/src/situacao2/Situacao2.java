package situacao2;

import java.util.Scanner;

public class Situacao2 {

    public static void main(String[] args) {
        int idade, primeiraIdade = 0, segundaIdade = 0, i = 1;
        String primeiroHosp, segundoHosp, quartoA, quartoB;

        Scanner leia = new Scanner(System.in);

        while (segundaIdade == 0) {

            /* Solicitação dos dados do primeiro hóspede */
            System.out.println("Insira o nome do hóspede: ");
            primeiroHosp = leia.nextLine();
            System.out.println("--------------------------------------------------------------------------------- ");

            System.out.println("Insira a idade do hóspede: ");
            idade = leia.nextInt();
            System.out.println("--------------------------------------------------------------------------------- ");

            leia.nextLine();

            quartoA = primeiroHosp;
            primeiraIdade = idade;

            /* Solicitação dos dados do segundo hóspede */
            System.out.println("Insira o nome do hóspede: ");
            segundoHosp = leia.nextLine();
            System.out.println("--------------------------------------------------------------------------------- ");

            System.out.println("Insira a idade do hóspede: ");
            idade = leia.nextInt();
            System.out.println("--------------------------------------------------------------------------------- ");

            leia.nextLine();

            quartoB = segundoHosp;
            segundaIdade = idade;

            if (segundaIdade <= primeiraIdade) {
                quartoB = segundoHosp;
                quartoA = primeiroHosp;

            } else {
                quartoB = primeiroHosp;
                quartoA = segundoHosp;
            }

            if (primeiraIdade >= 60 || segundaIdade >= 60) { /* Realização das trocas dos quartos caso o segundo hóspede for mais velho. */
                System.out.println("Quarto A: " + quartoA + " com desconto de 40%.");
                System.out.println("Quarto B: " + quartoB + ".");
                System.out.println("--------------------------------------------------------------------------------- ");
            } else {
                System.out.println("Quarto A: " + quartoA + ".");
                System.out.println("Quarto B: " + quartoB + ".");
                System.out.println("--------------------------------------------------------------------------------- ");
            }
        }
    }
}
