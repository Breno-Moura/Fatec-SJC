programa
{
	
	funcao inicio()
	{
		escreva("Vetores na ordem Crescente\n")

		const inteiro t = 51
		inteiro vetor1[t]
		inteiro val, contador = 0
		inteiro sequencia = 0

		escreva("Insira ",  t - 1, " valores:\n")
		para(inteiro i = 1; i < t; i++){
			escreva(i, ": ")
			leia(val)
			vetor1[i] = val
			se(val - 1 == vetor1[i - 1]){
				contador++
				se(contador > sequencia){
					sequencia = contador
				}
			}
			senao{
				contador = 0
			}
		}
		escreva("A sequencia com mais números consecutivos é: ", sequencia)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 232; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */