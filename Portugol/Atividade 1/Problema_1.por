programa
{
	
	funcao inicio()
	{
		inteiro numeroGarcons // declaração de variável inteira para o número de garçons
		real numeroHoras, total // declaração das variáveis reais para o número de horas e o total
		const real VALOR_DA_HORA = 10.50 // declaração do valor constante por hora R$10.50

		escreva("Qual a quantidade de garçons necessários? \n") // solicita que o usuário digite a quantidade de garçons necessários para o evento
		leia(numeroGarcons) // leitura do número de garçons digitados pelo usuário

		escreva("Qual a quantidade de horas do evento? \n") // solicita que o usuário digite a quantidade de horas necessários para o evento
		leia(numeroHoras) // leitura do número de horas digitadas pelo usuário

		total = numeroGarcons*(numeroHoras*VALOR_DA_HORA) // expressão que calcula o total com base nos valores informados pelo usuário
		
		escreva("O custo total será de R$ ", total)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 914; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeroGarcons, 6, 10, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */