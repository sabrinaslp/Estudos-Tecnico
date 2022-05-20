programa
{
	
	funcao inicio()
	{
		inteiro hospedes, quarto, diaria, cont, somaTotal = 0 // declaração de variável para quantidade de hóspedes, quarto, valor diárias, contador e total das diárias

		escreva("Informe a quantidade de hóspedes: \n") // solicita que o usuário digite a quantidade de hóspedes
		leia(hospedes)

		para (cont = 1; cont<=hospedes; cont+=1)
		{
		escreva("\n")	// determina que durante a repetição as informações não fiquem juntas
		
		escreva("Digite o número do quarto: \n") // solicita que o usuário digite o número do quarto
		leia(quarto)

		escreva("Digite o valor da diária: \n") // solicita que o usuário digite o valor da diária
		leia(diaria)

		escreva("Quarto ", quarto, ": ", "R$ ", diaria, ".") // mensagem para o usuário sobre o quarto reservado e o valor

		somaTotal = somaTotal + diaria // expressão que soma todos os valores das diárias
		}
		
		escreva("\n Total de diárias: R$ ", somaTotal) // mensagem para o usuário informando o valor de todas as diárias considerando a quantidade de hóspedes
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 29; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */