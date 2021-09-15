programa
{
	
	funcao inicio()
	{
		inteiro b, ex,c, calc = 1
		escreva("Insira a Base: ")
		leia(b)
		escreva("Insira o Expoente: ")
		leia(ex)

		se(ex == 0)
		{
			escreva("A resposta é: 1")
		}
		senao
		{
			para (c = 1; c <= ex; c++){
				calc = calc*b
			}
			escreva("A resposta é :"+calc)
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 130; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */