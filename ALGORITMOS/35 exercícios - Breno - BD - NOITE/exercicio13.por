programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, c, aux = 0
		inteiro mmc=0
		escreva("Digite o 1º Número: ")
		leia(n1)
		escreva("Digite o 2º Número: ")
		leia(n2)
		para (c = 1; c <= n1; c++)
		{
			se (n1%c == 0) 
			{
				se (n2%c == 0)
				{
					aux=c
					mmc=(n1*n2)/aux
				}
			}
		}
		escreva("O mínimo múltiplo comum é: "+mmc)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 341; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */