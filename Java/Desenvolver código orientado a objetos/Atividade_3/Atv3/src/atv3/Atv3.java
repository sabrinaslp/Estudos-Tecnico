package atv3;

import java.util.Scanner;

public class Atv3 {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        String opcao = "nao";
        int i = 0;
        Funcionarios funcionario[] = new Funcionarios[10];

        do {
            String tipoContrato;
            System.out.println("Qual o tipo de contrato: assalariado ou horista?");
            tipoContrato = leia.next();

            leia.nextLine();

            if (i == 10) {
                System.out.println("\nNumero máximo de funcionário foi atingido!\n");
                break;

            } else if ("assalariado".equals(tipoContrato)) {

                System.out.println("Informe o nome do funcionário:");
                String nome = leia.nextLine();

                System.out.println("Informe cpf:");
                String cpf = leia.nextLine();

                System.out.println("Informe o endereço:");
                String endereco = leia.nextLine();

                System.out.println("Informe  o telefone:");
                String telefone = leia.nextLine();

                System.out.println("informe o setor em que trabalha:");
                String setor = leia.nextLine();

                System.out.println("Informe o salario:");
                double salario = leia.nextDouble();

                funcionario[i] = new Assalariados(salario, nome, cpf, endereco, telefone, setor);
                funcionario[i].mostrarDados();
                System.out.println("salario: " + String.format("%.3f", funcionario[i].calcularPagamento()));
                i++;

            } else if ("horista".equals(tipoContrato)) {

                System.out.println("Informe o nome do funcionário:");
                String nome = leia.nextLine();

                System.out.println("Informe cpf:");
                String cpf = leia.nextLine();

                System.out.println("Informe o endereço:");
                String endereco = leia.nextLine();

                System.out.println("Informe o telefone:");
                String telefone = leia.nextLine();

                System.out.println("Informe o setor em que trabalha:");
                String setor = leia.nextLine();

                System.out.println("informe a quantidade de horas trabalhadas e o valor da hora");
                float horaTrabalhada = leia.nextFloat();
                double valorHora = leia.nextDouble();

                funcionario[i] = new Horistas(horaTrabalhada, valorHora, nome, cpf, endereco, telefone, setor);
                funcionario[i].mostrarDados();
                System.out.println("salario: " + String.format("%.3f", funcionario[i].calcularPagamento()));
                i++;
            }

            System.out.println("");
            System.out.println("Deseja continuar? (sim/nao)");
            opcao = leia.next();
            leia.nextLine();

        } while ("sim".equals(opcao));

        for (i = 0; i < 10; i++) {

            if (funcionario[i] == null) {
                break;

            } else {
                funcionario[i].mostrarDados();
                System.out.println("salario: " + String.format("%.3f", funcionario[i].calcularPagamento()));
                System.out.println("");
            }
        }

        System.out.println("Informe a porcentagem (%) de aumento para aplicar ao salário:");
        int aumento = leia.nextInt();

        for (i = 0; i < 10; i++) {
            if (funcionario[i] == null) {
                break;

            } else {
                System.out.println("Funcionário: " + funcionario[i].getNome());
                System.out.println("Salário após o aumento: " + String.format("%.3f", funcionario[i].aplicarAumento(aumento)));
                System.out.println("");
            }
        }

    }

}
