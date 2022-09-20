package situacao2;

import java.util.Scanner;

public class Situacao2 {

    public static void main(String[] args) {
        int idade, primeiraIdade = 0, segundaIdade = 0, i = 1;
        String primeiroHosp, segundoHosp, quartoA, quartoB;

        Scanner input = new Scanner(System.in);

        while (segundaIdade == 0) {

            /* Solicitação dos dados do primeiro hóspede */
            System.out.println("Insira o nome do hóspede: ");
            primeiroHosp = input.nextLine();
            System.out.println("--------------------------------------------------------------------------------- ");

            System.out.println("Insira a idade do hóspede: ");
            idade = input.nextInt();
            System.out.println("--------------------------------------------------------------------------------- ");

            input.nextLine();

            quartoA = primeiroHosp;
            primeiraIdade = idade;

            /* Solicitação dos dados do segundo hóspede */
            System.out.println("Insira o nome do hóspede: ");
            segundoHosp = input.nextLine();
            System.out.println("--------------------------------------------------------------------------------- ");

            System.out.println("Insira a idade do hóspede: ");
            idade = input.nextInt();
            System.out.println("--------------------------------------------------------------------------------- ");

            input.nextLine();

            quartoB = segundoHosp;
            segundaIdade = idade;

            if (segundaIdade <= primeiraIdade) {
                quartoB = segundoHosp;
                quartoA = primeiroHosp;

            } else {
                quartoB = primeiroHosp;
                quartoA = segundoHosp;
            }

            if (primeiraIdade >= 60 || segundaIdade >= 60) {
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
