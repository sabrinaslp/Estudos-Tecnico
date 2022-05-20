programa
{
	
	funcao inicio()
	{
		
		inteiro convidados, salgadinhos // declaração das variáveis inteiras para a quantidade de convidados e salgadinhos por convidado
		real cafe, agua // declaração das variáveis reais para a quantidade de convidados, café e água  por convidado

		escreva("Digite a quantidade de convidados para o evento: ") // solicita que o usuário digite a quantidade de convidados
		leia(convidados) // leitura do número de convidados digitados pelo usuário

		cafe = 0.2*convidados // expressão que calcula a quantidade de litros de café por convidado
		agua = 0.5*convidados // expressão que calcula a quantidade de litros de água por convidado
		salgadinhos = 7*convidados // expressão que calcula a quantidade de salgadinhos por convidado
		
		se (convidados>350) // condição para quantidades de convidados maiores que 350
		{
		escreva("Quantidade de convidados superior à capacidade máxima.") // informa ao usuário que o número digitado para a quantidade de convidados é superior à capacidade máxima
		}

		senao // condição para quantidades de convidados menores que 350
		{
		escreva("Serão necessários ", agua, " litros de água, ", cafe, " litros de café ", "e ", salgadinhos, " salgadinhos para o evento, considerando ", convidados, " convidados. ")
		}
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1099; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */