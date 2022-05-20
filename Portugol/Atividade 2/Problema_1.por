programa {
	funcao inicio() {

	inteiro diaria, dias // declaração das variáveis que determina o valor da diária e a quantidade de dias da hospedagem

	escreva("Informe o valor (R$) da diária do hotel: \n") 
	leia(diaria)

	escreva("Informe a quantidade de dias de hospedagem: \n")
	leia(dias)

	enquanto(diaria<0) // enquanto o valor da diária digitado for negativo, o sistema solicitará um valor válido
	{
   		escreva("Valor inválido. \n")
   		escreva("Informe um novo valor (R$) da diária do hotel: \n")
   		leia(diaria)
   
   		escreva("Informe a quantidade de dias de hospedagem: \n")
  		leia(dias)
	}

	enquanto(dias<0 ou dias>30) // enquanto a quantidade de dias for negativa ou maior que 30, o sistema solicitará uma quantidade válida
   	{
   		escreva("Valor inválido. \n")  
   		escreva("Informe o valor (R$) da diária do hotel: \n")
   		leia(diaria)  
   		escreva("Informe um nova quantidade de dias de hospedagem:\n")
   		leia(dias)
   	}

	escreva("Fim do programa.") // o programa se encerra com o valor da diária e quantidade de dias validados.
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1069; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */