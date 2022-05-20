programa
{
	
	funcao inicio()
	{
	real valorDiaria, total = 0.0 // declaração das variáveis reais para determinação do valor da diária e do total final
	cadeia nomeHospede, nomeVelho = "", nomeJovem = "", contNome = "" // declaração da variável para determinação do nome do hóspede
	inteiro idade, meia = 0, gratuidade = 0, maisVelho = 0, maisJovem = 0, contIdade = 0 // declaração das variáveis para determinação de diversos valores e contador
	caracter opcao // declaração de variável para determinação da opção escolhida S ou N 

	escreva("Qual o valor da diária (R$)? \n") 
	leia(valorDiaria)

	faca 
	{			
		escreva("\n")
		
		escreva("Qual o nome do hóspede? \n")
		leia(nomeHospede)
		
		escreva("Qual a idade do hóspede? \n")
		leia(idade)	

		se(idade >= 0)
		{		
			
			se (contIdade==0 ou contNome=="") // condição para determinação inicial (idade = 0 e nomes 'vazios') da idade e nome da pessoa mais velha e mais nova
			{
				maisVelho=idade
				nomeVelho=nomeHospede
				maisJovem=idade
				nomeJovem=nomeHospede
				contIdade++
				contNome++
			}
		
			se(idade < 4 ou idade < maisJovem e nomeHospede != nomeJovem) // condição para hóspedes menores que 4 anos (gratuidade). Se a idade informada for menor que a idade mais jovem, será substituída pelo valor inserido. Idem para o nome.
			{
				escreva(nomeHospede, " possui gratuidade.")
				gratuidade = gratuidade + 1
				maisJovem = idade
				nomeJovem = nomeHospede
			}

			se(idade > 80 ou idade > maisVelho e nomeHospede != nomeVelho) // condição para hóspedes maiores que 80 anos (meia hospedagem). Se a idade informada for maior que a idade mais velha, será substituída pelo valor inserido. Idem para o nome.
			{
				escreva(nomeHospede, " paga meia hospedagem.")
				meia = meia + 1
				total = total + (valorDiaria/2)
				maisVelho = idade
				nomeVelho = nomeHospede
			}

			se(idade <= 80 e idade >= 4) // condição para hóspedes com idade entre 4 e 80 anos (valor completo da hospedagem)
			{
				total = total + valorDiaria
					se(idade > maisVelho e nomeHospede != nomeVelho) // se a idade informada foi maior que a idade considerada mais velha, será substituida pelo valor inserido. Idem para o nome.
					{
						maisVelho = idade
						nomeVelho=nomeHospede
					}
					se(idade < maisJovem e nomeHospede != nomeJovem) // se a idade informada foi menor que a idade considerada mais jovem, será substituida pelo valor inserido. Idem para o nome.
					{
						maisJovem = idade
						nomeJovem = nomeHospede
			          }
			}
		
		}

		escreva("\n")
		escreva("Deseja continuar? (S/N): ")
		leia(opcao)
		
		
	} enquanto (opcao == 'S')	// enquanto a opção digitada for S a repetição irá continuar acontecendo
	
		// SE O USUÁRIO DIGITAR 'N' -------------------------------------------------------------------------------------------------------------------
		
		escreva("Total de hospedagens: R$", total, "; ", gratuidade, " gratuidade(s); ", meia, " meia(s) considerando todos os hóspedes informados.\n")
		escreva("O hóspede mais velho é ", nomeVelho, " com ", maisVelho, " ano(s).\n")
		escreva("O hóspede mais jovem é ", nomeJovem, " com ", maisJovem, " ano(s).\n")
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 54; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */