package situacao1;

import java.util.Scanner;

public class Situacao1 {

    public static void main(String[] args) {
        int qtdCadeiras, qtdConvidados;

        Scanner leia = new Scanner(System.in);

        System.out.print("Digite a quantidade de convidados: ");
        qtdConvidados = leia.nextInt();

        if (qtdConvidados > 350 || qtdConvidados < 0) {  /* Se a quantidade de convidados for inválida */
            System.out.println("Número de convidados inválido.");
        } else {
            if (qtdConvidados > 150 && qtdConvidados <= 220) { /* Se o auditório recomendado for o ALFA e necessitar de mais cadeiras. */
                qtdCadeiras = qtdConvidados - 150;
                System.out.println("------------------------------------------------");
                System.out.println("Use o auditório ALFA.");
                System.out.println("Inclua " + qtdCadeiras + " cadeiras.");
            }
            if (qtdConvidados > 0 && qtdConvidados <= 150) {   /* Se o auditório recomendado for o ALFA. */
                System.out.println("------------------------------------------------");
                System.out.println("Use o auditório ALFA."); 
            } else if (qtdConvidados > 220) { /* Se o auditório recomendado for o BETA. */
                System.out.println("------------------------------------------------");
                System.out.println("Use o auditório BETA.");
            }
        }

        System.out.println("------------------------------------------------");
    }
}
