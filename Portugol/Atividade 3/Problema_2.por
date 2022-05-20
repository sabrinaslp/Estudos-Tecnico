programa
{
	
	funcao inicio(){
	
		// Declaração das variáveis que serão utilizadas
		cadeia nome[5]
		caracter sexo[5]
		inteiro indice 

		// Início do programa
		escreva("\n-------------------|| PROGRAMA PARA REGISTRO DE HÓSPEDES ||-------------------")
		escreva("\n")
	
		// Preenchendo os vetores com as informações dos hóspedes
		para (indice = 0; indice < 5; indice ++ ) {
			escreva("\nInforme o nome do Hóspede: ")
			leia(nome[indice])

			escreva("\nInforme o sexo do Hóspede [F - Feminino] ou [M - Masculino]: ")
			leia(sexo[indice])
		}

		// Mensagem final
		escreva("\n")
     	escreva("Registro realizado!")
     	escreva("\n")

		para (indice = 0; indice < 5; indice ++ ) {
			se (sexo[indice] == 'F'){ escreva("\n", nome[indice], " foi registrada. ")}
		}   	
		
    		para (indice = 0; indice < 5; indice ++ ) {
    			se (sexo[indice] =='M'){ escreva("\n", nome[indice], " foi registrado. ")}
    		}
  	}
		
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 782; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */