programa
{
	
	funcao inicio()
	{
		inteiro n, t=0
		inteiro i = 1

		escreva("Insira um número\n")
		leia(n)
		enquanto (t<n){
			t = i*(i+1)*(i+2)
			i++
			}
		se (t==n){
			escreva("O número é triângular!")
			}
		senao{
			escreva("O número NÃO é triângular!")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 274; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */