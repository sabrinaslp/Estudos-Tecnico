package situacao3;

import java.util.Scanner;

public class Situacao3 {

    public static void main(String[] args) {
        double valorDiaria, total = 0.0;
        String nomeHospede = "";
        int idade, qtdMeia = 0, qtdGratuidade = 0;

        Scanner leia = new Scanner(System.in);

        System.out.println("Insira o valor da diária: ");
        /* Solicita o valor da diária */
        valorDiaria = leia.nextDouble();
        /* Entrada do valor da diária */
        System.out.println("--------------------------------------------------------------------------------- ");

        leia.nextLine();

        while (!nomeHospede.equals("PARE")) {
            if (nomeHospede.equals("")) {
                System.out.println("Insira o nome do hóspede: ");
                nomeHospede = leia.nextLine();
                /* Entrada do nome do PRIMEIRO hóspede */
                System.out.println("--------------------------------------------------------------------------------- ");
            }

            System.out.println("Insira a idade do hóspede: ");
            idade = leia.nextInt();
            /* Entrada da idade do hóspede */
            System.out.println("--------------------------------------------------------------------------------- ");

            leia.nextLine();

            if (idade < 4) {
                /* Cálculo de gratuidadade */
                System.out.println(nomeHospede + " possui gratuidade. ");
                System.out.println("--------------------------------------------------------------------------------- ");
                qtdGratuidade++;
                total = total + 0;
            }

            if (idade > 80) {
                /* Cálculo de meia hospedagem */
                System.out.println(nomeHospede + " paga meia hospedagem.");
                qtdMeia++;
                total = total + (valorDiaria / 2);
            } else if (idade > 4 && idade <= 80) {
                total = total + valorDiaria;
            }

            System.out.println("Insira o nome do hóspede: ");
            nomeHospede = leia.nextLine();
            /* Entrada do nome dos hóspedes seguintes */
            System.out.println("--------------------------------------------------------------------------------- ");
        }

        leia.close();
        System.out.println("Total de hospedagens: R$" + total + "; " + qtdGratuidade + " gratuidade(s); " + qtdMeia + " meia(s) considerando todos os hóspedes informados.\n");

    }
}
