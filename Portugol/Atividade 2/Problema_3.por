programa
{
	
	funcao inicio()
	{
	real valorDiaria, total = 0.00 // declaração das variáveis reais para determinação do valor da diária e do total final
	cadeia nomeHospede // declaração da variável para determinação do nome do hóspede
	inteiro idade, meia = 0, gratuidade = 0 // declaração das variáveis inteira para determinação da idade, qtd. de meia hospedagem e hospedagens gratuitas

	escreva("Qual o valor da diária (R$)? \n") 
	leia(valorDiaria)

	escreva("Qual o nome do hóspede? \n")
	leia(nomeHospede)

	enquanto(nomeHospede != "PARE") // condição que irá repetir enquanto o usuário não digitar PARE
	{
		escreva("Qual a idade do hóspede? \n")
		leia(idade)	
		
		se(idade < 4) // condição que irá realizar a soma da gratuidade caso o hóspede tenha menos que 4 anos
		{
		escreva(nomeHospede, " possui gratuidade.")
		gratuidade = gratuidade + 1
		}

		senao se(idade > 80) // condição que irá realizar a soma da diária ao meio valor caso o hóspede tenha mais que 80 anos
		{
		escreva(nomeHospede, " paga meia hospedagem.")
		meia = meia + 1
		total = total + (valorDiaria/2)
		}

		se(idade <= 80 e idade >= 4) // condição que irá realizar a soma da diária ao valor total caso o hóspede pague o preço completo
		{
		total = total + valorDiaria
		}

		escreva("\n")
		
		escreva("Qual o nome do hóspede? \n")
		leia(nomeHospede)
	} 	
	
	escreva("Total de hospedagens: R$", total, "; ", gratuidade, " gratuidade(s); ", meia, " meia(s) considerando todos os hóspedes informados.")
	
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 50; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */