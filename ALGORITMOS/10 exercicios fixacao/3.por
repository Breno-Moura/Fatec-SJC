programa
{
	
	funcao inicio()
	{
		real paisA = 80000.0
		real paisB = 200000.0
		inteiro i = 0

		enquanto(paisA<=paisB){
		paisA = paisA + (paisA*0.03)
		paisB = paisB + (paisB*0.015)
		i++
		}

		escreva("Pais A: "+paisA+"\n")
		escreva("Pais B: "+paisB+"\n")
		escreva("Anos para chegar: "+i)
			
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 261; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */