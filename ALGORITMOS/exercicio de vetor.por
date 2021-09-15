programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Tipos --> tip
	
	funcao inicio()
	{
		real vetor1[6]
		real vetor2[6]
		caracter operacao[6]
		real result[6]
		
		

		para (inteiro i=0; i<6 ; i++){
			escreva("Entre com um valor: ")
			leia(vetor1[i])
			}
		para (inteiro i=0; i<6; i++){
			escreva("Entre com outro valor: ")
			leia(vetor2[i])
		}

			operacao[0] = '+'
			operacao[1] = '-'
			operacao[2] = '*'
			operacao[3] = '/'
			operacao[4] = '%'
			operacao[5] = '^'

			result[0] = vetor1[0] + vetor2[0]
			result[1] = vetor1[1] - vetor2[1]
			result[2] = vetor1[2] * vetor2[2]
			result[3] = vetor1[3] / vetor2[3]
			result[4] = tip.real_para_inteiro(vetor1[4]) % tip.real_para_inteiro(vetor2[4])
			result[5] = mat.potencia(vetor1[5], vetor2[5])
		
			para (inteiro i=0; i<6; i++){
				escreva(vetor1[i], " ",operacao[i]," ",vetor2[i], " = ",result[i],"\n")
				}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 892; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */