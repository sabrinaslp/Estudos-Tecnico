programa {

funcao inicio() {

	cadeia diaDaSemana, nomeEmpresa // declaração de variável do tipo cadeia para o dia da semana e nome da empresa
	inteiro horas // declaração de variável do tipo inteiro para as horas

	escreva("Digite o dia da semana para a reserva: \n")
	leia(diaDaSemana)

	escreva("Digite a hora que gostaria de realizar a reserva: \n")
	leia(horas)

        se(diaDaSemana != "sabado" e diaDaSemana != "domingo") // verificação se é um dia útil (diferente de sábado e domingo)
        {
            se(horas>=7 e horas<=23)
            {
            escreva("Digite o nome da empresa para a reserva: \n")
   		  leia(nomeEmpresa)
            escreva("Restaurante reservado para ", nomeEmpresa, ": ", diaDaSemana, " às ", horas, "hs.")    
            }
       
            senao{
            escreva("Restaurante indisponível.")
            }
        }
       
        senao // verificação se é um dia de final de semana (igual a sabado e domingo)
        {
           
            se(horas>=7 e horas<=15)
            {
            escreva("Digite o nome da empresa para a reserva: \n")
   		  leia(nomeEmpresa)
            escreva("Restaurante reservado para ", nomeEmpresa, ": ", diaDaSemana, " às ", horas, "hs.")    
            }
       
            senao{
            escreva("Restaurante indisponível.")
            }
        }

}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 354; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */