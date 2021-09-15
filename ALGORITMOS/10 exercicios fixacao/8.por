programa
{
	
	funcao inicio()
	{
		inteiro i,x
		inteiro aux = 0

		escreva("Insira um número para ver se é primo: ")
		leia(x)
		
			para (i=1; i<=x; i++){
				se(x % i == 0){
					aux++
					}
				}
			se(aux==2){
				escreva("O número é primo!")
					}
			senao{
				escreva("O número NÃO é primo!")
				}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 187; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */