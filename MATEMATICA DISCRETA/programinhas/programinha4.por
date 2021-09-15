programa
{
	
	funcao inicio()
	{
		inteiro mdc = 0
		inteiro a, b, c

		escreva("Cálculo de MDC - Euclides\n")
		escreva("Digite o 1º número: ")
		leia(a)
		escreva("Digite o 2º número: ")
		leia(b)
		para (c = 1; c <= a; c++)
		{
			se (a%c == 0) 
			{
				se (b%c == 0)
				{
					mdc=c
				}
			}
		}
		escreva("O maximo divisor comum é: "+mdc)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 108; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */