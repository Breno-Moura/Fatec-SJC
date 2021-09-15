programa
{
	
	funcao inicio()
	{
		inteiro an = 1
		inteiro at = 1
		inteiro co = 1
		inteiro pr
		inteiro x

		escreva("Digite o número de elementos para a sequência de Fibonacci:")
		leia(x)
		escreva("\n")

		escreva("1\n1\n")
		enquanto (co < x){
			pr = an+at
			escreva(pr+"\n")
			an = at
			at = pr
			co++
			}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 185; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */