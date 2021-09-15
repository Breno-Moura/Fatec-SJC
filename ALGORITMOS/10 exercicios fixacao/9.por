programa
{
	
	funcao inicio()
	{
		escreva("Decomposição\n")

		inteiro numero, fator, multiplicidade

		escreva("Insira um número: ")
		leia(numero)

		fator = 2
		enquanto(numero > 1){
			multiplicidade = 0
			enquanto(numero % fator == 0){
				multiplicidade++
				numero = numero / fator
			}
			se(multiplicidade != 0){
				escreva("\nFator: ", fator, "\nMultiplicidade: ", multiplicidade)
			}
			fator++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 399; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */