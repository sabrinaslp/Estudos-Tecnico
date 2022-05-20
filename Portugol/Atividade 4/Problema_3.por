programa
{
	
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{
		inteiro opcao=0, i
		cadeia hospedes[15], nome 
		

	   	enquanto (opcao != 3){ // Irá se repetir até que a opção digitada seja 3 (Sair)
	   	escreva ("\n")
	   	escreva ("Digite a opção que deseja: \n")
	   	
	   	escreva ("1) Cadastrar \n")
        	escreva ("2) Pesquisar \n")
        	escreva ("3) Sair \n")
        	escreva ("\n") 
      
        	leia (opcao) 
        	

        	escolha (opcao)
        		{
				caso 1:
					escreva ("\nPor favor, informe o nome do hóspede: ")
					leia(nome)

						para (i = 0; i < 15; i ++){
							se (hospedes[i] == ""){
								hospedes[i] = nome
								pare
							}
						}

						se (i == 15) {
							escreva ("\n")
							escreva ("Máximo de cadastros atingidos.\n")
							pare
						}
					
					escreva ("\n")
					escreva ("Nome registrado. \n")
					escreva ("\n-------------------------------\n")
					
					pare


				caso 2:
					escreva ("\nPor favor, informe o nome do hóspede que deseja buscar: ")
					leia(nome)

					inteiro erro = 0 // variável para verificar se o nome foi encontrado
					
					para (i = 0; i < 15 e hospedes[i] != ""; i ++){

							inteiro pos = tx.posicao_texto(nome, hospedes[i], 0)
							
							se (pos >= 0 ){
								erro = 1
								escreva("\nHóspede ", hospedes[i], " foi encontrando no índice ", i, ".")
								escreva("\n")		
							}
													
					}

							se (erro == 0) {					
								escreva("\nHóspede não encontrado.")				
								escreva("\n")
							}
					
					pare

				caso 3:

					escreva ("\n------------------------------------")
					escreva ("\n")
					escreva("Obrigado por utilizar nosso sistema! \n")
				
					pare

				caso contrario: // Se for colocada uma opção diferente das opções do menu
					escreva ("\n-------------------------------\n")
					escreva ("Escolha uma opção válida.")
					escreva ("\n-------------------------------\n")

			}
				
        	}

	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1492; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */