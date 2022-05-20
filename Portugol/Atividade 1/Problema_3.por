programa
{
	
	funcao inicio()
	{

		inteiro convidados, qtdCadeiras // declaração da variável inteira que determina a quantidade de convidados para o evento e a quantidade 
					
		escreva("Digite a quantidade de convidados para o evento: ") // solicita que o usuário digite a quantidade convidados
		leia(convidados) // leitura do número de convidados digitado pelo usuário

		se (convidados>350 ou convidados<=0) // condição que determina a validez do número de usuários
		{
		escreva("Número de convidados inválido.")
		}

		se (convidados>150 e convidados<=220) // condição que determina a quantidade de cadeiras a mais utilizadas no auditório ALFA caso a qtd. de convidados seja maior que 150
		{
		qtdCadeiras = convidados - 150
		escreva("Use o auditório ALFA e inclua ", qtdCadeiras, " cadeiras.")
		}

		se (convidados<=150 e convidados>0) // condição que determina o uso do auditório ALFA sem a necessidade de cadeiras adicionais.
		{
		escreva("Use o auditório ALFA.")
		}

		se (convidados>220 e convidados<350) // condição que determina o uso do auditório BETA.
		{
		escreva("Use o auditório BETA.")	
		}
				
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1074; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */