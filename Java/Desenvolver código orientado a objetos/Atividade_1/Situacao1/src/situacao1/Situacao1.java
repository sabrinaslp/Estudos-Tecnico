package situacao1;

import java.util.Scanner;

public class Situacao1 {

    public static void main(String[] args) {
        int qtdCadeiras, qtdConvidados;

        Scanner input = new Scanner(System.in);

        System.out.println("Digite a quantidade de convidados: ");
        qtdConvidados = input.nextInt();

        if (qtdConvidados > 350 || qtdConvidados < 0) {
            System.out.println("Número de convidados inválido.");
        } else {
            if (qtdConvidados > 150 && qtdConvidados <= 220) {
                qtdCadeiras = qtdConvidados - 150;
                System.out.println("Use o auditório ALFA.");
                System.out.println("Inclua " + qtdCadeiras + " cadeiras.");
            }
            if (qtdConvidados > 0 && qtdConvidados <= 150) {
                System.out.println("Use o auditório ALFA.");
            } else if (qtdConvidados > 220) {
                System.out.println("Use o auditório BETA.");
            }
        }

        System.out.println("------------------------------------------------");
    }
}
