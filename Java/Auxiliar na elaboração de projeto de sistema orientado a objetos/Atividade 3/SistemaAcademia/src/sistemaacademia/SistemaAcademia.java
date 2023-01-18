package sistemaacademia;

import java.util.Scanner;

public class SistemaAcademia {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);

        System.out.println("Qual tipo de exercício você deseja realizar? (1) Corrida  | (2) Musculação");
        Byte opc = leia.nextByte();

        Modelo modelo = null;
        switch (opc) {
            case 1 -> modelo = new FabricaCorrida();
            case 2 -> modelo = new FabricaMusculacao();
        }

        Treino treino = new Treino(modelo);
        treino.gerar();

        System.out.println("Indicação de treino ---> Musculação: " + treino.getMusculacao().toString());
        System.out.println("Indicação de treino ---> Corrida: " + treino.getCorrida().toString());
    }
}

