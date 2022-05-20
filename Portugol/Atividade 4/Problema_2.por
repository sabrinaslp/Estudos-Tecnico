programa
{
	
	funcao inicio()
	{
		// Declaração das variáveis que serão usadas
		cadeia nomeEmpresa, nomeMenor
		real valor, menorValor
		inteiro qtd_aparelhos, desconto, qtd_min
		caracter opcao = 'S'

		menorValor = 0.0
		nomeMenor = ""

		// Início do programa
		escreva("\n---------------- * MANUTENÇÃO DE AR CONDICIONADO * ----------------\n")
		
		faca {
		escreva("\n")
		escreva("\nInforme o nome da empresa: ")
		leia(nomeEmpresa)
		
		escreva("\nInforme o valor do serviço por aparelho: ")
		leia(valor)

		escreva("\nInforme a quantidade de aparelhos em manutenção: ")
		leia(qtd_aparelhos)
		
		escreva("\nInforme a porcentagem de desconto: ")
		leia(desconto)

		escreva("\nInforme a quantidade mínima para que o desconto seja aplicado: ")
		leia(qtd_min)
		
		real total = calcularDesconto(nomeEmpresa,valor,qtd_aparelhos,desconto,qtd_min) // A mensagem final é o resultado da função calcularDesconto
		escreva("\nO serviço de " + nomeEmpresa + " custará R$" + total + "\n")
		
		// O primeiro valor e nome preenchidos será automaticamente o menor valor e o nome da empresa com menor valor
		se (menorValor == 0 e nomeMenor == "") {
			menorValor = total
			nomeMenor = nomeEmpresa	
		}

 		// Se o total for menor que o menor valor atual, as informações serão substituídas
		senao se (total < menorValor){
			menorValor = total
			nomeMenor = nomeEmpresa
		}

		escreva("\n")
		escreva("\nDeseja informar novos dados? [S/N]:  ")
		leia(opcao)
						
			se (opcao != 'N' e opcao != 'S') { // Validação para o usuário não digitar uma opção diferente de S ou N
				faca {
					escreva("\nInforme uma opção válida.")			
					escreva("\n")
					escreva("\nDeseja informar novos dados? [S/N]: ")
					leia(opcao)
				} enquanto (opcao != 'N' e opcao != 'S')
		 	} 
		
		} enquanto (opcao == 'S') // Tem que se repetir enquanto a opção for S
		
		limpa()
		escreva("\nO orçamento de menor valor é o de " + nomeMenor + " por R$" + menorValor + ".")
		escreva("\n------------------------------------")
		escreva("\nObrigado por utilizar nosso sistema!")
		escreva("\n------------------------------------")
	
	}

	funcao real calcularDesconto (cadeia nomeEmpresa, real valor, inteiro qtd_aparelhos, inteiro desconto, inteiro qtd_min)
	{
		real total

			se (qtd_aparelhos >= qtd_min) {total = valor * qtd_aparelhos - ((valor * qtd_aparelhos) * desconto/100)}
			senao {total = valor * qtd_aparelhos}

		retorne total // Retorno da função com o total com desconto ou não
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 32; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */