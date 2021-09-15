programa
{
	
	funcao inicio()
	{
		escreva("50 notas\n")
		
		const inteiro t = 50
		inteiro c_menor = 0, c_maior = 0, c_total = 0
		real media = 0.0, val, geral_notas = 0.0, vetor[t]

		escreva("Insira ", t, " valores:\n")
		para(inteiro i = 0; i < t; i++){
			escreva(i + 1, ": ")
			leia(val)
			vetor[i] = val
			geral_notas = geral_notas + val
			c_total++
		}
		media = geral_notas / c_total
		para(inteiro c = 0; c < t; c++){
			se(vetor[c] >= media + (10 / 100)){
				c_maior++
			}
			senao se(vetor[c] <= media - (10 / 100)){
				c_menor++
			}
		}
		escreva("Notas que estão abaixo da média: ", c_menor, "\n")
		escreva("Notas que estão acima da média: ", c_maior, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 620; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */