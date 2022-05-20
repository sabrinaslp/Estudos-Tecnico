programa {

 	funcao inicio(){

		// Declaração das variáveis que serão utilizadas
		inteiro indice, num, quarto[20] 
		caracter opcao    
		cadeia status[20]  // declaração de variável como cadeia ao invés de caracter para que no final seja alterado para uma palavra

		// mensagem inicial
		escreva("\n||----------|| OCUPAÇÃO DE QUARTOS DO HOTEL ||----------||")		
		escreva("\n")	
		
		// primeiro preenchimento de informação nos vetores
		escreva("\nInforme o número do quarto: ")
		leia(num)
		indice = num - 1 // o indice (posição) é igual ao número digitado -1, pois nos vetores começa do 0 
          quarto[indice] = num // o número digitado é igual ao valor armazenado no vetor
        
          escreva("\nO quarto está ocupado ou livre? (L/O): ")
         	leia(status[indice])
         	
		escreva("\nDeseja continuar? Digite S para continuar ou N para finalizar: ")
		leia(opcao)			
		

		enquanto (opcao != 'N' e opcao =='S') // Condição que se repetirá enquanto a opção for diferente de N
		{
		escreva("\nInforme o número do quarto: ")
         	leia(num)
		indice = num - 1
          quarto[indice] = num

		se (status[indice] == "L" ou status[indice] =="") {
          escreva("\nO quarto está ocupado ou livre? (L/O): ")
         	leia(status[indice])
         	}
 	          
          senao se (status[indice] == "O") {
          	 	escreva("\nO quarto está ocupado ou livre? (L/O): ")
         			leia(status[indice])
         			se (status[indice] == "O") {
         				escreva("\nO quarto escolhido já está ocupado!")
         				}
         			senao se (status[indice] == "L") {
         			escreva("\nAgora este quarto está livre!")
         			status[indice] = "L"
         			}
         		}	          	         	        		

		escreva("\nDeseja continuar? Digite S para continuar ou N para finalizar: ")
		leia(opcao)	
		}
		
         	
      	para (indice = 0; indice < 20; indice++) {

			se (status[indice] == "" ou quarto[indice] == 0) { // condição para mudança de L para livre na mensagem final
				status[indice] = "livre"
				quarto[indice] = indice + 1
				} 

			se (status[indice] == "L"){status[indice] = "livre"} 
			senao se (status[indice] == "O") {status[indice] = "ocupado"} 
				
     		escreva("Quarto: ", quarto[indice], " - ", status[indice], "; ") // Mensagem final com todos os quartos
      	}
      	
      	escreva("\n")
      	escreva("\nObrigada por utilizar nosso serviço! :)") // Mensagem de agradecimento 
     	escreva("\n")
     	
     	}
   
     	
			
 	}
 


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2156; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */